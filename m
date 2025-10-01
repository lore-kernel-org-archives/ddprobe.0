Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5C43770B
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759303194; cv=none; b=eYUcBIktM1GvoQuyiDFaw99ypZzM3DSGexWYhkR5uldtk+NH1liIcz1ltX+AgzxcQu+MDQtA35IoqSEWk+Rc0aFkdr3L3s0DALKi2b9Nsf4RDrGQ1maya4EyGFVplufJO3h5Fle7k4p1U/8CfjDsjLQybaknueUaBSaWmhGHjBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759303194; c=relaxed/simple;
	bh=ikGhHXvGK80hvOsRGzHjyvr7GS7o0fR09HyhJDMPBUc=;
	h=To:Subject:From:Message-Id:Date; b=BOzVp+20AfytcnpbtB0h1e1GwLUFohuDuhUF4OS+5lyWdl3F/4LeH/cH+Q5fNeypvcIdsWeiysEps/rxxwM2c6CO+0vTgyY5dagv9KWzR22mHV9o0DsosAbWL4r1jOZcKRVzAi6uHM8g2qvHrJaF+jzzBL+zKTSumX6/sfC605g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8oVgDWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8oVgDWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41DFC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759303193;
	bh=ikGhHXvGK80hvOsRGzHjyvr7GS7o0fR09HyhJDMPBUc=;
	h=To:Subject:From:Date:From;
	b=G8oVgDWYb78eSlOD++yi/PU2utNfkrwGYSI0a1T5ws2fVvXbTBGWkRQCCIYbNSVw+
	 E1S45VeygKI0chmnf/T/k9ZxOCnXaworg2gXokXtdA+CyPwMLr1/XMP4vfpNGtpjpQ
	 wCn11rckaYOn/I0To4F0+0LlB2/Loo+CFQ3lReVHqoetWVyzdYlxzVFv0MA3Lb2sKm
	 +ew47VuX81vZUgdFHnDAOvqYyI15cr4dKqTeH5rCiKZp0U/0wCv+FsK9gTes8Tjh1Z
	 Li+j+zCCjrbGBC0KYDXyRcdLO5HjOGB2VDww6koAJaUoPE6Z+Vnv6xYibByyDS6WR3
	 nMOVhznc05kIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DDCCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930319358.18492.17545112675571949290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357469659bd6d413124253bc0948e17c3cbccd28862d23ea8a020269509edf2d
Date: Wed, 01 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759303193
