Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1013E1E7C34
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766904834; cv=none; b=JJZSWwifU4h3g68mu/IbEVRvQn1nt4fzIKq6OS28sf6y5Ur3YVU+DfE8QIV2XvEovfCOmUCTiW6UJDrpPLCLWocf0uZMjNSoRq1Iu85/4DrjEFwdfii4OqqLL1+mWDvKeVHsD/0zoeGPptTvVe4XjjM3HNjLSV1+LguIXZKQ678=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766904834; c=relaxed/simple;
	bh=vewpsl5aCIcmwqmA6yCOpicUJ0nqfbrOwDz7rD+aJCY=;
	h=To:Subject:From:Message-Id:Date; b=Ww8GFRUYxPEqVX0z2sxR/k2osoIxwkdqE4KjPenaJxQyBHRIXgGipVoX0sckYgy/5JbxAeTsIWf0gXi4IrNaii9FluCHtywR1nTLQ58rd294RirlSYW10+AAfOgH4Z8/znOPJIwTUmkS48bLmj37/OOCMPkqal91KOamK5MMN9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxwY8Txk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxwY8Txk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D3EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766904833;
	bh=vewpsl5aCIcmwqmA6yCOpicUJ0nqfbrOwDz7rD+aJCY=;
	h=To:Subject:From:Date:From;
	b=SxwY8TxkKARldaiMv9lV34cKeSpJ97XkA5VmNnnJiCfd4Pi2JQ6ZNDueEu/uwsa56
	 XXGYzhdnrjxNu5dpF343l7WmSwCboKKd7BSPJnUOA56om+o/ZEAfrux0LfXm/+VBGe
	 vt69Dj/Jk0wsV2PWNYBtWEVfj8S4Gg0Y0IwGZFbgST5bkjk6SsvK7GGZEuZlH2IZLQ
	 OD021pY91tuOdZBaSrAztA5sl4ZJ142dmfciRXDFGBGXTe+hD7AAfg2K1GQJkEdVib
	 gxqptPFLfssDYsA89n6yJwfV8YCIaStlw+ePxv10HdpYX7tAAMFQuGVj0rYx47xRRy
	 JF5e4sUNxDJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FABD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690483359.30529.17999001182513550936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3493359aefcc6c6885c66afb5fcb6eeddafb8a50e33112c46959b2ccb61e140
Date: Sun, 28 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766904833
