Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0933A763E1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707404897; cv=none; b=IIrYjcqNu9ho5rXu1cQ5trpX9dtHL+8eR5/W3a+/w/9k5rL+lxcLZvAhHG9KzgWIb2hhrh/qtUCHNZZsBw2d5KCfwCtdf6kAnsX6b0rwIiEmHujoH5oC0UfjlSSSJJsBur+M7fbqB+pkDBlTKQXbPFAZU9tROYxCy/iepkaa7bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707404897; c=relaxed/simple;
	bh=hRhKyBy6bIrrVbyur/NXIrjcFoV5v2Bc/t6DWtMKARQ=;
	h=To:Subject:From:Message-Id:Date; b=ezK1YPRLaLWGEfmPWCFDOXBkTn/yCY4qrmkIWVBqSVF/Ic2mDRR9MEALpFgk3jVAId+HWwqlz3fJbi6wek7pfiIDdRaF4/lX4Qz/H7qAvDDyVW183jK4FUFLpZ/PkTVAcZcg18/fVuUzmBDYhTHaoPKSEgrGxuy5xGXrz+oyNdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq1ehxHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq1ehxHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC29C433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707404896;
	bh=hRhKyBy6bIrrVbyur/NXIrjcFoV5v2Bc/t6DWtMKARQ=;
	h=To:Subject:From:Date:From;
	b=Zq1ehxHzzqy9unxc+ggA8aDiEefzF1eDQUSp3GrZSbr+ECPVp3Cct6ryTxZ7iNJZd
	 ARIHvMMPh1uq25lFExt/ckqXfniKBTbA7BfHvpmNX/UPh8nLTah+0fUvw0j1daJiMO
	 Rh6IoXsL3ETVHQGmuvv/VvVJVeIL7vBGjdaUJampw+plyLYc7gaW/C+8mcXFi7RZ4x
	 JpUznC5ibSE6M0K31OXaTUVU0dlwOTI2LQfjHAB+XyGu7g8t7q2ymGb8rOtj7Vd6kH
	 EnpWaDDk05v87XoyHi5Igfw6hXRZihLcHWBmiqCX05avuQe0xySCAiNZvRXu5fnunw
	 SE/NOrAgG/E4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62857C48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170740489638.11131.15833243498937307700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6245a61b88c9a411c048408f6445fe2866e6d7ba3e9192cf9ee5531ceef1b48
Date: Thu, 08 Feb 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707404896
