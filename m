Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595393987D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719774263; cv=none; b=FtA77/1WzJT14t0avKl/xzxNtzjB6UE4lKDS0uqxhxSYh0lSoSbocWJ/879zr0/9PtmEdSts9XWHdxytdqfTt5I++PQAzAmCRqaMC683j5dCfki1OTXR66sf1dQUsbUbKrfHZWZ0d5VCVbITbdwOMG4Ws0d1cJ5/zXi+Huf6Kf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719774263; c=relaxed/simple;
	bh=UPY9iB4epArXdrggBdkpa3giKblFX0EHo+tV12KN5vU=;
	h=To:Subject:From:Message-Id:Date; b=aZruwekc3/ukVtay2Iy7YOFq7g5rjFMpueTgrmkgBDDTf4KECxSBRch72m4OuKqRY67hC9o+NumK0vwCuO3pGY829MLfKtG12dLgKIDT0PLSwjPyzSKOjV3EiXSG8345Wgi1zpNtgaA3JyL8YBHV5JdASjXvZn54x7EeLVnIM08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mp/M8Tw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mp/M8Tw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71C1C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719774262;
	bh=UPY9iB4epArXdrggBdkpa3giKblFX0EHo+tV12KN5vU=;
	h=To:Subject:From:Date:From;
	b=mp/M8Tw1ttZUUtoNcGQLeZmbfsJvxr/AluIUBnS6pqLuygQajw24Dg6KhKS/B09yT
	 B32yuq6Qk3E1lpw52dnJmLtYVqBpIskoLc/K96LY0SGRj29Fy2JWkDrgRRTLRnRh5H
	 Gg508BQIezsced3yL3w3u0mIhEluZDGK3VDjra2Jj2ooznJgV5V4FsKP3v+jFPFf8x
	 jzpybHq+3T3FZlbuOmff4baNQb1l8+62pPD2jmRV7qbnMpuihPmFliEnMIF7Bv6wu7
	 b6cYYg5lTSj4A3a/QozQaD0bmUtYLoD3Rr3IXnCJ23IlMAuFdwvcorv+hOXumRb8iL
	 QdgPlWCG/W84g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC0EC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977426276.14289.7176201536432082909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e69728cd4c60ee21f22cdd3277e70568058b53df13e718b96eced7e574624d4
Date: Sun, 30 Jun 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719774262
