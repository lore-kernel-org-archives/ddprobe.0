Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A72128689F
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758022194; cv=none; b=uXKMILo37wHBi12iAUM9vxLSfRaDplSKb5zZcodY98riyU53SrYU0yTAUWmuW08UpHC6cBCYC4DcbaEMCmcb/sBcUiEDGrkWJ9TXYAP4dJKsZjccY1Jp+BQUSIBvBs7lO2UDYtLSxyv69RoVEy8BgK1MQY2ouyrqAz+kzvLdXRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758022194; c=relaxed/simple;
	bh=XDdNbQOdDk44+1cSN/XoSnezbMEZ9RzYWgUDO/Gvlj8=;
	h=To:Subject:From:Message-Id:Date; b=rDb0uuFCSIzbgWFYTc6ScWQsImqje+nG0b0ybakRe1itooZqjSVaLlM28SFz5vDJu7Y/GbCGwMny9doEUySc3X+RA5GUTNcvy3Kx68w5BirI6L40YNVWrHhUJ915HZ/4fWn9+tpRFbiIjJAhUSUQCH4pT33y6OcEcySvbLE/MC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2YSVtwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2YSVtwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758022193;
	bh=XDdNbQOdDk44+1cSN/XoSnezbMEZ9RzYWgUDO/Gvlj8=;
	h=To:Subject:From:Date:From;
	b=L2YSVtwEY0+4v5bIm8pwa5vxnxa9641Yt6uJl2x5F5Ksm4pdfl0Ixvsv2DUdq61rJ
	 pq/r/wV8XtomaS7sqOrMAeYSJ5596h/4k/98tfYTtWWLwAWG/AVyBTSv4y1l/Yq5mN
	 LextqoRGbuONYscEistQLRs9MqWthfx2itkycP/viywSP4MHnWjBRSCqWkiBJVTY4h
	 VDVqRF8jv7m8ad7k5S8bgOtdYZJDEsIapU2E2AeEhpwQ+5HN36m67Oxce39jlLNVId
	 vJkjWf6trgDy1plwPjreXG0WmHn2J4A3WfsJaqbpQDLHjfjDmUb0SVxHdHaSOMENsD
	 h21V6brZZpzpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91047CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802219358.17926.15185186049386848595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b490d6df0a901a37d4950e8dc4eadf014083ee7de7802731d521544ed3594d
Date: Tue, 16 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758022193
