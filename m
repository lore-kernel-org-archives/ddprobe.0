Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA9430E826
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750507194; cv=none; b=Fc6EpoWBRAtm58XhblnSBdKdFi3slNBuEbQeyk/WYwkbwbs7WZuNQRmGv8PA9r81FJ0XDPBmoCW7IH9d4oURgQW1Dbp/9PI5xzHPzJhc8wgNVnk5KFMi97Ekr5Bbu5aX2qbECeI85s8kOYh8SIi1lvFvsejwozlc7YR2Hp9Bg2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750507194; c=relaxed/simple;
	bh=ypdtOb/fJRHumFwyav7B69WTl59X4b2OkgX1g/1ix8w=;
	h=To:Subject:From:Message-Id:Date; b=Y+rTHQdjGoHIBY4Mrvy3KEQwQYb2SJFNlsa7LEOcEimnR9P5W45LWgOLTcawq7wb0dgBEXpimelSwmN2HbPVN5rhZ382g8ncTazK0w4XSmcod9bxSIAzP7oVtO5yXuGQ2Vqs/7SaIDjjYoZygn8x+9CwfaJb7XaVi5MM9V2/vlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVAEfCCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVAEfCCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D3CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750507193;
	bh=ypdtOb/fJRHumFwyav7B69WTl59X4b2OkgX1g/1ix8w=;
	h=To:Subject:From:Date:From;
	b=pVAEfCCEHEfSgS7xHBFHYg90uywf8FjdcoEahhYzVW+TRcrzi/2x2nQY+F57q3Gqy
	 DOnSE7/X6y0DtBa/Up3VckcvJWaPrmDm6bPyCy1mBe0KaHlj3IZNxVnZ0Ao2AzIV7l
	 M/w0KgLsS9SqexMedVCd7PPlq3K+SlSKj5ivMtjO1RE22dIqFq9mDpilcknlUd6Ryh
	 EzwIFlygpsKAKtbZE7pCtUiqwMzmSvIMqvmYjmdwYfFLjAC1oT1WXp+pLYivjo6JZu
	 qQuVh87cUmZhJGeR0x2ieGDdNx7L0WqU1smWAjbPDJTM2gKr3oEGaUsPZR4nPw3Rvc
	 VMDQqdeaKR1zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93098C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050719357.680.12289401330805311439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbae3c8808e03921e9867848ca2970d816d4a9e0b06b8779dc3957670e4eb9ec
Date: Sat, 21 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750507193
