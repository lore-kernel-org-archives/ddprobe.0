Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A90E2D2496
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774199694; cv=none; b=lzEdgH2ffAyoISxoTwiAbOGPydL4cHF3OXS/c5GA5V2eqHTaZZBPAcZrRYBMdSNquRoCvz4YZznzyPb9emZ1N6Y4mZhI8MXxP80otC+bo6EXbdjGhcTg7q6pFSpk1hE4xN12oRqJpPC7GtZL9W8qKaakr91xLVdNLlYkWt3IAGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774199694; c=relaxed/simple;
	bh=BwhwspBtUIsvjJCRQVzm3uOP9pnVYIWCuEdkizcQ09I=;
	h=To:Subject:From:Message-Id:Date; b=cxhwwnE/S0VTg2kKIOwSF/+DF6PzXNGxThtYzY3N3geS560htp7m0Q4NqmTSX5Uqd0b5rFFYOyA5HgDf4LUkBwSBegcFOsAhJRtReDQ3Vacf1fRgaAVtYWRmvO8kFwe5LyjURNgYgQjYawpDGNPIakslm7LLNWtBt9Gn67GcMlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGY7nMFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGY7nMFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7FDC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774199693;
	bh=BwhwspBtUIsvjJCRQVzm3uOP9pnVYIWCuEdkizcQ09I=;
	h=To:Subject:From:Date:From;
	b=PGY7nMFoMqzHagGOiqCMPJXEjjcnXI05Ilk/gIhVb7zFrC4o4CCpCmiOFxrsKvN4G
	 SDIFamv8MdCtwJlHA19kPb13oAiecRTNnq3i1XPvKQoqd6zovmATmYmG+iAncCugiM
	 5tNsbZzppjw5Ncf02BFV+UfGs0mb7iaV84fNcjLxCcugg4SbkU8ny6Xn6CcvetIpHg
	 +BTYdNrK0mmbOT91eK7nCzxFcN3A2uLn+E0MdDUS/eUkWLcW4G4unHld3DPVrHXMLm
	 wKDMGAWn75vPtawVHPAURoiJCzndjBGaoFGRokwcBEnamW3CkynRzr4qkS7M3saBmK
	 nruIpDe/mMUxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AAAFC72CB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419969358.1527.10314373855054269485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847dca0f53ce60dbccc4eec14c113bcc679da7e2f38da690aec73431606e2305
Date: Sun, 22 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774199693
