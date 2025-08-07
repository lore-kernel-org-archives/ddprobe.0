Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217AB242D72
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754571594; cv=none; b=i+VnHkkZCPNHYcsu9TUzlkECCh/+eR1JEBKEzEqVkAdTafTRj2MU14gMXKDhU9Q3jSlG+AES0l2vjSOOclmFA/83JWOQUZUy8KVTWqNxDuy3S6tS/7X6mv+Vmsn6qZkm/flaK8z0mozm+sfItcmFVCycPJDpmkrD7KQB7/pezpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754571594; c=relaxed/simple;
	bh=fQgumUl3ZIFE4DliufNXSgGSdmOb8Umkahn+h38CdYk=;
	h=To:Subject:From:Message-Id:Date; b=SIIuZyV0qkO/NEjWMYhV//kusBN63Kk039CcUBaLVJbsDKKNySv4moASE8PL3S0U3fDlcuR0vS/QKQd2p+SrZ+w/bsehl70aP1MmSzzzg4r+kJSn/u48TGtm15ML35qgHAo6bezvDuLfzUnxkH9J2I054Oe4M0VV/Xh2Jm5hNUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9o7w3dZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9o7w3dZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A28C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754571593;
	bh=fQgumUl3ZIFE4DliufNXSgGSdmOb8Umkahn+h38CdYk=;
	h=To:Subject:From:Date:From;
	b=a9o7w3dZuIhQ7ydehSeRXYDffHr6qg81MOaaKYv17khD99eVVq/cngc6V76t4MMJz
	 0RzZRSU5V/oXub8RDkZRmmgyjQ2NKfRqm4CdUY1w9Gcxy27Dc1ZKc5MAbXEDcYbhQD
	 JDZTTac4A8Q2pNvKMIfZs56kd+K4aCmU+iWKLwvgeVSD/Z0KuaikDFevhNuajE3MNM
	 Au8GiSWeP7E6TnIcHf1rJ+tZhzs8ziyixBc7xxdK+8Egh+1iYZJ90HTEs6EXncNc7Q
	 Dpeq7ZizFDIK04N5peUUyVo5FWkZE0SEIxyDY4IVtdzgHdywNR16vB0JQZoO8gdiYc
	 9c0mreDammizg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91504C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457159358.24277.7467963612018625637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458f82d142f3a248d2e70e57c8f1b290af2f34cb09028b4a0d9e320c5b4aa7dc
Date: Thu, 07 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754571593
