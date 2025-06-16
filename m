Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FD2A31
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750034994; cv=none; b=RMH96Q/E8NoJqxw86yOP0xaz2IbRMXrC/V31lTWeZqod9QxN0tzLO1ebaJWtVgYsxQyHfik/3SuzENXsq2axFZYrfegxieKSon4GFisQkE9d4+eZAq0a6aofvKal0R3t2PRt3cXedlKrU0Z9z1kZjp80GHD+TfgWG93biWxTgAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750034994; c=relaxed/simple;
	bh=9Fc76NnImb9WpuDaa3n/bp4XrbX1Sih4r8pENP6g5eo=;
	h=To:Subject:From:Message-Id:Date; b=MMQt6D73RZv4YeDukPo4h5wajjqywFfvmxbJxylyieJ09CF8ils5TRuv4ZvZKvvAPh6uG58yg0QbICeD4OrtRlRDphuV/idPJ1UGFde7VfT9f+SXieV3kE3rSsK4WqhEG8T54Yv0DxJ71cJ3cI86r2dOkFbJCLy4ShAKohkhg6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNYcEOHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNYcEOHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB0EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750034993;
	bh=9Fc76NnImb9WpuDaa3n/bp4XrbX1Sih4r8pENP6g5eo=;
	h=To:Subject:From:Date:From;
	b=aNYcEOHoatBkNneB9I7OtRHX8N4NDWCICJ+eqEk8LTQB7tabw0wrz5QNJ4ibjErSH
	 v4w554w98cYme0l9YjByoaicuiWQiwtbr4SnEi1RKOfdjAwx2ZTA4oLQUniDaVOBjn
	 uuEej4cX1ctNc6H1D0iCp59VjJSIJTf+sDF4nZuntZZBkWV0GKNgtzhHfVzl86yQ9W
	 5Doj1oDm/4DphCzs4PTThwd6OfujUhicSNPWdNFWTwi+Pa8+LV9Woa6e2XzSV8UvNo
	 v2q3Ugbevraf+uvFIC03sLw08PnBPSHF7WqL7nw4U92QPT1wxwshlNdc9MFttxrWdL
	 GMCi7ZM/Hdb+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FADC71157
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003499358.26961.8924275339792767321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6820d6148fe574f39891e63b202b9dabb28478cbd9a432e8288a8c9fb108cc6e
Date: Mon, 16 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750034993
