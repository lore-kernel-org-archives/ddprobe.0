Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46945EC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720454783; cv=none; b=ZVLfnAqfGN6NKrCrGzbP5yQYSL5/cWSfC9GQ6p9MdxNKE6A73Xbz/ENXpOhnzoQTnSPFZ4I88B8xOblccT5G5gcH+Iqwm1JL3gmkpA7fnTUmai2H7RNB2Dr9fcXTQnSuBniELPJNANsa1u+PYXSvs0f1/FS0v3hFtNySrtQyafs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720454783; c=relaxed/simple;
	bh=f5U/bgzbA2fq0agEmbgHDVUvJhRnyOhS2B3IdTOrmBk=;
	h=To:Subject:From:Message-Id:Date; b=oV2LFh2+I35wQveeDGlLc/HuC4uqt14yXGncB9+1q8nJiZfxI9dW0DbTBCe/9coG++IIiuLKtNHRFhOgmiNfY34CPSgHUTCSEcmGFNi7PuI3kOAVsX+q+MzjbPIlCOItRfw1jnV6BL4y+zbyGl8Qoto2TPabZ6NPNj7bdoXFIJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJlu/HlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJlu/HlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A72C32786
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720454782;
	bh=f5U/bgzbA2fq0agEmbgHDVUvJhRnyOhS2B3IdTOrmBk=;
	h=To:Subject:From:Date:From;
	b=LJlu/HlC1Cjr+TTYGtDNU4ms8t+xVHc2eZo1KU5Me7n49SaA3niZfNHoeT9+Z+RU8
	 DMDJd4rg1qrGhMqP5sUSzaJnSaqgA39GnnM6ZQ2LcgPR4oIqKxAD/Vvszocfrqr6zd
	 vhez2fqEf2eY+rFMiRuMnG4grI6/Poz/HSD1Di7k+IN3459rJ3/CYpQEyq65w4rAOk
	 2vBw26QU97sWPaTRamTCbRLWLIE8h8DxBmPfpxPymL0eDIV/Fdf8ioE1lkAg7wzFXo
	 BkCSdtypVPO1DTTFqRUVM9PEQlU6EDkuDIj4yY7uyWH4nBxkmM9+HJ57KuuwJ/+a7B
	 rqjxii57BaVHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0930C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045478277.1281.1314145164557962413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e9f6b27596b4533e23bc4c021c72295de61eede1a2f64dd4e2e7f57fde2525
Date: Mon, 08 Jul 2024 16:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720454782
