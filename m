Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49669635
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724633754; cv=none; b=Cp+IutoMaRDLroVEDyMd9Sw/kPertJmHiIYV3EJA0JnpS89KTB79AuIU3kk1HhGIvs+xi6Kz9KBQg1DRh47XnojyyjkeCKrk1yUCNowOfxjaCO7idpZ+fd2T0cv82Y4ykzUEYyfW7CUNQlRIBRnt/oXqEM0N9lIWaF8wp2vvblM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724633754; c=relaxed/simple;
	bh=gUANWiaPvCM/CCgex3vDc+vXcHFtUiQwx/ftLwyfHBo=;
	h=To:Subject:From:Message-Id:Date; b=jlUrmTBWt9BZFSwVVHZwaGBG7kLS/eh3JLAJSX9lm2KxBMrI0DrLQH6vP0h1+it7neXVo5w2IlHZ7Qn2sXqSYdgcp460v+cJ9jNv31EyJyUR1asQkGUyqTKB4uDqM6jkHc+MFYfbLY7d3NlLASSMfwnj4lsNcTNylSGAF/67WjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBYAE1CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBYAE1CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CFDC4AF18
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724633753;
	bh=gUANWiaPvCM/CCgex3vDc+vXcHFtUiQwx/ftLwyfHBo=;
	h=To:Subject:From:Date:From;
	b=mBYAE1CRh7CXBYmd5388r8O9J+o7y4EDvIdpUqt36MdI6Erf3oLVEMqZCA1wg6rmH
	 yJ2uuKPHv6p+vQEZ2WVqSGeG01ly9K7gGsmIXb7sQYIT1FU5Bk3Y2psfPgIr6iAu0z
	 /uzQaqBqBRmt6hdVWxM9nuBXuHe+w0gH7CLfT/z22cp9rm0gWfsHyc1KNfQp5++ZfM
	 z+4mBROShAihtE7QE3Acec/RURtvXGOpE6gG8cCyLiCFcqxcCBi/MXmYR2Xrli89Pv
	 x4s+QySEDJEskYQLSVrkesiOZ9jX+ay8m1J4zGW6lur3PhfM3a8CuEPIJybWqmz42V
	 zNTMNTQclT+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97970C5320E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463375361.14117.876189180856243359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d48c51a0829be4ea08ec73a3af42834961622e11cf59070aa7f440bf0c325c
Date: Mon, 26 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724633753
