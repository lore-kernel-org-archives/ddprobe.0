Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632FC3CD8B1
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773431694; cv=none; b=e3x36QC4EsY2l/ZzxtDA05XYoziHaXV5zkbINfSHC6FCsFVcbV++PDSu6swNRhWW5C7Efesc7u9fC8Qg/CmF9Vmvt9A2c2mERilRdcKMgPOds70VdSjrEXrOGKDtsRpppWy46XAjRuKnmF60N5TlpeQ0/BaTMCRKgGQfkLqjEfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773431694; c=relaxed/simple;
	bh=GL+nSnzGe4zJnYlt16an6RD6kkjJ6nwBuoECj2/UCS8=;
	h=To:Subject:From:Message-Id:Date; b=sRB1TIUD2mvUoLAaOvft9p+93z6w15jCWqVfilyyCwm+OzMf83Mb2xHMYW5A37FTOYtxg21gEEbJIn7Q5GEjV6gos2F00WencXDX9Al9RbOew+TxYaccb2nb+r2PQGtBDFUwzUVCjJ9aDOxSLWgxMXN0Tyu5xawy8hObIvYa++c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgrIqcPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgrIqcPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85F0C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773431693;
	bh=GL+nSnzGe4zJnYlt16an6RD6kkjJ6nwBuoECj2/UCS8=;
	h=To:Subject:From:Date:From;
	b=jgrIqcPVU+V2KENOrQjAtx46axhX8TBqimSwSFek++cS9aXtDOQjGJ2kaMwtNSHxE
	 GmCXbAuSRqllv7my8geqG0wholV9Xsz1TBsPaYKN6Oxm6jaJ0202C5vnNWkcmXyKRg
	 eAaVB2rSiH6CLwdaijG6v7LKj3gKqLb/HJiw3PelsRR9vOc+RyHNLAq89aT6QAN/Vx
	 j75dK+BiYxZfC0Ho/w74jAq32qA/a78kJ58y7zScVNfXR3jECBtp57XVG7LEVCPaQ/
	 NV5Vl9ZAPwlki72CROhkXduH/BGIRKDhuWWkbFkSERtt8rmL0ffPLpM2UGRJrAg5//
	 ZraZlX/KUmXAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647E107BCE2
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343169358.20995.388440341575364640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccbf87ba77b64453d56987ebd2d01f45cf14a9ec3027a7cbdf8924493287f37
Date: Fri, 13 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773431693
