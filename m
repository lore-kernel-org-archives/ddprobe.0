Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDE7319604
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764612174; cv=none; b=TN5XLEEkHmRkxTQIJhnjTMVZXm7F31Zq3Hj6SLvWvGy3qCMDVBdDLUVddjd1X1khjla7UlV35jbA6QNHhdN178n5nmPGBt02FpC4ZOeV1Novy+IZewczDRrseqIPiR1WHPELjWdrtVjkeE8Ag3wIus6bIqGDEOt+lYrX5oVItgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764612174; c=relaxed/simple;
	bh=Bi0y9Hsh6PaueQ9OjmJn2aMqloTR7sk/xiYKTbWCqco=;
	h=To:Subject:From:Message-Id:Date; b=Lzi8rrQ+PqO2WstiOJVQiurjnerC0XsgL64mIsFTEl1aDMJyt9CUIgnpjrvy25F2Oz3eC8ktZ4ZsNhSWhUYk5NOlcRNdlHnsVnmEf2JG7Yvede7jVtGGLHafehz8HqfBd2+591pKA/5fFdW+0TV1JBFnQF3bnwi45mon79DGPWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WV61IzGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WV61IzGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FADC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764612173;
	bh=Bi0y9Hsh6PaueQ9OjmJn2aMqloTR7sk/xiYKTbWCqco=;
	h=To:Subject:From:Date:From;
	b=WV61IzGDtEHyfbV80MTisOzAWoxVEGYVaupW4tzpkIQrg/QsSXpQMJ5ugbvNRDpgR
	 QLNJyfoOpO7Y8xUrV3fhSIpq2VfEGi50wn9ZBw820T1yxO7DE/yqDXMlHwspfpyOMN
	 OxFA4GBJiti/IUH4EEiFkIKnbitYqQX89dUmQxqBCqhH2M/UhuKtUvV5IU/zzcYxD7
	 +bf4k4ECukOEqJvHea3vVREMwVdT0lCWgbvnobJTvw/DPaEv8GX65TdDSmq73NMYKG
	 JFEKarQ31uYjUpeC+OmtzGwLgNoHng0PrGDFJsJI0HZKYzWgcjtVHki1bvJUtbXhCi
	 s28USHbWlpyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361ED116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461217359.18017.16836261451648515723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c81f67f7b872bd259a1d1547a12397a5f5836e70e6655738d6a190617fdd6a9
Date: Mon, 01 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764612173
