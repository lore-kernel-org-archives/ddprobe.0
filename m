Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235841DDA0E
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732647354; cv=none; b=L3MaGMlxpm8fVAeAKXCIxbpXsRbL3f7RlwMLng5fHDH3L1r6HTlNNE+q6BvtbsG9iKFGcku5NZ/xHaa8vgv6p52oie8T2FpxCuCfb2bAnIZwe8uigFQTXgDph4wTjfFy0m6vNPkk0FS105toaTCACxZEdohJiPNhSe8z2hzps/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732647354; c=relaxed/simple;
	bh=zkTX79fBQpsK4RHc8aucleSYtAbumcL+GkovAIS+7C4=;
	h=To:Subject:From:Message-Id:Date; b=MCiOyxrxm/En7bZM99ali41TBHnNGRfziW8Gg+xdDw2Z3AuJqMbsPeN/gQ0hb8uz0Nsis2V/4/Sj7RrTBfUygq06U43BliKmfsHsm9anyaWjwAYW7G91+KdF1rMRysjRb9W5ggDnwDf0Fh3IZmdmNEo6ZO/odhhgaTL+oG2HokU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYrHtNRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYrHtNRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A331AC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732647353;
	bh=zkTX79fBQpsK4RHc8aucleSYtAbumcL+GkovAIS+7C4=;
	h=To:Subject:From:Date:From;
	b=hYrHtNRNbxF9O5BFnAG/78kPQH54AnjmnezOtB8YpHsi1uPiE166NXrcjx1eGxZcH
	 LFReKUMhSHCzINgThIS5l3dilcDiVy/ALmD80ptymofj+7G4L8m9+2xoy0fmlW+kAe
	 F7zxMlKreIFRXMeDuRm36Z3BuIHcdo1WDdibCh0qeLcjUPQUYvMPq6APGS4gbhIOFO
	 3Uk2sZn3oXcoDqtL+cKNwkR/5aMgrGJ3MKCZvI1bPBFMBTDUdJJ55JMaR0ToBs4xfj
	 Edo0xPPKSlxZ/ggxALDj1JFsCHqIiZhHyjh5sLFkjvigldBGHd5ajJkA8ojvYcHxXE
	 wdlDuk/ZebeMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B3D6554C
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264735358.25592.10635618076935933627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64dd591f2e2f468027075aa5dcfbdc096bb5c67e23ed95ea91856398d1466c1
Date: Tue, 26 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732647353
