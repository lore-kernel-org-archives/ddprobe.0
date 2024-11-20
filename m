Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5B6200CB
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732094754; cv=none; b=iih9QsQ6iwB8WlERzV4mJtsl5RdFu2BPGogeRfMs7eM2Rla1sCnA9WtWsqFBj++orNWPKMmz+YPi5OAXmq6JqS6eEX5ddBBpeBPha4v+6lDgZJf1S2B1/5tIUf8kydTR2TX77yPtqCd8EFmNygxpi6E2gZJ6aCPKTNbuiyUjaMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732094754; c=relaxed/simple;
	bh=cpHp3dCljy6HhHN7G7QSMxu4AMxcx+94dTq/S2N6nR0=;
	h=To:Subject:From:Message-Id:Date; b=sSsr6lA6vp1RawRVsdOX65zthTuxBeY51yAzvBb+DGP1BQoamSKQsSClW1XyiCtxHDKpKgRiI+5e+bdlibmgT90CjxihOSjpp2NqSyBxiz59MFBRqPLr8RNqry2R7wa6Av8rrZalX+19TLyml+rVyo7JswMVHCBLuz2xcNret18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dq6ERDSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dq6ERDSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF6C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732094753;
	bh=cpHp3dCljy6HhHN7G7QSMxu4AMxcx+94dTq/S2N6nR0=;
	h=To:Subject:From:Date:From;
	b=dq6ERDSxayoemwFpD+wWLOV9balfnKj2cH1mFToLZpANj1/yzKSVc6jO0vnbBDRbA
	 h48Co1XPc0lqcqIFfTRmvvtQ95mA+Q0IErps9g3pSkKhKJuZC7LLack77ij/80Zbpm
	 nyaD9xiVUwVEFbJz5lwGf/fDEeuV2Op0HDZyE5x7227ninv3AQeMIDE/lW3Jo2kjYL
	 SiT9GUtYsdKa7KKT8wRcKB6ZqsuD5osoj43HMqmzw9LPMKaJGAawxyhzWr2uN64xYN
	 I9LjNmiVDY0Q2cneiB3LRGrcMZQeIX/fx8WKpod6LcQuKtu1uyfE2qpTvYU5I/J3pt
	 JHHacxRQUHcIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910FAD60D14
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209475358.25183.15435948824271456928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d666a67d36c3288223c197765316f4869c73cfacb52aa6efbc193adf0666ff4e
Date: Wed, 20 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732094753
