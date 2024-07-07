Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6051957CA6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720374983; cv=none; b=Rg2G4DKS8Krm+M2n2Sp4Jrv7VM7thWXUE72doefICvQgokj0MpWba1iIfD3JsS7UN41RsftvCc28iP8LrVrhGPXBIvF822JwheBE/wAWgicJUFYwpCrJYEqqCh+DfTrm67D0znP7DHAh3i6A1aPP0hVFDm/v+rW4VdsSlNCoLmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720374983; c=relaxed/simple;
	bh=aTULLYU280B7TlIh0iWI1MDU3B9ZtLT/fx9lT/mI0e0=;
	h=To:Subject:From:Message-Id:Date; b=BExTsUI4t2Y0Ga8WpMOMSbCJz00AAFVrlF/ahR3qadaWkL160pLjp7CWLu6timj2RF5JaXfZoD4v0yUrboBbWKP36FzHabpMu92v05tOo/I8lOWxH2rvdOGtA/ju8t1p+LlcD4L4IEzRWktesoorcsPuLGyTXRThtCG2MRvJTAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEl6nc0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEl6nc0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D1EC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720374982;
	bh=aTULLYU280B7TlIh0iWI1MDU3B9ZtLT/fx9lT/mI0e0=;
	h=To:Subject:From:Date:From;
	b=WEl6nc0PqFq9fEsfPcWMvb02uEvBzd35Y4LdJ45IGF6CWJGnsSsNpqa29HCGtjuzz
	 pJPo1EzZFZxFEpLaxnJ9jo/tIFTDobytbLf6e+1yyjOmzYUS0MJzIHMmvscVEyftu6
	 7CXQjbpY5C/1078zv2Z+pfCFPTn5qdjAFzQawzYIFsiBcEUVTCWn5MGBitIeJVOQCx
	 7saUpkaILar6dvnq2PvKeO+psqknlKiUdiHo+GKvESn5VBBG/IsaMRzSO/mPxaPBaR
	 2NlJOYFVnNhepva0B+kKnJe7N1pGzPNR+tkzz4lfSMbKjm9TNR9VeLsbg7kD8wXLDL
	 bZmcIvwuhE0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C225BC3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037498276.28454.11037514198701220524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2f86902d5cff61ecfb152536bc03de6901ca55a4ea906175fe9352b46febb3
Date: Sun, 07 Jul 2024 17:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720374982
