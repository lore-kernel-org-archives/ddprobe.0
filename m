Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3870A17A2F4
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740712134; cv=none; b=TA1wV8rOYUYL8MlH4rdmAceE0pMZIXbQAnnenaH4avJeTl9lqg1mYU2PtutOKEQE0iZTNUbByjkYR93DIqPKqomVeIYrj0VctUqXWUWqBO/rK3bYtsKSrMijtQJohZaLqY60w+OgNr9tF7CPBl52E8ZNymdHqq0gyNZ0hflhbGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740712134; c=relaxed/simple;
	bh=1nH0meS1zZHsyPTObF5OwUCxFRLYF4CxlqS/IjQabMk=;
	h=To:Subject:From:Message-Id:Date; b=OEJnR3VE2JvEZAYMxYKnSeaHQJ7Ohx9PhlHR/WxfAIs4LwsAw6lkifD1PsW/vup3ab0BROOWXXoMHOz+lXGFROQLH09U0yD+n76iu4ZNarD6Cugk1HCRFUeEsdhJj613CPqsdcgm1URdy6WEAEVFEB149MdvhQkP4j/WVZSE9VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEm4+wpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEm4+wpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2A0C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740712133;
	bh=1nH0meS1zZHsyPTObF5OwUCxFRLYF4CxlqS/IjQabMk=;
	h=To:Subject:From:Date:From;
	b=cEm4+wpfbFfaqR8ypQ04vuweI0Mv7ZwXtRZtjIBt2wq4J18qntNUm3z1cRyLV62Jk
	 uUhr646Uek4yx+j2tBxIXVG6UEHCXocA8ZEB7WFctfcUU+ucJGYxfGh4eK2Vnw5qzM
	 a7q4nr7Pq0dJ1YEPFLjTiS/lSTljAGyAYsAz2BJoYfauvSQk2iMeXYCml+5FrTApu4
	 Rll3AOADJFwUspRX3iz/pTX7jngPBejNwED/1le3GqSEJ26LBSFgkxSHQvbfTE0Y8/
	 KsMPitl1yMkZo8jHDAFR43qToE59DI4dQLnKGHuNSodTmGl3MzxRO9U/Ab0lwtN1d2
	 9MBivdPAws/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F2DC19F32
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174071213359.20216.10206866774241540403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d1c3cad42d875c687075b4eae61088db64ccaea11165d666651a40dc6d0644
Date: Fri, 28 Feb 2025 03:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740712133
