Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C09A33893D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780677874; cv=none; b=dVxFV/X+v+DgHrR9KWpxIJQpbZ0Q8+MfmFgZdgrFSz6+MICjdVHxyEjs60aAYNUagvz4SH14h1GtZiiEi36z8028Zerhw2E0PoykvZob+YZYx1IE8fGVSxt58qbUYKq+1pWDMsEgj1bENpcJbPaDbCH7tsa3GIqBXI1FGpzVEL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780677874; c=relaxed/simple;
	bh=Xn1xaZT/3A6269mTExLDMh1VIQ82VhGNQa2DjddIsHg=;
	h=To:Subject:From:Message-Id:Date; b=rnKz/sl54FRH1Irne3ZDkwSrh+wCAmVKNl4r9UNw0+L9tqmlfH1ktxyq3DrWSPyGSqbVOZWFHiISzApQGBEqs1F6V1nZvV6o4jZxix2Fs/8StrDhP2pI9QEh7wmZEBqJBT2wkIwNSeJ6mHG2syfwE8Ua0yLrmQ68x/vYToLuy3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Llq/983z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Llq/983z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5AAC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780677873;
	bh=Xn1xaZT/3A6269mTExLDMh1VIQ82VhGNQa2DjddIsHg=;
	h=To:Subject:From:Date:From;
	b=Llq/983z3Ebe+vLeQl9bQ+mzflSSOmDPeM9ZNtn5r3SvApLoy7DU3l0UCpdA58js5
	 HcLbpjaZqlpe2X6XCdGyUixrPcawe+NinbT8hyjn0YfUUy6EMjMr0UPzMbmogNMjZc
	 C5baiMAbsDjkp1KKI3SwtkXXoW+ro1/MP7qgfCRPoPNE/E/+0ytRo6asQRc0qwOL7a
	 khWbCu3jMapKWdTGrOdL5SgFuAJgRRCD/eWxxx+4dp0nIUQZNPUucWjRjoU9CF+jeh
	 5uBoESTL3U4jwOR8vf+wPV1Y5kJthei/ScgauleoI7+hcno/75CydMu4ODjnklZuT1
	 v80cauJLssPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B36CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067787372.5764.3946395300395121758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ee8ab42178660624be6258327c9283ed753e353247a196f500742ef8d19753
Date: Fri, 05 Jun 2026 16:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780677873
