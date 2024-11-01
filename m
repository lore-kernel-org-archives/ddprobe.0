Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12631487A7
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730466354; cv=none; b=jP/KjcpRtCGzFGa+EEasqaU0fNpE6KtMPaVvdPlw6sm1OY35D3NWZXv421qUgIsXyvY514Dmp8B3s1mHrLnDPN1Qwl3AU2D7t5ACWij0QOa1OKmSmRP0oGCKJ1kllG6dnteIP+kEbTchw/MZW8ADGosVQ+/H6YqbWQwh6bFve+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730466354; c=relaxed/simple;
	bh=45H0hD6+7ns93ys5D8VGOig9NRGQzIQhUC8Slfg9YH0=;
	h=To:Subject:From:Message-Id:Date; b=Z/BbX2cYDT1xbaeisea+81xUkuihuH16Ul6rRijvjOnjeX48d3NFrmXP+wOPDSw2/ySXSxcXn96gRaEyn6Q0zP1iabL6ZK5NxitXbu7ibZeqFKie90vJIPUUS87fTc+SygU+IwX83K3es6MexrVrdsfSfsOL2ggfogNGm2KJUHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNUrSgss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNUrSgss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6298C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730466353;
	bh=45H0hD6+7ns93ys5D8VGOig9NRGQzIQhUC8Slfg9YH0=;
	h=To:Subject:From:Date:From;
	b=RNUrSgsseHIAmguuqrMeA9FdQ5TwNABbaq8RV3o7ZnOVtrJ+Z0w0uL7BiVJcmNa3X
	 /7nmbcXs1Ftc10Gf1hpeaNOd0w3PtF8aRVKnqNviaEt/y2eKUvY7jFomDvZFFwH9dd
	 VUN8dC8+WiYF9L4sYhhrtYxAUMG0CLJNW2mrezCoVpaLypuMg389BWR40axjqiPETw
	 mkfFJ9ekf6hpp1K83O+rI77Q/Clh0hEkpvKhd7yYmqFXY0P5Xm0cgJru1Ws/FMp08c
	 0sJb5/Tb1D5MuXlAxOKROmazfv8mv10ZmFNntSpaYnBixrbeEsGt7Tj23Vva1jcs11
	 EYXn3eljic5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C50E6B277
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173046635359.10776.12985428547421359122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1ee1f5d35a357e9be15f0990c4f0a3dbddd20f1bae887123cca8d6ef5afec7
Date: Fri, 01 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730466353
