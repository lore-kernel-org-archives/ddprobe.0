Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B25E7494
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761437394; cv=none; b=ndchY1VW0LVuH9UlcGVyyDHmTTb4UpP8XNrALyKFXJliLgtPtyb+kSiCjFjBRKtCByE8MaZ518RoPWBM9LWEHQ9tKI7o/d/EopMype7+sjdkg2fSm7KuszPqeIOSmq8PoQPQqZcCL9DFzgcpIKxnYhdi2AE3ekkN3FTefhbAgEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761437394; c=relaxed/simple;
	bh=IizCWWllVE630klVwK2Hbporxf1pSU8b/2doyebif+8=;
	h=To:Subject:From:Message-Id:Date; b=FRc3AsZ//rxRdzx3yt+8oY+K6orR1j/J1BK3k4o+vT9ZHVJ4Ebv1NnEoGURu4M19PhQC0X2pStQBN55AIGVcKaSbQVmlbaH7+Y+EGmqXFDVMw63W4WNP05jvGKZ0/KICFvuu5GfScZ2F6whUcQ2ZqP2LQGs03oyEaVL23dOqovo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNm5CxUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNm5CxUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9478C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761437393;
	bh=IizCWWllVE630klVwK2Hbporxf1pSU8b/2doyebif+8=;
	h=To:Subject:From:Date:From;
	b=dNm5CxUCgVecCm2FYTImu6ov7SCpZ5ObcfcZItdwlOn6QtCS4FdPZP8SyIYLutTzn
	 bnWjTEakGI9JjLnR4ie0yB5UeURHazQJXb6AGIEpi8N4ZppsV+YOZXIoQNLtt7A5Z+
	 URn7s/o/PaYmv4mHJS+sUiYiLh7j4wz5P8kb3Ko/46EC/POZE01g9aL+Occ7CTT87I
	 81MMCw9iOtqR2puF4m4ufIHUVfPBL4swrD5Lc9rtyTV53XVS96KlM076XmrCb+g+0M
	 ZOFZm29sGiglBmstz4M8gkhd5DOS4JH7Trnl8s7kP3oBeK/y8fkRXdluOpsh0Rlfet
	 +189Y/jCNt8IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC9CCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143739357.29870.15250518409290684452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce98ec6698b13c2d95e101eb446e3acbc67f0222d998226a35e829faa51c0bd2
Date: Sun, 26 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761437393
