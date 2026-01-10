Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7FD28D8F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768068834; cv=none; b=XPSUIY5ST+IMghmH1Fduyxv7yJMmnNz1wOa+3wFj6oLa/8WZVOqCI12NjcP+AswOzzg4Fil0AQvL8td4rKoZI6SXYzp/hshFvlq56GYJfml82CAbMnR/m8sQF13rVYuYJ+L9IXTyl1tk0yGcCIhV4iLJ6lKEgy/TWuMuLDLi2v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768068834; c=relaxed/simple;
	bh=Eh+JbrHsIBqYciWsCa4RA2KojMvyoPJQ0U82kMDGTPY=;
	h=To:Subject:From:Message-Id:Date; b=JFCP7pUS4Wq7kigMNu2b49ckjtdG/HiCgEOiG0Emrj5IzJphGGe3T385iakSWTvLNhbPfLpu/Q4lXIuyC/OOjY+pdq7ouudiY5NJU0/2zgUitkYJzHfmgwn3xB4Wgixa9Vmn3EHmjyiMu7ktJNt3lkXM8HxR82Ja+D/YPNfslRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/n6Wyso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/n6Wyso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71CCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768068833;
	bh=Eh+JbrHsIBqYciWsCa4RA2KojMvyoPJQ0U82kMDGTPY=;
	h=To:Subject:From:Date:From;
	b=A/n6WysoDXGz8UfEfQb1YD3luruOMtJeSSvTSJB8LqNX08yBOynr79ESDZqQmyaOo
	 LVIVaarAcl2jm3uH5g3PGDoL+PD6d2+zVkmVp+tosXMlN+9/j4oaVTUjLeaggJifQ9
	 NCF/UcEpcGa4KLZiYJTxsrXJy4Tykx87P7ImQXRn5LGW4IZ2DRYngv9j/mWDa06PtK
	 PeMP/SmFsXzgYX036DBrbDNg0vvKwNeUJ5CLUTHb+5jveuy1lN7KNWRPgSuJloyYum
	 fN6BRjB9axYr/szOEk143le4nWcuVfhpJ2IChtcIqd3Wids++OW03s5KOnRq42im7L
	 VQLTGeik0BMAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B9DD232D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806883358.1422.10939837903214463724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bda63cb9a9b71447b16aabbc310d3a8e5dc16ca9a22697782a4b00768a3b52
Date: Sat, 10 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768068833
