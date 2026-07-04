Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC953AB26D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783168114; cv=none; b=BCB3Z2D8EefF0rUPmaeklZTKyaSLP1maSiV+1adfSqA9YeaUyftuAe+Cy5/sWTsoTezVSPoFUiaKEUWbu4jNhi0/tN+3vxeHQ/9/8Q+YKyv7yJ4/Mld7KGKlIhSK5x8BfvABjSVnr54GzlitrZYuumCkOJvA8PxDWJ9LsB09yAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783168114; c=relaxed/simple;
	bh=lKbE2yoowUSCGswmENgIJDQccH9Tv2ErK4foVycuWBQ=;
	h=To:Subject:From:Message-Id:Date; b=Xz9g4RzrAwmeSA5lb6tc0rZUEDOG290VfHz7R6O2wN05Al/Br//U2Mp9YpiwTO/fdujEcxy+X9wNBiD2ctbevFHGItt2E+Lrc7iFr9PsCMPjmnIty7SIp/RV9CnYv3TWMuVuta+id4b2McR90qHYAhWt1uZVeldiKI5Dj9AK08o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mddLinsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mddLinsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D91C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783168113;
	bh=lKbE2yoowUSCGswmENgIJDQccH9Tv2ErK4foVycuWBQ=;
	h=To:Subject:From:Date:From;
	b=mddLinsIWBY9O2HAm+7v4Q2kGLshTwLlLArVZMLAVdnSQHjr/ivubD0UQl3m8QGvF
	 u9kEDo0mEzEfQqoaIo6sFpgNj55mbXUfpNC8lCt95Q2ue4/PAN+RPfdjWcCk02Cvlt
	 cZEkH65h5SNKzJ5NQKgMmZOHK7co8HkZz6GJu6jIawLRt/j4zkb8jOE/aSWE2rLIVs
	 6DhWD74/UcRmGPpCiTYXYMBA9qtKtnQVEgPgHMjOiVvtqs6ZbyqTlHlo0kWk9aGbsw
	 OU89fp5EDETgZE67XpinR7hcfCNE/0b0YPd30rsGhIbE3FwO/1UHKNDGBDASiEDIi0
	 7RwS0LCAQTbEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0DCC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316811368.457.13522484607526897082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05fa0650e93b8b558116b560c4244021848a4bfa3ed13837d2c680bccd5b014
Date: Sat, 04 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783168113
