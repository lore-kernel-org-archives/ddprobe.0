Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62759293B4B
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744360194; cv=none; b=eO9Ht7wPHoPydEpYp/IN+5EDAYFH261dqFb2g7SH2Bhkg1tZZQ9E+t5GRaJTOrdHt9+mHYd6GZPxCdH/FX0yugvrYKZ+pBy4LbC1/pi/THLQ19eh/kwfh6HfZr4YC9F1w8GFnKhr2pFK7djopfJwGNx6i71kjo7yt68D+hN0FO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744360194; c=relaxed/simple;
	bh=Kpk6QtOnIOFN6KCfoWIgAKEtxVJLywzbmBZCD1yuF1A=;
	h=To:Subject:From:Message-Id:Date; b=DYu7ch0Iv3K4/7PZ7cOEhI+TCE5P0yGPU4v/xcxILBstiUiHyjOVqP3SifnLDanbv2GWk/vcOsAS7uPxkktq/W/9yVMobUg486N5OwLBsY6cANR76s2xb6B3+Eg60lTIC1D7nBqqjeH41yi5ZxGoUEOJGWcvKRceJ1IrUecThZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLY5BzFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLY5BzFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11DEC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744360193;
	bh=Kpk6QtOnIOFN6KCfoWIgAKEtxVJLywzbmBZCD1yuF1A=;
	h=To:Subject:From:Date:From;
	b=uLY5BzFIcAn9uBMK02gpt6hIRZoiOqtar/fLCdpJh1br4thcOC7och0PfqMSYBVRT
	 n+UPyW38R1GUQWQpc7B5jx/ZH9yCSMB+D7igsyS2CxNI6m9/Y6pjK02WVtV97AVKrn
	 1yCf1Bfwjn/KfVS2z54ZjDQOyDG13n0Z5Y+2/BMt0qhRyTOHzsk9La0JU5b6jTR3qK
	 iVMMtVxc7BPmRCopHC+ZNsp8FvRD1aXOUxk+byV9Yy+ErNZtAjyN7CX5indbRCt/4f
	 JaUxYg7SmK8MFxFzEHipm2UoZ2MZ4nBhlYpnFI6unjQwWwJQ7LWStgu5EDUu4A3PHY
	 eJ04dM+sa+4Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B0BC369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436019360.18142.8844931572152990291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1d48836b3778b8fef2f74091dd1606b5693cfefbf3937a84a5d6c6297a5172
Date: Fri, 11 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744360193
