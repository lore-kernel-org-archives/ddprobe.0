Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258E11C5D59
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754296194; cv=none; b=h/YcqU0hITR/gXaRA8GKgmUFyRt3VGckRDCBgHEp1WdobOigShqaHMni7JWfXWiA3XwCihT+IpEEEWWOTxytaTFNvlioyAqdRzK5tnFougAGsHiY+JfbF3Zo0kWA/FEEokk/LvH+K/xvXDDgyLBPXHskgK7m5PQVKXIxy1bVR2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754296194; c=relaxed/simple;
	bh=HLfS7mteFdysQtfE7WIAnqAiweQRkxmbfPPrb6Vx8gE=;
	h=To:Subject:From:Message-Id:Date; b=gqbgZICUDHt7r6ZHecKvniiGIErSVsHVpDDVvJeCHaSJPE0OsS1IXXi/7O0piHo6i2V7oP3v6oLkCeF12+jiatZiNqYHl+B+amG0PTYq5S9fLyE8LrKX6U1oUyK1SCUV0LjrXsuX2fLuUkNjVw0NGPMyEp3MYDWUhIqXewZs35U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnzrZI90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnzrZI90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3B2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754296193;
	bh=HLfS7mteFdysQtfE7WIAnqAiweQRkxmbfPPrb6Vx8gE=;
	h=To:Subject:From:Date:From;
	b=nnzrZI906/ufLJbHM04M4AjlOm1y9ELD3VZ5BLsg0d23XPRRxElEsQ7PygM4kJ4MX
	 x8l88gpdZA1cdBO3vz9pHX2iXEAcPPai4Qn1B7veGBPRGDkcnBKpltAaqsBFx3H/pp
	 2Zw1FVAlzsmqQRtrOFA6xf+S5KMULKf6g/IX0e7LJub9dptxAnOTITsyEUse0Z4h+b
	 G5uzVmsloy1/SedNYz0KHknsRwAU2aaYm4lLU2+Ns8p6YkR3RA78/uDRuXfHjL0nDp
	 gFZnRIolKgTH9RXjdD4HQlRPFQH3lScyFdv6Kxqa4BoNawEGpRzNF7t6W565+6HpBd
	 zt5A8QEUQaP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A2C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429619357.32732.4127304137891416939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5b654dc10aceca3376638e706e6db6a80207cc0fc7eb7b5174e0678d1c49b0
Date: Mon, 04 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754296193
