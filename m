Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D64F145B27
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786408234; cv=none; b=Y8nCZbq87/SoHLDxgML/BsOEu2v3GsrDumGSNtIbuqVmi1CYplgFX5ew7njN3ZiePBYsmRuqglcatmxWG0ovGyZEpPg2Hv1m2E6qzPTVITTYy9KjYey4AI+cxoF3UX967ujnhMeNTBEY0p3oZ2bStcOyt6x86xbNyDmToE3D3nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786408234; c=relaxed/simple;
	bh=lZ0zHVErsGEre2imOZ6cBqv3hfiSu/sbLSbPCYkFGno=;
	h=To:Subject:From:Message-Id:Date; b=Qik3+a4rJPdkdHXyZiHNFCxihXmkNk0NqEUtoFw5b8WMntUO5KTOE1W3BD9qRqOgHbsZjPARdt4cz7LEFMofq4bRHCCMxucD1IqKERjw0gNMjFTKDoZJN4FcuCuFr7A71qbBaJyHOjBHT5ORUmv92bCfskdRMC2vwEWy97+riXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZDsFAek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZDsFAek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13A9C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786408233;
	bh=lZ0zHVErsGEre2imOZ6cBqv3hfiSu/sbLSbPCYkFGno=;
	h=To:Subject:From:Date:From;
	b=ZZDsFAekiaFsnP8PGTdOAj3W5UYidKXoLeMdIP47b+2B0HP5/6iLAeluIwU8qFJYV
	 JT52y/xAYzgoIc/YlJqpCGpQyWxyPgzHg2h05jZX++u4Utq3mS1bOG1NNxJQAonDnd
	 KTr+Fl755BYkary3bO0CL5qKLNGhf75/PWUBJhuNnNg6OC0h19jdP/GCrS/n1LaWwp
	 YDr1aYnTg35EmSCC+fRud9F6ueIfdu2UAsCbdMaCppCYPfLZUHE1qPBqPj1CJ3ISry
	 O4CFdyvQUuYWoUO2rEJdeJ1oKcuc6llsqOPnuqyYPejdniJmsTHmXO8jmpneidLecv
	 WMQFWB0jr5XiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8CCC5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640823368.17677.4416903557361612595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e25000b348761922b79bba8b4642e4b01be4db25697bcc3d09e7568bcf66383
Date: Tue, 11 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786408233
