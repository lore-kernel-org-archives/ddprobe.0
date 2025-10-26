Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FA82F7AA0
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761520194; cv=none; b=hvzI6QNhrn7/xfFuaNoF2q2xVs+kKjGPndHz4yAJIj4qMu5NaR6YjI2hPIHlyyRG9+gvQJMRVcHVz7VaRdLZtjB4yOC3Ph6hGJYAWfuzFsOasrO+MIDipoVUTBWym/cbwe7uwPRNdukkGzIqCFx0PVOohJkEVEBAPGADI9UQAl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761520194; c=relaxed/simple;
	bh=AyHMvbGD/HffgAgbL2VNOKv46sarvlcdF0dUMKKCcSE=;
	h=To:Subject:From:Message-Id:Date; b=XtsIkpZKj2W9pfGKdG4tStJldci+mKA9i43x6JVBlpEVrZD4i57oTAa45VWiLOIZld8/L5/fbwyvKgPGKIs4ezW6cl5G9/mqMEasXhCJubUU1UsSA9EpmD7Jx+fKejR+AERgLoCT4blTxyn51UqVflfKvASOA+OuI9guX9HkfyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7XQ1A87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7XQ1A87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD089C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761520193;
	bh=AyHMvbGD/HffgAgbL2VNOKv46sarvlcdF0dUMKKCcSE=;
	h=To:Subject:From:Date:From;
	b=T7XQ1A8765FsT3Sarg2kncDWH7Kgvispq38WPmZCFXFNtOVFW6oo6NVFWD9x48HR2
	 3wO4A+LYKmj+zHScnVPcn0JqB3biTsduVpkECwC6wk4VlHMX6bavfhW/0wHNvXqggy
	 qVEQU6kRTK24PjmkQnVup+LTmAIOYuGrTtNJlWIEgO6EFhZ0R98P5pEANTK7CrYr/6
	 22dIZDpEZHLFyFo8YDDBPg/vs6Csics38t/BO7/VhqCUmJRO/ztFIrqbIE5Pa1uWq5
	 A4gKlfvDVGQKvgBgEJO42rxQgRvMt3hCrMBDEFyrkDmx0KvJT+MDR+hpm+UqgJtD6i
	 kWcj75/C3iU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A001CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152019359.31409.15723511086341017745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2dba63c8ccb711c7c03c0b30caa354acdbb035e794d4ef46ee30b37623536a6
Date: Sun, 26 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761520193
