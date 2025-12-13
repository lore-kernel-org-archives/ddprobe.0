Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32594184540
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765652574; cv=none; b=lhBjUtGya6X6hOkAq6Nl4Smu4eET4pW94q+eR/OqMR5MBk3Vw0z/iNs4Yf2bERTGja4LOV8fLjf2OKbHUYB8jhny7G+cI0nHS1vLfdP71nQbiEIXaXhnR3mOL3DEB0vNbg7ch3BpwC06j3i25QDIbreHJ8k27O0Z2ulZ5Cfi9zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765652574; c=relaxed/simple;
	bh=7TjSCCW+y6kE1hnsTvTx/jQra+F88BGggd3E6/4d7H8=;
	h=To:Subject:From:Message-Id:Date; b=qmZN9PUw5BKzgt97Bnow5Qm2no9W84VS+KoRN5k+EAV5REr1KDsSTKC1uv50XGIl2tCkGQKQtdT8JdX1FKGpoME1rUJb39mFDXNiGY276YuMGrNaBOCo4ZTJT5UTfrNdqfWT9+bj4j31a1NkAVBKMtOx9Vco49u/dia1icBECP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nh9fSd5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nh9fSd5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A841AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765652573;
	bh=7TjSCCW+y6kE1hnsTvTx/jQra+F88BGggd3E6/4d7H8=;
	h=To:Subject:From:Date:From;
	b=Nh9fSd5C6M+odYO913EDgNKtZPk9QBsYGy+FCjJ4+2iqIk6Lx1FTsDg8jHoQx7r5n
	 h5xZnK2EqoamOdF469eMYu6eaIrPi3rWH7BpMnlpzwi68KqTn72p1Jr2MdsP+WDN2W
	 cu5hYjtpEZyIUWO1tTaWkNTkxVYEw6MiFqHfniPlodIGPWLfDAr8NDaK4MnIy6H+Uc
	 SZ4EbOz4xqgrwwDMrEn1fXfJxU4sUO+IY/5LYZaLr8S0WJmEi7P/FN0tw3R0F9Mq/r
	 zIicvwGlX4nekKOynzKy88Lgp9Q1v5jQRohexgku9bXdoS1MOFxLt2N4UBCsgYgGWB
	 O3KmKr3Rkv1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9283AD5B15D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565257358.12238.15307243642163473287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000bf98a53bea3b28a8c15e2a069ba858375aef3212c58fca90f49b7fbfe4124
Date: Sat, 13 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765652573
