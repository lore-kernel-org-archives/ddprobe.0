Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426981D9A5F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780713874; cv=none; b=GUco9Iic7qjl06ogz8pli8Hp7K9uA3SR8rdX4pSQSZSLuRPqWC/3i06zhhj+E53ftUN9CgYWPvWoWZpGmkm9Y+NcXLYJVbR3AfBbU+HrzyJ0kr1Bci5t0ViOLE9gh69xPtUm0VL/pvBFYse7U0g452NPILUr7tTGWdKGURgrjqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780713874; c=relaxed/simple;
	bh=2djOjfhQ85QhpMqZqTQMT6gMpL87yqk464GucNjN9Rs=;
	h=To:Subject:From:Message-Id:Date; b=av/lfUGBkrtAZEuiFaQH/+4he5s5TToMCSpgDHfR8BkV+nxtaPhlUGJxmdlgP2FnuaJRBxr0uq5BnEoUPK57lHfyOWZrzclY9RDw+Hc3jCjHha8DeYxWKr9/wEduzBoienb/USmaUNRzLM8MBeIJC5EEo9PlgP5iRAM0EYJiDuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gb9BuVmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gb9BuVmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50A4C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780713873;
	bh=2djOjfhQ85QhpMqZqTQMT6gMpL87yqk464GucNjN9Rs=;
	h=To:Subject:From:Date:From;
	b=gb9BuVmHHo2Rq+HLNPX8HXZsj17PrKWFWtWsSJz3yt7xvqewnDA0amdLjkkUcszAX
	 wlkVtstCOT3LvEYI2P6drqAR9d3mzIGRxg+EJUTQ3jjrkkrJhxRngIQoqFxobcnyZ3
	 vSU0ZZiWv1rWIqQ7Sbgzul5tO76m+sSKLVokptAcD8SjLAwdqNG9sfNA5hqBFJ001/
	 LGGMiJiGKFVTcc2i7WqXKSaJj9lRI9vATKDPM+ybAf3pRHOkFhxqsAr40lnIJmTHKh
	 sfJA/jVENpaQ9UrzS8c6AaSlTVnclxKbJLiU3Yjr0+0xHFcSAXcdSW0AST0DAVbkuc
	 FHrO2wGH946Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99BCCD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071387368.11861.16019067639281826871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996c3332f9653dc96f8b36e40ad9d8ed561d4f795b3ff699d77dc2a10f5f17e7
Date: Sat, 06 Jun 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780713873
