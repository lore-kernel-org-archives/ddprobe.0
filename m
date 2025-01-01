Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319B62F29
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735702554; cv=none; b=PrxEKE1I2GBOzcjYzXr9VS6N8GuODfhw76nDvKsCMPCPIcciQoKuhEt1etep/305bplE1JjV3GUFVrjqqIt2Y4/IDtglJjXOX7SAvbLQR6AMmubzIg55Bwn9SmXYUVnnPJzd3g41g/m0Ycpv2k63n4a+aqMF5x/XOMpwQZ3caf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735702554; c=relaxed/simple;
	bh=YB7myOyUWR/qoRIQAu/QRAkDSpjKJXRFb4/6WYCEsnI=;
	h=To:Subject:From:Message-Id:Date; b=rNs7PhUCnE/+FS8BiRuSk9dW/juuJ9dlzu8pJ5IIKrhbFaH0IADyXmE6E2ZOI0pXnzf9ZuF1XAE495g9Ixk4c50kRrlTvZaUWNVlNb6lw32s134WHKT1rxH42xcj4aSFx6BBWq7MNV+Cp6Ld87oBFaZwcJji6GS4zfeTe4TvYFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1Pdyr64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1Pdyr64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A36C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735702553;
	bh=YB7myOyUWR/qoRIQAu/QRAkDSpjKJXRFb4/6WYCEsnI=;
	h=To:Subject:From:Date:From;
	b=A1Pdyr64hQveS13BXOklEaHLjVO9CI0eijg90OETrShh3JR2jJWtEu3hDlNFww9R4
	 DzSEuiZsw6kuRQy8ggiNax7lMRtmRIe1kbCC+CMfsH7ki0odMT86NI4spBvcP7VldC
	 xqpiyRsgdonszEw2NTY5ulOcFscCm7pP8tOvP9ISaMrJME0JYzbrMGyLn9WGEvy2MD
	 Qkei8N/uwc08dTsbAJtJFduX7xBs+MdxtHahmbX624No6DR2sAMPKm6ATulVMZBwYL
	 ij+I7ocJ3u7o+dilzLugUoJrvY/IPc3cEiSrbpmraROm+IgNOTh06stx4jZYBZSdLy
	 s/0KxcVsEIzSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BD8E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570255358.32355.9281889751494680671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2be68435301f83ec6a11e4e163b21d01ea499bedea764309d1d79d5877c6cf
Date: Wed, 01 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735702553
