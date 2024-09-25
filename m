Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC4C189BBF
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727305554; cv=none; b=O6VKqd3qMBdHFOs4VEKN8crGAN2VVP6hevjYJuG71W66i99xhzeHwe6UjvNjBvvb73uMqaDTSC7zoRqJeNbzYyfgw7CduwPkOILyPJCt93003nXEsWKBx9M7YaBxCWn/FxXXSyQY3g26V7+PTGr7W1D690aMI/LYx34/Z7mldy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727305554; c=relaxed/simple;
	bh=X0SNNoZP395BaJFp5QIRQfLEplrVv++I4Yz6zOz/Y4w=;
	h=To:Subject:From:Message-Id:Date; b=YwKDySe25xM6rAqpk0961vfy58Tdi4WnkMkZIh1juxgx+Yt75NJTZJ5PAUMsZTACOHfFUeQyC1K4stiDFI/z71iQ1fou5IJQuhoqYg6a0Yo95NXmg2pZExdELo91W5YKPdfeFNAUNmA4Hd0x3TE6Rz1bj3/KkYXxbXHxEL0z+jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzDwkEk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzDwkEk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC1DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727305553;
	bh=X0SNNoZP395BaJFp5QIRQfLEplrVv++I4Yz6zOz/Y4w=;
	h=To:Subject:From:Date:From;
	b=pzDwkEk1wlLefX2Abm0r47y/YCd11aDzpfwkNV0r/qVPDYljHo4ar3Xb/V/RCaANy
	 r3UAZ5CGsRgx9qFg5cRYOn5Av6I1tDCA3RSKp/IxlBFOcz8lehOHEGYHsseLLj2xg6
	 G77FvNGs5RKktGAm1l95RGXHQXdrAhqlLL9yceaQWiwxCBzGAT4DCfbZ692wTvrcPV
	 qAUJsElsMNS8L9pMf0k5uoraRELBjHaLmqdhu7NVIwwiD5Zw7Zm3/cRY2VLWdoHff7
	 AQhr+XbWIXHViGIy/aZwnqTnN+b9Ytv6h39ij+Jz2rnzH9jzcFDdzpR/YfiS+MyQ3a
	 uHZvKt6ibJUMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91892CCFA05
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730555358.28264.13442016707718644375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc7e4aac074274fd9137f90b28db5239af75b571c6431912e7b239acea79d06
Date: Wed, 25 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727305553
