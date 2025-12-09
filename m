Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB13A285C96
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765296173; cv=none; b=JAmnFUP26qf/YsbWMbLCQ7s/IUK8TVyQcrXQiUErEj70B8T9p6dkBGaQtQzYBvhdlrm82A2KIK4I7egNHvgDxnR9mfMauzoMbOKSdft/JgQ8X70Jn4+grBxlzDiplQrKbhK9nL/wmEjAfuk9IdTcA80SwTcti7kvxMfzGwXU3ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765296173; c=relaxed/simple;
	bh=fxZwcczF1OY6XFn0m5iynpEPX7laMS13NfVra2MKNJc=;
	h=To:Subject:From:Message-Id:Date; b=L4um2L0YpmaCL4UIZjt4TE93VNSoTczxaAOGLWFWcvI32T1pQqEmAZlXTAquvodMrTA+T/Wt/smsMGfZP/GsCfHv+e/tuxHs+dWKrntVX8OfnUarkdfgNGtk8OC0vojtPQdy04nNWRWwWmLdam1OSI96ZBH53X2ejErc/hf81bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URqa3ESk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URqa3ESk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A336FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765296173;
	bh=fxZwcczF1OY6XFn0m5iynpEPX7laMS13NfVra2MKNJc=;
	h=To:Subject:From:Date:From;
	b=URqa3ESkuej1hMSTaNkCr1/1XFBsRrJnfILnQegHVO1A3gV4W7zKLP3NTN8XDV/j2
	 HS6W3ntOs5AqvtGelCgGDOzttD6ZeGntw30IKcDBO209WEV5lStsEDNZWqM0Ly8ISd
	 7dHrWB61vvk5YNruBNH9vmV1ZILIv1R6s/0oQo9N+bx5lHAy6XhpQIiJEbQPoOIxVM
	 Jy8q8vY5RxQV7EMfxlevTHAYFhPT2QqJye55Z8wD7dxWjvHPwNG407D/iv2H6uAxVl
	 vTE5AykoqM/ci420+njaFkYjbL0HkIzvT4rA1AAi9UZtzUyzJ9+5A6r9ifOXYZaRdv
	 ROiP5vTwrgZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B5D3B7FF
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529617359.16715.13229653545723691259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef5533755c3a7a99cda439cfba34b6b2b13d4dd25f9f3daafd402da5d9c1cd8
Date: Tue, 09 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765296173
