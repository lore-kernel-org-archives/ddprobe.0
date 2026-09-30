Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3E0481FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790764234; cv=none; b=RbHjeNAKDDNOaWi5fb7Gyqs/GKSIFoDhuB/jPENgU3Kg8tv4plrXg2aYLZkbb7h04KHAK717XxSHna/rDnv3yEgBQEnfaT55bi9+XTEikvCmneOfJAcT4V/pq5mpd4Di2WE2Urfkwqf9gLMgnagNeioVNwRaklcccyflU/jEg9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790764234; c=relaxed/simple;
	bh=wDy4fSKX58V/CE+jNsDsUX9t4VfpNatH0I8E35WhRlM=;
	h=To:Subject:From:Message-Id:Date; b=iCFTecqPYTb0BJda4XAGjl4Qugkin+9+M456cWgh4S5VLfcvDFMHOCvBLYcK2P6CopWf9UhfP5EAjHA7OR/c2/E+2hcDeoM8rEKclQ22t7MARwkzzX8aXs1eMeCG+5mxxet9WpgNpEJ4PMh8JpQ/omGroH6Emq1XGwt/ev7EYos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMyPdcNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMyPdcNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC06C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790764233;
	bh=wDy4fSKX58V/CE+jNsDsUX9t4VfpNatH0I8E35WhRlM=;
	h=To:Subject:From:Date:From;
	b=iMyPdcNfA+onQNGTF1Wu+kznqwCisGOK792PeY/v8FwvGBpkCUwacYObdYwwBAqFw
	 ONtP+m2CTe7X1b/ogf860pNDGj2D/8iJSCfu6wAz19qIhQHeWahM9CA19TgsLgR7hl
	 jQuv3cgbgHAWeESGSHOu0uhdf8IcvP46au39pVXMb1ej8VcFstQXTILI9MU53bzc1U
	 +zmQjxY6NrZtqUExkEPx8vHEIm+E1G7GJ8Q60lhAsVyC0cz/PFofa/XD5vHWtTulVT
	 bKUbM5n9AnAa3E4fHAliDCW3kT3aWBp/WSQNwx5IBPnC9/uuHaYfFH7wGqGI9EreUj
	 iQCYNjriHJPSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95E5CA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076423368.23638.210526466100550575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d174c21ad5c7482d0363f7afad520ef127813e16ec01532492b8392ac9a99064
Date: Wed, 30 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790764233
