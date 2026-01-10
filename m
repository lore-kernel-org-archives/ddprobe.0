Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106CD28134C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768076034; cv=none; b=RzhYbtu17ueIiMIx/EXH3finCtPkI/oayacAju0lzwz367hWIr2QWSsJ+wJzB3yKg3+EvIyeNjLFjIZFv++0QMnz3fV34C7/Jttle1ECHabK1OEojM561H8GeNlyXANJ31dwrfoWxOV941MoyPX0eg4i27pT5QJ+k9R96lAKhFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768076034; c=relaxed/simple;
	bh=iqw1DUi/DSv0+NnUHZBPMcHKu6CR+X0xiXiPpaSB10c=;
	h=To:Subject:From:Message-Id:Date; b=TTLV70swUqfROOaJdvjRJ0FBYRqS8J5UwvTiCLjEomAuhJzO4CKTvcU92e6ndfjat+EW89SbDbn5M+CN5bR3bo+2oaJMjUbTBEY2acgWzyjcL2+pbekwRrZRxIkVoD+wIi4ZLBvNivN1FwN2eywWkz8ixjDVL+X/lX2jI7Zw1vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3uTemAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3uTemAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC9EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768076033;
	bh=iqw1DUi/DSv0+NnUHZBPMcHKu6CR+X0xiXiPpaSB10c=;
	h=To:Subject:From:Date:From;
	b=O3uTemAzM7emvapE7Qq8tzO1+ftUHahRvGbUx1hL6RT//cQ+XdgRgeiuRxWpKqyMO
	 EhZ72SWILCdf41krmhsC/pdSp2ECH4SeRhbqs7+CJT6h36XrNH0i+c5iMrS/Q3XRid
	 gpGdGwYaQwGM/PoGCCshMpjxVD7diu2bnsKn0HheWz6D70dazJgqRqZaYbPZlbkLVx
	 yaxB9q8+7/s2us3KJD4AVP+VfiSrerkvp2AMHtz7nbCrL6n+UCmxB+SJPwY/1KOymo
	 Nl/nPIiQ55szcXsyAywX7y3yXmncmq4nKQO2uJKt1Hfh1WxWTNDqXoNoqaOd2NuB+X
	 1WUDutFAU+/kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF4ED25020
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807603358.11158.1566987398103985964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a78ff7254bba2ae6ff3d2f9a810a448c02a429fb69814026e761b62b804cecb
Date: Sat, 10 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768076033
