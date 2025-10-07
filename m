Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAC32797BE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759829394; cv=none; b=Fobol/qMNBtzaonuQ+nv/pH3HflB+6UNDEqfo5Xw4Un07eGkhu1Xur8lcBPqetMfZjGltr6w9kHaYf9RJkAK2lewz5vpkmbyIbSQaejhL7DSK/CqEjER/un6PYkBsoCrBev7KfwPlObPwOUZda/e/W1nReMms+lOSXZOdVnp3ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759829394; c=relaxed/simple;
	bh=NF39nmlSVQQ0aMbiQEZ/PTWOkJxAzc0H7JOzdDQoEFo=;
	h=To:Subject:From:Message-Id:Date; b=FhNIvpkefnXlXIiFyy36H78BWKmiNG5+XVc2b1B8/fc6T7s3c+E4c0lbY/6Z1kGHUkF/68Oq77WJ0UZonkg/Wy4etGzlvdlF19F5YvS4KR+YcHM+9emVMTsnRuvgpCatVAJbzh+2tDn2inCAc9sa+sGTpPcSexSM1HBXjXUCuG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szVOay4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szVOay4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759829393;
	bh=NF39nmlSVQQ0aMbiQEZ/PTWOkJxAzc0H7JOzdDQoEFo=;
	h=To:Subject:From:Date:From;
	b=szVOay4WTc8PAyN4glx6+sg61kKVYLqVsbdhD4wTHMpwHv2a4Do6Qs+JTcKZkUs4z
	 FVQWuVzCd5P7ELIW+4+FYG2/EOzpXhGt657TDcHM54uYhAutdZVb13U/v3l/HcUKWw
	 qtb1v3S/yLMPlGMcvPHuup8EPwEy8TuQzh+8inl8tlvHswEwWogpujJBZ+lUwMKT5b
	 h5VkAVOKIghf4AkBpdlCniZgFloqNQbN30/gdQuH66b1kbbz/1eOu4ZUuJWH/f2Id2
	 UbUnAg3SA4SGP/2JL/aJavcD0r0ILCIJLE1Z8ptzNJKOUYk5cMfB9vEOcLDncQg2v2
	 nVWDmEWkfMrkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9019ECCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982939358.24792.5220825920090319298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e7193fcc64b87231d37e3185f7e14297050e8d2f24ef17b431160f918d33f7
Date: Tue, 07 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759829393
