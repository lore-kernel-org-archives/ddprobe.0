Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A1779EA
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758683994; cv=none; b=Paxv1R53vv8qWhibOX4qEbH+sYWMLx4mAF71XteMTt2E4PuQNKB+2vMyFmfWvx6rS3eGwWef3QFur+zVeAFtmSs2qgjwsaaAaBHmY69DYHLZjbR4b3aCzWKDX/hsO29H9BMCTTGDmb4zGO6MD/1xJj38iNHx1abEAeA8RoQOcDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758683994; c=relaxed/simple;
	bh=rlkcuK0GP45REPnqo9lJtAgJ4he+JaX/8AQ1r7o/sqE=;
	h=To:Subject:From:Message-Id:Date; b=kBQAO3V/8AbsnpHvWoMYhrLni0IYTS5VTBUDzLHdEPpK3P9DmykffDOCYehUgjEeiv18rrgaihl3nKJ5s5juPNYNFWYEeGwMWarHEwM5kdY/tcJHJ/YxLCE5iCKrMkLRDj9NvZRVptfs1/CRkui65cr8F+jZhRgaDWeuJcbdGlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=te9svkGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="te9svkGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42CCC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758683993;
	bh=rlkcuK0GP45REPnqo9lJtAgJ4he+JaX/8AQ1r7o/sqE=;
	h=To:Subject:From:Date:From;
	b=te9svkGLd8NaLBo1a4UVtDfGrB7s9LoucxEO+0kdNK/YP/u2GEgZsH/LYaVkBNKsX
	 BV8KYBZJ6/iDwppGHRDfPwI2B1M6XPqJ37w2Go6aZPQbB2k+8CCNlR8SHkTQFcaMZn
	 NUErPDWLjPaFFdg1yeCXTmW8IYMKQSRpDB59JFCtwEI0u/2iG4YuYeIXZXOoM6AGzp
	 F3MxETTVjKb4AC/qrXhuDmTlFYHHPspPj69xecd7TtvgDNHhanht4RSa8nXK56yaL5
	 NXK+lvCGRIp0ZUvqqXe64dAl9F/e2F7s337Zo1S/RYFYP9Pj3MPKzJP2YSVYwY6Nm6
	 uWOyVysPQTZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA3CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868399358.23019.12019742650274289495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1ec72782ef8120a0682bd7c9fda0628ae5210dc8b7e5c7b04120fee59c4b82
Date: Wed, 24 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758683993
