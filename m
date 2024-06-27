Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641C526AF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719482663; cv=none; b=gLL8S6nSmAC2c19x1iiZZL3AlmxwYCQQ+UVFYAO281TgLY91JnABKp5ebBgsQAGcEKWb3mxOOQj1scjmL+DFVB+JUsnwge1SgukJzZPex0nOKM5yoptNzixWKz9zMiLE4E95GBsG1eaPUi2QxcMgO/3CfmJtWACSgRYowW6Eyq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719482663; c=relaxed/simple;
	bh=6Ntwxeapn6kf47D2BIwMZWZkLsnQeoU6328ik8qeEVc=;
	h=To:Subject:From:Message-Id:Date; b=SsuvqJQMbME25DlXlrHA0yOE3oNz/O+r8yoGOAqgZfLdvknlM4JH6D3Z3AeWA7zsHGuUlbWxVFdlRawixE90vk35AIrAm6YqC5sbDqhYUFJbp3dUYIMyo+4QmHJwQZP8DqgSyw6f3q486GZHK7SGdtbH/x5FRNBaPTbyEfJc5Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3STDXZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3STDXZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E5BC32789
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719482662;
	bh=6Ntwxeapn6kf47D2BIwMZWZkLsnQeoU6328ik8qeEVc=;
	h=To:Subject:From:Date:From;
	b=t3STDXZtj8egLJZff5+ED2RVdSViSb980eiwbC1Tfn4GjxWduOV7eOJzh6V666huB
	 1lMuVXfdNQVu3iaidefNhka+Mpn5r2PfCvo9xBYddtB5mino2MW6CYLznQ9UKaKL+T
	 cwHciMm/TB/WgR6o3l7TBJT5uzgPpeMdpyZzEzhaYHcO/xGAy33GXAs/PyRbxI6P/w
	 1MlsqORtCk8Z2jOD7/9pp+DOYzuIbdpi2ogn4xB6QtqjIQ2sFfx12pZdetwqlHmM1E
	 ga/5RMwmKVKK7kSCdTHoRH6zEdvj8RHipa7Kn9uqcrX5w4W8zGCIB47aGEQZz19xi2
	 mOHhdf0lgJOQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1426C30653
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948266284.27084.10329497643637853975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ff4421dc1129c5de821d379c9b659c12e5ce3a35749f71ef54744d74ee6695
Date: Thu, 27 Jun 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719482662
