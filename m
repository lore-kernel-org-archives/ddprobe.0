Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE97EEA8
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755464994; cv=none; b=NnAMCshd3W9cDjOnNU6GyjZw8oLBW4keHssbFbgRhsybYb54JQZaEQDiw2F7NVbO1qa5XP2P+xiVHgtcB3A7wzkJdFEq0L5kelG+AxORHjrUJT3b7DSQEKXgRosFSJiCPJYWmhNVyDXcKwBcrImFtd6iTBDEVfFwQzwHQpoLKNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755464994; c=relaxed/simple;
	bh=1uWlUMbBajsvVruzBi+Z9Kx2QS6vjysfsm9O3pbs/ws=;
	h=To:Subject:From:Message-Id:Date; b=imza3k6pK2j25yteN9sq0bLW4zkeKgShq7pZplEiQbys5UkPU+JUXLIOXb5Fd40lPM1iW0caSDLAhtGF8ZZcszRxgXPEyT3j8j1zpgOCIunpdwc/O9lUEzkAe9dj4MuA88hSGslMZRkr2ag7pp4jPTE487PAYto1BeXV3iS6u90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmLJ391c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmLJ391c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE00C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755464993;
	bh=1uWlUMbBajsvVruzBi+Z9Kx2QS6vjysfsm9O3pbs/ws=;
	h=To:Subject:From:Date:From;
	b=fmLJ391c97YIsXlDHAm5XWTSS6uV29WYTdWiopEJsN+HCfZqNBY2wOMwMbppvCZa4
	 /nAwa5d+idfDq/yZAvKmLw8uGPD4+ezGtPAUEdz6ASflFErXkjfEFWw+e2B0S7L9PV
	 xD+L0IUCbul9hjeKmVfHANMvRObyQd2uk/GpIUCW/ADyX1IFlzvNETrMjk7lY5htTp
	 lSZhdb7Min8voq24oGRnQQRdZUuvkeldl+C92+R+1hotpgGRHs/iruunfFgHSRZHyR
	 oDZFOj8E4vtigeuml5Ry4q6AgCS0PFdImo5gHzVKetvDuU/cKTDQyT9bzz9vIzq/lm
	 U1yioGXGvWo5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E690CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546499357.1032.3590215961638132771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f43bfa0b5eaf2d5ad2db2429ab965b1844a114ff3e1c657b96398c1b0732b0
Date: Sun, 17 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755464993
