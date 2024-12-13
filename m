Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247731E0DB0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734134154; cv=none; b=WhJS5a/6nD7VdhfTdmV50+3pUbBMEEKjw52tD/0n49HTm+Us9qet5hctGK+z0rdhbyPWcizjsdDnvfqlO7M8DKZVoQ2t3SPXGEg0OBAYtol11OuQp9eZLMcvH/CGEJRV1wYKUXskWyXjRQis65NKX0/gHMwewYP2ya04BT8AbJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734134154; c=relaxed/simple;
	bh=SIQWcmM7iAIP7hGrQeLxOFN6HjLz3MWTr6rsQx2xW4Q=;
	h=To:Subject:From:Message-Id:Date; b=p2UcZFq8XlfxSOKcNFezWTJOYGDpEU4u47yeOIFmCXTvJ/5IQ0grm0OhDvdNE4cn0xgUOTULQCuSTqRHsxvUeiFDHyMhb7vDbiXVvoPCGfHw2AHOYhUBk5yFbzwy6dGwqqgrEfGvq1dXR4neBgARxyNAX7oFXzku4he8xEyVxmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNB1KCO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNB1KCO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04C2C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734134153;
	bh=SIQWcmM7iAIP7hGrQeLxOFN6HjLz3MWTr6rsQx2xW4Q=;
	h=To:Subject:From:Date:From;
	b=hNB1KCO2n2UFgbJqtgwSOM1GfZz8xePhtA1Hvmi6Y+1q2LOuzfZ4R7WBQjG8oOaRg
	 CMvzLmCdTQUmS7HASIVMzsGj4ntDzo2kIteNZvfRKIHD6G50ioUyfZfItb3CP/sKqe
	 HL+pXKyN6rd6K5LFll4hwYrlkQjQhYNXvCWyD4H3SbtiK4lMGZe+Vm5GO5rSbAN9Fu
	 vPJujoh5ta85EYXpU1oQ3imab1un6Ade+pStPGFdbe8sQDsJBRX4hynGd1lvc+1j3M
	 XEvnEjotL30D/QhxRCFpc83gi19BHcz2cDwtBNOixvsHKoY974cZTbG6ozW9gmw417
	 h9Tzzdf/YsGtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C740E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413415362.5129.7715416922985910047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba461d83804e197dbf9726c24761c0b7ca2e23d3602c8ed0067ce43f9f369b6
Date: Fri, 13 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734134153
