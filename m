Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031273191DE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758738594; cv=none; b=Ht45Y2MwCKspznjeaES+v651qNjfFZ333ig9zSU3r4YfDr0SD2Jng5cN24MnQd7HT3Dx1UxAJJu9dnZIS5cwuTWmeGxpZUfU1Th2sn4lC0yehQL/iPbB8IhGTy87Zrw/77RDa0GOBMa6Dn2LEnbhzjgYhR462pJq7HhuEcUTeeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758738594; c=relaxed/simple;
	bh=BXuWqZxFdjtEjm9znJDhykfA5LSY/SEv7CBZ4iYzf60=;
	h=To:Subject:From:Message-Id:Date; b=PKGmf8hUqOHGhC/3NLGcOdAD4qnoDUo0mrnGnzFIZTuCqOiUHTPe6BLF65dP9cLr7El6+40XAKBE8127BGWhNRBJrfEHb0vKBymtXnKKZomeWBRMrEtBaI4iswGZl/W0LquO4B/4xtQaoGXrun/XHbzWqLehdja7ybo8J8h6ky0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iirRoGac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iirRoGac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BACC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758738593;
	bh=BXuWqZxFdjtEjm9znJDhykfA5LSY/SEv7CBZ4iYzf60=;
	h=To:Subject:From:Date:From;
	b=iirRoGacvalbvX+qvBjjUX3c4qrOXGid5BJn618fF9StnYIi9IIYNSVeR3OOp9nzO
	 U4Y7qTVyw89sooEx9sIC/GIvGFe1yZYGrw4tPOsJwmoP5FoHTnBrMmsKf+Dkz61yD2
	 rzCL6UYg+iyi0ULLGrxFUtSkQm26VlHObEp//cgTMVvk6WvQuFVSeNLMplCkRn2IrD
	 IKqmfBhmgMLSROlZVjZ14GKp4DmsDowRaR543Uee55ZCTJYpWgbN6Vl7EauRlYsDu1
	 YkDdtr7+R4XGey2qjuZd4WfsZ8m7STXbExvtkab0l9F0VPtsUItXhYtGnxCxc6VBPz
	 fe0o54G0KbK2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE3CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873859359.15878.18339641487087872472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82210289521868a1173194bf45f234730988a85d890891ce5f6fb35579996ded
Date: Wed, 24 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758738593
