Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150F5231C90
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728155754; cv=none; b=PXTJJ193HHV3ZVIzk59LjufevpAYhbZQu8JHCZTzKWL/qOS4e5P6S2w3Hr0AfPsDlyBVH8YGO2WZYWar1K2QvWj6LUtwPeZjScYAaTOpi4oNFDBGGktxgwDPldxyWSsZUaY7sFYh+i3rIlOAGNfRBtbB01n6Ty5B8qvQAi/auDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728155754; c=relaxed/simple;
	bh=KXZ1UiQ/SokIdVjhgFRG4eBfjmwxtCzJY/ZpV3zwJ1I=;
	h=To:Subject:From:Message-Id:Date; b=XXTZe9QG/u7/LXfG2kUHgOh2FnMnF2MN+4kzoIUUYLjJtwbhoM0WnyTG8RfTEaL7eVQuAp3KRghB0W1qzauFceFFx+WKf1q/klhq4ItHCrOzXnRKvumk1vj5EFN+YUBxF5moFfyPIzzPEkPhaL02QghIUyymi9lgwrb8mY8Sy+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSU/4jjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSU/4jjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50C7C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728155753;
	bh=KXZ1UiQ/SokIdVjhgFRG4eBfjmwxtCzJY/ZpV3zwJ1I=;
	h=To:Subject:From:Date:From;
	b=XSU/4jjUAEQ8pnOkIXSpGQntf3yns7Mgsq1uq6EFD0CYb/DfnJ7vJwzIW3mccCG67
	 95BsQGMUN7DM3bo8Uc0aJWb7wU1yWfC+AUe2VrZsGh56btIcXJntPbZK848zWgjKSq
	 TnMWkxgf2E/Bb6AfHl+2r26HUSbGL0mrlguIeWTJuVJCs8inL3h4m1yOUHrlJMVKfp
	 G5Wvp+int7s8oaV/RjiIz74KaKartGrSm216OKL9dEBGtXLZrJcVxfVPm+BI51sKBy
	 asJjQZVLUp0LDJ6UgEPHhJ/y5k/GGK7lhpKdo79uNFT2JZKewOGeGnvrfdrLWC9wVC
	 KQ5vToFMLMQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FAECFB42B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815575359.11373.16478505915995403576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53289c0ceddbfd2ee0b14d90abf6c28d1d8e9885fb22a5f4f65ca82e54a1f6ee
Date: Sat, 05 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728155753
