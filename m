Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE04368291
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787837434; cv=none; b=Lo7c6evB/of9FacolclqGr8B/BGUkvjKGrahHZrTRVG2IdKKUyqmVXtE9YFpYLowY8vg4yfT28PPXMr3sMkyjTOVFBVfd+IXqW9chWOEzo3M6POjnVX2vL3Z06dFzwaiVexI8P8pOWaDd1doRJ8GABgFyzXie3Vh4HRjg+rXTbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787837434; c=relaxed/simple;
	bh=8Q4aQSCIQdqbQTmjbsMZ5gZUc6KTEr8DWNnkqctmwmQ=;
	h=To:Subject:From:Message-Id:Date; b=ZBHlwwvtwdofdFo8XRudwx2J9YbIpAnV07CWrVzxYS3VKciVeO1EvJoofWs+erDJt1TVkPEMSC1ZFc87KuW26o6fTeaYG2ttOoh/5VPfi3l55T8t195K70W+NgncmoU6lNdCibEvu3QStC6pwfptIztUkFH6s8pN9ggQhg+HjhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChfE0Q2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChfE0Q2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4D2C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787837433;
	bh=8Q4aQSCIQdqbQTmjbsMZ5gZUc6KTEr8DWNnkqctmwmQ=;
	h=To:Subject:From:Date:From;
	b=ChfE0Q2E93WD//NS61JYu1OzQwsAw5Dl0Qg3TffvX/hmshLWZoXUunFxIPwiufpxG
	 /EMK4V9yZjnaKmVD38c3s7LF2Qr7aj/o+hoEygyMSCN5jeyy0X2kO39x9TPPuhlbGI
	 MFe+IjQAD59b9SUgi7doRFSszT6uFiSfgM++rvoKLJxYKjV0ZXgql2dmmx7n95sw8p
	 hyjeciPx3b2rOsC2H4hbQyHSIkSQtIOqEza9il9b0WCl9v87G924C/O2wfz8/zdOvX
	 UGLKiJ8e6sbykfzFFQlqmhGvjdRzJAXrK+VZYyt4mKyDR0aT7BFMWjkPaPYwqYV8Bs
	 5if8Wg3rMTMuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9865C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783743368.24024.11221330202316958558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbdd627ea62ba433ec5ac78c98bd76d05c84194e6de3ede56c3601e962668d6
Date: Thu, 27 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787837433
