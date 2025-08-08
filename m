Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AE2256C73
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754650795; cv=none; b=kND+JE3+X83UxHfhdcE8FRFF2tWT+OMncLml/Aersb+Iz5ddMjpNhoc7mqPdnixIUvcvVN8yYiiQhQ+GhzsYXvfzaEMdDPm+uFvriINlu6Ir4aqv6/YJFwOzBU8lMICGrqrlh455q540BzFGw0vJ2iDdqlN/iFM4Iw3ZwESzbgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754650795; c=relaxed/simple;
	bh=ZWB7zcppFShjRTMOAwdwu6ANXSTzEOXF35RWaRZUc+E=;
	h=To:Subject:From:Message-Id:Date; b=pznXhfNfFP/vJ5HvVV8vNVFiqdAIIaOgYBHEdX3wEZUbH4uArmsZBX2rIPTitUGdWtAvkttKNIuHtnWruG2Ag6aSgd5nKM/AoYlzPV1sPQm9ub+vZNPsIFLAJ5p7xiADlVvjNgMKp40yQJMZiiRicKl8srRcXVVV8RaLAhQp0HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OC1GjiLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OC1GjiLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEF7C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754650793;
	bh=ZWB7zcppFShjRTMOAwdwu6ANXSTzEOXF35RWaRZUc+E=;
	h=To:Subject:From:Date:From;
	b=OC1GjiLFIMGQogsVOPPjFUO8vfIDn0aSryZ6It5u2r83otsT4oKapZWN8RUcMeYW0
	 BDGh+6gUBkU4NDTHkk9+kFWYP6OsQCDW7ugCTLyxmmdVsO9VvZYAdZnTsuZjKmPgoI
	 Tug6XGHM/ISjTG89AZOVZnwLQMNuPOF2Dp48PMOxhZ7OjKJ0fRD9oT3y26cr9Uw/Jk
	 paJcE34v2gSWRlFy0A9+YjKCoXfg5ERf+0VTeHB/rN4P9OLvoVDNF5BVu2151En1/R
	 hXQWvbl/jpJ3S9YdKlaZI/jGPs2PKd07rf3HIHXniK6n5FHdc1Eg6hA9r10HEZ5Zw8
	 syeTMJaVmo+mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F1C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465079357.13863.13623412756028941946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294a45c06debb5b77d708738d01374a5c374efeefaa8713efcda8e83d862fcd7
Date: Fri, 08 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754650793
