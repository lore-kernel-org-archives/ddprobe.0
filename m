Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2BD1A316E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783276714; cv=none; b=o/npln6J1XIXA8BffFZhD+5PTBISsoKG2j/93mYh8YSYd4xbcbGfRca6DFw2TKH549vuXrIpIcs0oqDpHr6SaM2sEsGfErERAeF1JRmp1W+B00xe5iUHeTh6v2k4eIGn5w51sUyEHwLXzqvSLjEHL4JAA6QxPMplc4M8QsFJTNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783276714; c=relaxed/simple;
	bh=iBAtvHdW29VIU1WCU7smlocwlpiCQ2kVwMh60Y8/Vkg=;
	h=To:Subject:From:Message-Id:Date; b=EINhk5JPjukhiw3QR6cRX5mqXSFzahFq4PGAkWFndwb3kABbkSmwOp6Agc+EDp694MPCcgthft40tyK5QBEjTXoqRi8dz7FBfY9SM7F6ZacMcYjVFyNvw6HLNb3Ux02ZRI4KXbp1pBby6RdlDWSEyXW3exJUJaxtmoAWieR98ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJub+Bsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJub+Bsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC415C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783276713;
	bh=iBAtvHdW29VIU1WCU7smlocwlpiCQ2kVwMh60Y8/Vkg=;
	h=To:Subject:From:Date:From;
	b=uJub+BscTf72z9cep9HVOIIhGZvZ+lbQkFix4cXJdiSMH7zObv1iihtVFLU6ez88E
	 /V+LstDQvTK///cYrsiOYmTYQW5bgD8/SdFynR3BSo2rvaawv8+g4IM89B5dIHmuXs
	 WdMrbq/8UaEdcet7IHPbzd7B2h1jqwTy26e9aWHMuU9uFyKcirZIrRI1mR7NggyEFl
	 UjyjU+gAgNYV7rVcwWKDImWG2OFG+SdryyseLVRWeITqqGgDE6IEwTv2azieN1BhcO
	 k2YcaNzAG/zgORfwrdWX4YRigz+bZEIfu9wUnhMKX50fBnCXhkBDtxXvhGpFIcrWFp
	 F34xjjFtIyEfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A839BC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327671368.26335.9858497220786979611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da735532336d50fd47385d5b25e3587f0686f0a3ee0edc8966d7246212ad6378
Date: Sun, 05 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783276713
