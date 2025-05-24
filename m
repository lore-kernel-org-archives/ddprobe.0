Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CAD1607AC
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748094594; cv=none; b=A5glYFiOf1HRBgk4hKJN3Y/VhBYYqZRJeosOOKwzNWE8mnLuRKkKLZ6Jw90RoEHRSJ3v/LZI1wfPW9EPbEQT5Sdo4hpQesSKHY/fk4IArnCN1p1Enrioa4kvnOCo0iF5q4pBk1SY5b1SkpuUq6NggyuJhbi1gmvajsbwqKlTB/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748094594; c=relaxed/simple;
	bh=Vme/bQXvMc5WdyNYBStNy6/zTGmtU3TCe1+wGGVKyS0=;
	h=To:Subject:From:Message-Id:Date; b=XMN6HexPEV1nw2s1ctRTjShD6eARPBy/euwaWjcM1pnb/7lV8lornHW/DSMU94gIwOHhID9wtTBYCoFgMZvsPZXDNZQFIcZPs6XGFfBlVuL3F0pfX5s+VRRkTaiE3E38IjrBBTWzUq35ScWw+5lEfHtCtt/gHSk9rBj9eKVQnbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GX+fT8Rj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GX+fT8Rj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F1CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748094593;
	bh=Vme/bQXvMc5WdyNYBStNy6/zTGmtU3TCe1+wGGVKyS0=;
	h=To:Subject:From:Date:From;
	b=GX+fT8RjvKACpvnfCNXrAfWSkCf1qs9NQyuVVQbmJ/KNGbWrMq7ARRJPX4Qqr9DV0
	 E4h9qCWdeMybJg4/WqjuEBftfmQRrHuiOAzYEPoFsqskN++oJUFlD3oKjeBzQrCGQN
	 5lwYe1lIJ5DRygnHxeS5W50hfHquDM4CCeJzHrL/Ranj/4GXnflWGGIdymZ7VQrzVX
	 PFPN2MZ4Z+2BmxBqCkOTc2OZuEQpmayS6nq3ccZnts+lWwh4bxHhsRrGcoI6h5wShK
	 nsrw+//YUIHMIMpx1EBf6jOpFFS6fSR2Vqt/iLyUbPOyeJouwgHfUIBilKNIJBM+Xi
	 XvccYVtwts3/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AD8C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809459357.31602.8224044937670335000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced531c1f56b8f6450a72b0baa913744664f55e9def238177c7f5b2a6071db47
Date: Sat, 24 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748094593
