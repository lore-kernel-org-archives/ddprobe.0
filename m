Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9CD313E36
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758562194; cv=none; b=kAFycflbPQACvb2u8M70HCGnB6yghqJubFNjiOA6MyiGGM1MosFe0wksEIFYHGWvVm2vykGbXSeZ+LdGklskiG5Ig1Ql1n6PSJeCuEbTILqBEroQmZxIKLhv/A2KcHe/Cj6HBF4o0kgi35L2/YHPGw8Dkl1vosOOv/k2F08tJLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758562194; c=relaxed/simple;
	bh=PaL+JvnP+eeY1iqOCSLJP8fRYG2i12Yu/BmIXCKXrhM=;
	h=To:Subject:From:Message-Id:Date; b=Zz1n3NNcPkOepcZspWxXz7aoKJC5qVzYciBRiVdYWVkya6fDCNwS3ZvOZNMD9tIrz1T3/ZaWhUdymGnEcjwtGaj2y1K0vVXSGiNCrDr+/7Nhy4y5IgQn2vNpI5tQruLumeMTk1II+tOFAMZq83tt1glzEOCODAB3CLbIwawollU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLP9PGMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLP9PGMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF1DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758562193;
	bh=PaL+JvnP+eeY1iqOCSLJP8fRYG2i12Yu/BmIXCKXrhM=;
	h=To:Subject:From:Date:From;
	b=WLP9PGMmLB8c9/NLSFhw/OnVb6M5gAn9OBKPCVregmt4JeJDHHY8irsIP1ajGsasq
	 fbXZ5tjhJej5OsOquyj8VpTE4B/8GC/6GCEWSSzhiz5t4XIPIjQlcL/mWAgTaapwOg
	 Ld9z0RuJtOZxZ5oazsl+G0D2mepHayQ8A3D1wdnjxBxn/uqB3mExZL2ak68MWejoUU
	 q+Zz0L80lBWolzj+xYK2jLXUgb9065do+Nxi9m6WFw4xNn5wO1Hw6NNCwUO1q43hGQ
	 Rp5TsCa163gO2wLYwQvrTjsIDOX+u0ra3A1jRykt89fioFRc/pxebo0YZFz7Lvo1BK
	 g8nAGIaA88brQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A43DCAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856219361.27758.323183368929462209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42732415e4f4094e91b30bd7882e147c41fe510de8abf0dd5a2c9404dca1fda1
Date: Mon, 22 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758562193
