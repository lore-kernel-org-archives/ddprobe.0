Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A52E19F43A
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758954594; cv=none; b=GzJ+deu72kSd++LfzmOs90KP1YgVgVA0lAOYwRey5ZGH/mVF+diF9pxv30/L/AbRr0InkSd1kwEJyl/z37O24grKFPTDjEhmNe80t1t3awg4yWLZUTTUD2ao+eEHz7KrWnfgGUxJVWufSdw1/sYDooKv84fJ04xYvBPf5XQM78I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758954594; c=relaxed/simple;
	bh=oGXzBeG4/jamrkUBXy5a2l6qNw9SaZ1UaRKmmCQwCxQ=;
	h=To:Subject:From:Message-Id:Date; b=nZY0ObCx6i//ZrHMBJS62sQKquhZcBFg6PANQ+bzVoTyACLDBpPGouPCHpTAsKEgShDpIUvSYXvR8ChtWISx3HgfANNPjlvcRkyn5RpPcbrNH3z85jKsxeBGoNGXbBiptGLEbHnCbWpGYKvU/EeY4tzkjpW2sWDcTDhEz8VuZds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKbZsTJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKbZsTJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21CAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758954593;
	bh=oGXzBeG4/jamrkUBXy5a2l6qNw9SaZ1UaRKmmCQwCxQ=;
	h=To:Subject:From:Date:From;
	b=YKbZsTJ2QvH0DKO0ULR/2HeuBJMbo/JmsXnOfnFZMsk50FmovCrFYnHRBRokYg11o
	 uodh2sEXkqp9hsWz1mupeWcDbanEFAex5Qm18h3Nsn79VcnnvO3pVdCXaSeU6LK9He
	 N/bN1Hfh4RKt/xj5aQkibPi+GLllyDLDZr4l+LOGBMJcy38wSSplcBnvd11MH8yqWP
	 AzkK+Cv2XcUyB1qHlaAQdwH7MhMZ9sfOqcM40Tu279YCnQM6Ef8zydYKPqSKtD1ZS3
	 yJZBk7Wn+xUQDAytG2crj6iUYl6ottIP73e4zD3P/mSHpo20MBiA3Vv/w4YUwXevgT
	 337g9TGukceBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A29CAC5BF
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895459358.10034.5470739249879967111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e45e1b195725f6ba518bf0cc6e0dd3b1896a7dea656d4e4d0cc6f20040b9ca
Date: Sat, 27 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758954593
