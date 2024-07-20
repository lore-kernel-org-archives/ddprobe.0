Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7D115E8C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721466954; cv=none; b=JBYjLs0Nmp5g5tDARJur4TNtXensoxNETSwk48ToakMHhKO9nOnjn4SwEnCQB4iDNP1EqtXM1CWKJMgJtKNPKz0E7d9FLNEEUZO//tphMGVihK4d1LMMVTOif+KlpRFgvQK9Bvd2GB3s4FXlk9ht8oQijBip7tpU3YvQ+MCaBSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721466954; c=relaxed/simple;
	bh=dYkkXtokBcSGliXM+NmFWhH5t8PEFczR6hBoItm5XBM=;
	h=To:Subject:From:Message-Id:Date; b=tNcLyIzoI775WKcoKu4UDxtwbczODtJ5Xu40PLqLlIkLmCUzQh4qdZx1rpGjTOGxW9j0cRrAOeBQv9xJp0WuV7oEJU0gfoganACQptvonDNzeeJtmsATDTzZydOrHILPJPf0UiP8wPCEb36hewplTcXtmhvPdSTAbAlaPkmpfLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXNk3oD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXNk3oD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD68C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721466953;
	bh=dYkkXtokBcSGliXM+NmFWhH5t8PEFczR6hBoItm5XBM=;
	h=To:Subject:From:Date:From;
	b=lXNk3oD8Q18B+8R9+G6VFws8wgovs7tcX5d2R/3uPnoIAehk1mm8OXjZayHxxWABX
	 pfmj8o08Y0viar/fRzIs37A0KK5x41L1dArBPP+jfdPIk2OTs6GQBS/6fz44ED5SlQ
	 5ETYL9ZMN7M8gGAj3m3fS1QsfcuiOeeNzMOGKqn8B6EoTxmuePqTLgV7NzmLQcaNcH
	 g4IgO70uVJKZ4QYRbOjaG8WkI4M8IbtiMyXRZAeVDGHPKGhfQwLuZ5rcLR5ukMmYhq
	 XI/48L0Y2jvpNZaHc2dhZQYpVDN6U3Sx6HFFGkdhpC8mSdENXcON8wrWFUTC5kXA4o
	 dSaRbtHN9HjUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9990FC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146695362.4846.15158787698505851475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f22a84f9d6af249098978b792b0db80eadecd3db08b19770cd9ca29876f7f84
Date: Sat, 20 Jul 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721466953
