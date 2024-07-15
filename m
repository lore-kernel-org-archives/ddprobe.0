Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521FD1E51D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721045063; cv=none; b=pvHouWfwDnAibXZQ/RJnV6b3lUa42b6P2QO14A+RRcBktBh/QF0WsQ27f+h2md0v3YXwxT/tTymyV1ZTWgD2ZCMwaYEwblcWeDlUtHW56qffqrX2HZMWS/5JpsqJDm/E1ChGk3mUTOAfZDtJbM48sZOvJMi+1Bh4OGjwCz/3yT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721045063; c=relaxed/simple;
	bh=WJJELrCZywCGq2XG6DNvMCKNa373ebdyNdYSiigbUQY=;
	h=To:Subject:From:Message-Id:Date; b=sDlCwOPFYt+Sclsn1oM0x9hIQOTjSCo2hnDlqAobd0bh+INh4zdl++Wc0/vGdhYSe0aJCbnU5rRHVncpMZYqXSA/9sxiy/Mv6uo9G3TNxe5t+if+ySfdnewUWxbquugKIfQmKESXAvXsbxffwNRlrPhFID9Tpx/Gqknnu9SNGSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeCdAr/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeCdAr/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EADCCC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721045063;
	bh=WJJELrCZywCGq2XG6DNvMCKNa373ebdyNdYSiigbUQY=;
	h=To:Subject:From:Date:From;
	b=eeCdAr/JWWdDaXtnfQIXxsPOO3j06jF4PrWe4keMLAzDF/V7CKjCzWPmlleIZ/75p
	 zTCWTqWiXFBt5c/D9Izxpghcz/YFr5k0yBjYJePxcjRvsCozePRhxPMIKL0QyCtWnJ
	 Spbm+pOJx/Nrcu2eMhsXr2VtL+hOgL+f8v0/8M7fCp4Zi6px2tsDvQaIBkbh3oxwbe
	 1yxvz9TiJVVfbWSVcRfhrRgqlwbLyIzUwj8pi9xyaZZG5+fG8qp69jllCSWli/Stu6
	 dYD0u6aTZAbfKLqENBifap+cj8cjYwI9VgW14bZlVX6pX6wi2Cj5dC6HjTK2vaKIEm
	 hS/JXzxTUmEqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2E0C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104506282.11164.17934546118774463264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 432bbd3fb680aa06a2d16f08d9e24fe2fb6d57973d88d08ab93953ad7961cb32
Date: Mon, 15 Jul 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721045062
