Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FA1288D6
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746848995; cv=none; b=REzI0F7HRoBPp0BvIAR7FWLMJPMsdTWe4v3kEj/25BVABtMEm9o49N555VrJMXyym0J2B+au8EFVzwnq4PxEyXfDU94Rlb8misVJXqTjIsZCE4wLiE2VbXTQqv5Z9ssQcpdCvj77bbD62jsZFiFuU1iKtaFH49oI9OMEZu7vZyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746848995; c=relaxed/simple;
	bh=ebXatyuvVebsBpPzjkx+CENHd2IGyF2gnx6YEngn/0A=;
	h=To:Subject:From:Message-Id:Date; b=HgVWMY7iwLd4nE5oLPApXg/AhyRd875QXbqq39zUIJLrOODt6tEma3FuEtJyjTDjigzDgTjjt3EDS1wuWF/PjcGA4Pw5OPvL9pm0rGtrVEQDIFMGWUU3slGa8v5qfW3BOqXF1DaEoij0Q16djbgZ529CH4QYy3YuGTd41WKV/pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Omh6daBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Omh6daBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC555C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746848993;
	bh=ebXatyuvVebsBpPzjkx+CENHd2IGyF2gnx6YEngn/0A=;
	h=To:Subject:From:Date:From;
	b=Omh6daBYZzixM3ka3dY81xJyCogXx8/tm8+P32oEtrXM8GTs9WpmJldonihsGVY4J
	 yAB1NHFVdeoHEcwknUGfDdzz0ur+cJKwefmabmyhIRBKHomCq1WNui1q1uGlVRF3n9
	 QJz2wYfuU1sD+t7AIbTAiyGPC/ezFJhoTdUaurFSypdto2haPTNCT7hlakIUY9/otj
	 VxhF6KsDMABSCv02+VW3U+lf6EBQk8fz+ZpJdSRdS3DlD4NeFzuDbj4sIU6ejXeUkw
	 1nrB2ab6IUEHUIEirPwCiRGrRpRaS5vFRv8C35W0Uhrl211Mn18MzGnPdiakdkOTjt
	 3RRrBmh9J/7JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91137C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684899357.3550.2601070732892490177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d49680e4c08fce8674f019e556ae6ea4ebfbe897c4330fb68ed7bbe5fefd504
Date: Sat, 10 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746848993
