Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E072F42
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752363595; cv=none; b=FoPG34z987iUPE6rVkHDgvpGmkxB2/yf1UwznC74kN9yiDlf62uqo/4hlplZgMMyWUXZTFmXv59I87QhF28tw3ZP14YCs/N+olsZFBi6/zUEpBkvnYz4uKL3M29PKEbY38KD7VRqwfCtjerPCiCnXZ/k2DgT0QxkMICOqL7bqRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752363595; c=relaxed/simple;
	bh=QkBlYN3G7DsxekIEey+rsGTQkUMOiF8fcTEWTUCSup8=;
	h=To:Subject:From:Message-Id:Date; b=GL575TklJwDFRv3FsYVXWxU1LOARK3vqmVJcttyC9Tn+V8HR+OpedJZ69KZWMHfyt10EuUqV2jecb6XyuVuuO14ZxZWY10RAIsGVcPQyLHohOcMAQL2Tx1jwRKTF+piLzdcV4jM40DD+HkcJb6MDKNlEDCAlef4XyaZWckNfay0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTJ7ELiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTJ7ELiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04EDC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752363593;
	bh=QkBlYN3G7DsxekIEey+rsGTQkUMOiF8fcTEWTUCSup8=;
	h=To:Subject:From:Date:From;
	b=XTJ7ELiu78Zt/WFajvbphDLc9LIpaTmkpfGaxoSlnKwcTRWdBCRObNb8LrOcSTs7Y
	 +cU1qr0gzjO4kgEpSxAXIvttMwz9UeEnBPC20v+hrea+2Fr3FAH3yEF+oDDd+gto7J
	 LSsqHbzwFuIopqkDpcvfC1/MB0JOGWYad5dT2YgUB8mhmvG1ZEs7py3ZO8rK8+pCnk
	 /lNvW6aMfWMaAMoHa7aoKCZa06h0y2FNKC1VeakgLUFf9rKR8eu1G4j9gOc3RH6ZWl
	 bufsArYOGRJSNm4RxMjB6+5JS2zFZXvCDNReEXLJweAcYjs3YNa7mFQXtWkPAn1RHi
	 uTo4QXPgRre0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD55C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236359357.22480.292518278581230311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27431948016c75cb49f608409bdc3d2702f77bf4849f792b5189f301689f30a6
Date: Sat, 12 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752363593
