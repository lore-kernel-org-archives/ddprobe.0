Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC1A199949
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733777754; cv=none; b=HqK9hFmkamfjcFMOVG1WhcKEsGHYrZUNTqC9QtnhZm9X5fArvJNIaRNm7hKNvgii+tjH2lHRZZzWDUP1xFAt2C3G8QDc+38U6h/mvVyCBaVpPQAT94Ng/FNinsZRPoHGQTGw3brqUzypu++vPseZG4ahSM4dQybzh/fc0A/hT1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733777754; c=relaxed/simple;
	bh=zUHMo//sJmhqFQbB33o9as6m9indEVPejVmSdFPwI0o=;
	h=To:Subject:From:Message-Id:Date; b=ZBIY9naR9I5Z+SYKRT0BwKp2+ZGCaeBWQGZmWE2RHQHUBDBA748SnG43IAT+D35GnNgGQffGBmJ316LmLNHhU/9sgkpM5UXgRGbIrNud3pXDbEXMx9vwb8uzI8JUc+bvgWaIF08ay1v6dyX10rqUlrD2g6RCnFiZMvvbn8f1CiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+dj2hxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+dj2hxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79ECC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733777753;
	bh=zUHMo//sJmhqFQbB33o9as6m9indEVPejVmSdFPwI0o=;
	h=To:Subject:From:Date:From;
	b=n+dj2hxx1rwiiBJm/SWAsnGSo0sFKUB9MhUPrcJOIrJJ+ANBWRnIVrqQRyuZyxceJ
	 6KG2nnsJ3aOu61dd8S5Dw5PC9nMrT9YMP1JgkZu/zrXhUGIYohT/qrNl6Qlxg3GDxw
	 Txa5EJSLIzk/VKeZdN4G8jVf4ugIUCcNmEvXqpj8tx8/r4eEuTxiUJSqeQnsms1lK4
	 WprLF2mMCP+7dkJ/IBQwO0uFBBFC2Tn45yEU22IJwyu2Mu99LXUCwEXwixb/6DP75D
	 O52sr+wLT8ewVIFS0okGFmwxnDObrZ2hpD+Fhq4Ht6hvGhoomnKdmeBaVfAQZUNl2k
	 aovyoatT/bgRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91937E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173377775358.28109.16578194996804279909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b500995b6038616d7dcf402d9183c45034ffdd60c0e1d9cce4738744514351
Date: Mon, 09 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733777753
