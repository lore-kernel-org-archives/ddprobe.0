Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA62171AA
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723173954; cv=none; b=t2wKnkyltxf4itOVXZsSyCkw7nTHijcaUoXmLne4W1uZRBrDqPHZ4JjfG5PLB6GeTluaOILSRfBLTQr3d6Ak6J0WgzgXEXwYFvxStuQ3ix4xFOkgV49DLXORglvpGNxyEXgYa+S0entkyZEOPjYaEH2S9Qu0/gpi3V33wyNbswQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723173954; c=relaxed/simple;
	bh=zVeFBkLPoS3c5jZNB1MHq1LRA4iA2AycRxZqumKoJR4=;
	h=To:Subject:From:Message-Id:Date; b=VmU2yKJSfry2yFg58MUo37xRP4eSFpBvVA/am/w5s4bI8c3DreB/HoXbQgQFOV3qHwqxKrBvUZiVhdI2sEdCTyMpqq/76TX6WQuxK14RN9SfX0pSyNxH1KMnCptB6Hja405nPBN7euPZJYii3gacGknPKZ2GRGN966C6houKe34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKBckA/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKBckA/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1A1C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723173953;
	bh=zVeFBkLPoS3c5jZNB1MHq1LRA4iA2AycRxZqumKoJR4=;
	h=To:Subject:From:Date:From;
	b=UKBckA/+dXGaSdCOv7zedHC2gvqewlW6p6fdS2JxuxLNQ3g86QiCnHDd3HiS4AJsQ
	 DsXhY+xsReFsXW6RVdJzEBGJV0/DlHKLJjz5eFtcWKQWKYkwAF6GYknc5WA3Vnnxmp
	 yJ51PTsSP34qic8V10CAyek7B5tKh/ynF1V9XvSX3XFqXoSI6/ay1rFmoJIgYFP6UR
	 By3D+VTGIpheZlvaOTZVkC9JEpTn/9SPKG8KyIPvxauqR1xADSirOZec/kf3/oNZ0W
	 ZRwVnzeZXqEmgc8hCNeoV7ZxLMPgTGSThR1Rkg2aZnRS0ZNZZjkRf9rp55toJgG/l9
	 wKXEHPYsztztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DB1C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172317395358.20064.4668122331981933218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaddf7e3fd91a48418c101a9131ce86323a947f90142e25d7e6076c8420f5e68
Date: Fri, 09 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723173953
