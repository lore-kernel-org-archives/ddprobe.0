Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA3523BD1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776911254; cv=none; b=X7dP7h/2gKLrDBsxwfoLxK3epeFQFAZDEIhmgrSMGZhKIeatoLh/0vzh1ZCcW9PXDthfQDRPjOQOcv8dQ5VppYrZcaoBCU0vNqUana8v3KMzwMDmkNyKQI2CkhSYR5K8wnGop4QIkxnpYnOBd7pAVZfSMWjyXuidar3EjDN/SbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776911254; c=relaxed/simple;
	bh=5Cq0tWiPCqOgJ1TvHubbReXTGMoaBnhlPE5KqqcGZzg=;
	h=To:Subject:From:Message-Id:Date; b=TRn9oG4mr1zQ+mJuJIBxpolhKa+wRZ++5ceOglMaJDV/4ha4NZF4Mo83sNHxO6B8nw41O87jII8xXbhLwA97SWmR4KVgsCySk+4XfoOkHKSZz+/7BWTNz75ZB8/qw8Bc1gaJPSRPP+iuJmV6aFuKPHgPEK6c/LimT1EcOCtqrKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDwoPPSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDwoPPSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5077C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776911253;
	bh=5Cq0tWiPCqOgJ1TvHubbReXTGMoaBnhlPE5KqqcGZzg=;
	h=To:Subject:From:Date:From;
	b=eDwoPPSNYPsyFEaaGcJVpd8C3JDNAE5yva800aWkSinbMHNDunwHsWENREqo1X5Li
	 g3KV1WSkOCQ6puwACiS5QD3CS9s8a/olRF1+rSXZwR2sy7eMTAJT9qyNFipUHj68we
	 a0Jf+nZxDwJpI5Hz1bqjph/Sby4Sl3JgOdx2KrYlfHWGbXAFRSFeT7D4RzuhmcqTnF
	 oGfI6tNuPtxqyMDvcjQJ0BoECDgiNlJub0MarXHsxhJA27EEY9c5kBstjz5si9EUmj
	 F+Le8aai2vUWcYESnRC1QE4mAuxoXTgTGyNOUxPHmiJpQUZA4Q4p3Jkps4wRgExHX4
	 kRHBnOK+VD4eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93D5FAD3EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691125368.28901.8322709558844448787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1c12465a350722600c0a55cd9d2f943ff9ebe47b0e03e14cd939d9bd9e0cb5
Date: Thu, 23 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776911253
