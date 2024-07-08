Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A5A1C06
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720449383; cv=none; b=s1Hoj4zFCYwZTejT6WtC9z96HJ7Fd4VSMXFe0Gpz8yD2DjrrjufDIzj9JIWF6HuUIBInivpy0reYlZD0KtIVKCUrHM0nwnzJ+YOdZ4n6Ivut/iamFOOGUT9CVSGjiZh6IkuH14mLM5HptT7PJD6I6ZAqsCPGlMf+UF6jJokZz+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720449383; c=relaxed/simple;
	bh=gMNKVSMQw5o0M+s1F+8drFY15/cpPm3fU8Dgn9scy6M=;
	h=To:Subject:From:Message-Id:Date; b=mdI9aIy1gAuVbapZa2CavthIC+qn/oTiVZmDm5rhgTi5dnf6+kQntQN6X8FvTef17aWPVskVgJUjQ/yF6hZBB/66aT2I/SgqG6ax4kXlJTwLbsG9wyWr+MU/1Aa0vhs0RHZ2sSm3hq2lovxCWj0prS0OH8rB2jEZL3rhJIdurnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6owKSWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6owKSWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5023C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720449382;
	bh=gMNKVSMQw5o0M+s1F+8drFY15/cpPm3fU8Dgn9scy6M=;
	h=To:Subject:From:Date:From;
	b=e6owKSWJyYdv8HI3E71IWomkIZMOol50e/hqdcfS3VhtEn9dadKVWVanhJeH4RAnw
	 qWOWNbqxRFdqKsCM2IpZ2xxtuv6iqeweePjETgitVAX4J3qGK4ugIlWMQx7WnmNhER
	 QS6Dc2iwBvrxmPegdvedpLht/wPmsa1/vjzvqq4NHJIPMwqmXWqqqGBmVlbWKTXvjg
	 pIrCcRLFvhMKugU6lL3dkLiqfLvLPGEXVEj5B0/k/2cZf50c/azn9CJEiS2ik6lvDk
	 Fw82UjQkgLRYVg5jEjUbEGbRXzAUIPazv2DN91LdlP3JWciZrgXG/Z/j8uwxL8TVXI
	 qJc9cWn9wLhtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5048C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044938279.28618.5620682282101713433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efae45cd8a70125f84307def9aef1d5101e8f96ec318672bd714e9c7e6435043
Date: Mon, 08 Jul 2024 14:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720449382
