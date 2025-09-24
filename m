Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BC01E520E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758707395; cv=none; b=BlE89WLat96ooAuMOmAJmVzfkMdGZAk7RQKhP1NKQWodS5S03mySU6Oi3t2drmWbsZ4tg8x6tHiUrm+fwRz2FgJbZX1tNkNKiICemqEUuk1Om25iT09tEPtjWO4GoLVmMSZZwyVvbl/Z0/SpbFKvXxNgEknfS2/2gKNl1uFBcPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758707395; c=relaxed/simple;
	bh=qmbwTyQw09fYM4EhsNlHW8kMN6kiSddhSsmjkjlq548=;
	h=To:Subject:From:Message-Id:Date; b=KM9GkujeAC+MGa0ueAtkN3gr7OIgHHD5T68oW7VaKmofLRaXD0JD1JrPKOxrISiaLpQ/3SSsTYbJkSHOEgffZropyT0lHZ8zYm8wCmHkSn9EH6dmLiXNxc6UkD0vllkVLRJaeX9s9ncsmpbqh07UZS4A9Kih/wJ/OsN8/0Dxtnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ct/nW3Dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ct/nW3Dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B562DC116C6
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758707393;
	bh=qmbwTyQw09fYM4EhsNlHW8kMN6kiSddhSsmjkjlq548=;
	h=To:Subject:From:Date:From;
	b=Ct/nW3Dx0j4ooeLDBjnCh/ykkRbB1CFcYXZrIBSM8cJHOXxXPIXzGKMox53RW1188
	 +2TOpmiNQtvr6jFrjEOgIoNmX7ZN/3kK7RAqXJ6FCD25FApMW1nq888wVF4hz+FOuM
	 fSrllGHLYymUfB6CKAWUl3WdQM1hBGnpfiIl+boel17fxpS7unxGxZpmP/o/X1Hy3W
	 TEezd4I8Hkbw2mseiXYDuwTKkW8PwXRNFDX7Cspyj7zxCuz7R8/Cmc8k/HLXozmlDe
	 oYP5y0S4+47RhmLSNlPq/XkQShFGxDRzts1GOcdp97jc2OkSdrnL29xH69PvKGg/R4
	 Fs+unnRLPmn9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D734CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870739363.4314.5347987232917087001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e042cfba02d26dd32d8be824cfc53da65b851dec2d0995da94059f04a81b716d
Date: Wed, 24 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758707393
