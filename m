Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FE72746A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736472954; cv=none; b=SpzHKe6pBtmGNdylYUDB/CooK59NQwPBwpT4AOUrlV0ymueGSk0mP9hY7eaXi7gIKxedrncOoMK/7yOQ57QyT2g2bM1QsZNKZ7RLRSejEWbcgWgaFcCYyfXYv78uGSlg8lq2nwEKJUzdnDkOkLaHxawp2PpKmmy1Ub9YUXbabiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736472954; c=relaxed/simple;
	bh=o81iv9onTbtUnVv/bAmhWl4bie3hMUWbt82urEGhpQo=;
	h=To:Subject:From:Message-Id:Date; b=g+muP96+IYAP5acicN7bxOcN7p4uD1dP9Rh6PRlp0aZ7Xurq3/4UDKNu31bRNhsIjYse9aMSSNPKGmqRlfaP+2aAD8BsHrhIA74MfDbYPZqJgycGPggnnfae3lL/On9lv+srp3v6YNnryia34hazzI4lD/5C/8Z+GzQBtez8aXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll6Phxzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll6Phxzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240FC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736472953;
	bh=o81iv9onTbtUnVv/bAmhWl4bie3hMUWbt82urEGhpQo=;
	h=To:Subject:From:Date:From;
	b=Ll6Phxzoe9ILONsGIH3Ls1lm0zjJMcbyvbsuLhy3pe/ivUyN/WUwdpjQdCPVfgxdQ
	 +KS5GjeT0cAmbolQ62arw3CaBHpy/pIA/YT3d+JR4NJPkp1tmk3bZwh88PsCsDs7+5
	 pWWc3LRCrVrZf4dmAGwYcRB5pGXg/yaXXydp86oUPqxepeF6bEwXjzuyfgpLpgIRCH
	 zekEoVrQBHbTYYb0vENDU8BhDwERY2OG5qWfRX1csrjtPNg8Y3jdRHdL4BCVBl5cpQ
	 b8ormVIIRfttfj+GWH25SQUvGOrw2aVgKH1uJnWS1aHZqQGpRrzTklYcV1o2Akl/uI
	 pA1NbpFy6sOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071CE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647295358.12951.13912136953645912978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c88a151dc80a0bc38f1460631142684945c354d6d0d198caa864ed603c4e20c
Date: Fri, 10 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736472953
