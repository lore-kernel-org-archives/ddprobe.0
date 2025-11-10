Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCB220330
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762742994; cv=none; b=meXuLo2SGzpu3ORn+wsSFh9dz2eyz1T34NMYsybCsDzpD2LHWFMXCtW8dLRlDdk7Qbc3rgZqN83FsAmilGhR4lmnRChbLFmHvmKU2kHX8ThWrGBDojXdveoHta1cYY6bmVlmp/jU9sfvf4ian5yRHAOWELRDs5k4VEoakXB/sbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762742994; c=relaxed/simple;
	bh=h/EuBAIgiJGnILu1ltAOM8wLdB0PR3X3xQwnMW5Irag=;
	h=To:Subject:From:Message-Id:Date; b=GAI+P+0b0i9lJ0cLMpkoslFTVB8d9ou2ZQUFBFuTEsf15JCwvwpubEQoKyyZYOymbvkUhepiF0GvqBfSbZpWIy+Z2OF+DRY24fS87y5UwkB5S5FhhVKUvGE4NsQFaC+m0QNTs/k2YU6nIk5K0gXMgPF7/k6a/xEID28ryq2OcEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLe/m1/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLe/m1/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E97FC113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762742993;
	bh=h/EuBAIgiJGnILu1ltAOM8wLdB0PR3X3xQwnMW5Irag=;
	h=To:Subject:From:Date:From;
	b=dLe/m1/CGokT+BkolZiuSw8YPvnaHzTQYCYMYWcmBR9+1NmIT1sSU+1sHGPYl/Tck
	 unc0emSQpHdAOX3nSUcMuOs9DfjxQBNnF2MDOeih6wuZT6TzY3c429gFiciVdoWooH
	 pG61ry61SOaAP1Lzf47yoXWowqI+ORnUyUvq1KcKfoaAfg/OWwefVlfO6GAsv3PWLZ
	 SYX0D03eR1+/OM/09rGHzQg0B0KtiiaPkVi0/KxUr70xkAG9AWCzunqEeyUgADeDgx
	 DwmwYG2YGDukGdFwlOgJTI+TPD/xpTUzgylQiSaePXBzIvOERr+69nUHSPi09s1WYz
	 okO28Q7jmwVtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE5CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274299358.5410.5209659151373132030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe81b0a4250baca5a936654042b966a5b2ff27c276ab906d7e3e21f4c2ce37ee
Date: Mon, 10 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762742993
