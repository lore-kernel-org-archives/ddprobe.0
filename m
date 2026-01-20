Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1850C23A99E
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768877034; cv=none; b=dwPjwQaOYdBDeaEW4EPMS1OgnoffrXDJzmT2MSN2PZgHy94l6DdpcNuu6/T0ZsgJEv/UBCOplO14mtxm5SXu37vnnj1hmrE4hW82kfti+KtR/8JCsJZB6cfafwO4U+OJilHOmJ5f9Lqdg60MPtY2XNB927PxSP2EFyrol9TtnCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768877034; c=relaxed/simple;
	bh=SIonQkBcjHQ2ZewtzDbc++2cPOGfPucuFyjvvJ8aO+w=;
	h=To:Subject:From:Message-Id:Date; b=Vlty95k2ovbxUh22S3kgnxkolP6/j/JpY3uz17MTXgwaPpVg1atM5JlP2+MmWONBRsXyQKjJZ+wOOH913ShinjkDBKM7t2qQhrs30NUT7V7vfUp7MOzOvLffGG9gfD4zR5ATpyTOYfEH/5p7KHWJWib2VnJhbASnt05pCu+sNxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as9onIUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as9onIUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F6EC19424
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768877033;
	bh=SIonQkBcjHQ2ZewtzDbc++2cPOGfPucuFyjvvJ8aO+w=;
	h=To:Subject:From:Date:From;
	b=as9onIUs9IiBi1DVHBkcUGVe1Cf+RZ/jkCpUSU3bQ9N9a4MtikDAbVJLYOdHWsq8l
	 ZOaeeBUxeoN8zKH7R6+RFuBzLAL3uTg/brbsDH8o518WFgxQxmfGzb07y4HTYtGK/U
	 bvfmMbrR/Ii5IMXkt0eknXCf1nLat1gissCLdhmOeNd+JudNMB2GqMVM61ZyFr7wl9
	 I2V2g2krw2Z5Q+ed+fRGk13zRHaxZ2fER9mvvogVgJ6OiwyUqyChZa98dvq0ehKfMa
	 ZgVb8Ar3YuT2+oceZyRoUWxgGtYgDdEwvWIBfMpGDy27Qbe4JV1z9qOjY40NH7U6sf
	 zmrDv1S3I09NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E9D2ECFF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887703358.14220.13630827772062897376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095a2cd8c87afbc70f5ebb7bd14205b7e4fd996d7920917c8e9110d1821ff849
Date: Tue, 20 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768877033
