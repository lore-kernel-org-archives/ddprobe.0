Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CE226E16C
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761089394; cv=none; b=Blre/nfvRTOzpDjb79BZ6XpPNWIczoCFnKqqyZdbQ03mtMJ053pLny3FyIfoiRjpODUsPTaB8l03ZLVWXeTEEmrnVUzZoF0lX6ClDgWcqTgL1E57CSEJavY3wE4NHm1zkEjU5kJAjiRZ4G5fg1DmdrdXqUDkIpCLqNzhqLrxQJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761089394; c=relaxed/simple;
	bh=nADxJKSk4cf5RH/gv5Rl2J1wEyU3Dhq+DuwlatB66A4=;
	h=To:Subject:From:Message-Id:Date; b=Kiud0tvvZlQyJsrpIzHd6jhY2p00sHaIS1L3TLVAHeSjSGGhqPH7Is/AU5CiCK80aZBKr/Dnrw/jTidJVZYoEtA8peFUn6OWR75Z88RXwR+S0rfmnjJh2L7c1S3zVJ0USdGPKRAuI95NgyBEgRm/p5/MUWGH+hUft3NR58EfHQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb7FA5pJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb7FA5pJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C6DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761089393;
	bh=nADxJKSk4cf5RH/gv5Rl2J1wEyU3Dhq+DuwlatB66A4=;
	h=To:Subject:From:Date:From;
	b=Pb7FA5pJbe4Lql422zwab6IXJGvDmHOPeHtLEGNqyPlsR2ynssAe1Q/Mrs5aHqZdo
	 DsYbhdGgf3rQBnrbY/imo+C5LV3CjuUr1y7VjtDlXJEw0SIxVScIqJnRXUQ8u8cX25
	 /Lgd0FAoUz9Nl+H77h7qU/ukwQwdhJt9T2qwwpbLF3f/WtnamztCmYSgtnsCwhGt96
	 6Oc4avvERIUZi1dvn9YfvJ2My9g6epVJdSIIh22rpjIt90pd7zhhZN8N0TmtAeM8W7
	 2+LyN7do9o6laN9G+KUy9aJAd3/dCP4BG+yy9RgZugc38neZUgV92sZnQCe1J2SxoG
	 FADpA2z9VAzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF9CCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108939358.29673.14630830192000213705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1263cf88e94dc6c8cb47b950eaf66045a371f2b00804ad00b222d23c8e481bb
Date: Tue, 21 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761089393
