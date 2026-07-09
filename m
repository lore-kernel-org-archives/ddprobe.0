Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292E040E8FC
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783597714; cv=none; b=auN2EEh1MlsTozRIYLnLGsJNI8UaT9MasvoMjWPnDffqI6Al1Y6e9RKsC83dB0uq24saELpvWF6lHdD4hBhMiBbwFHA9PbsOls4oC3eiw573C3T+DBZMxYZfo0eVly3JmKfQzgNJGeoPiC73Fvpqptx+b3oSEi6bdyPPQLyD/LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783597714; c=relaxed/simple;
	bh=PqzinRotmTN9S4h6eSa2Cl2n2r7Ls5sz3kmecSpCuPY=;
	h=To:Subject:From:Message-Id:Date; b=iI2Hq1gxyAtk6B7bbxFgZxT3lS05/peYCbf4gYy04BfkeP/kWnwyrDWA4LWMRV2Ow80iJ45bLfEpTkbJSS/7xPFKxopsJA/DbnszOGgPx/HEHFKtk+vgp524CLsxuinR4rgk9boVjcyTUy+i/9ybHEoyw+nL5O2EUTWaaHRbfv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdLuYLkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdLuYLkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA753C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783597713;
	bh=PqzinRotmTN9S4h6eSa2Cl2n2r7Ls5sz3kmecSpCuPY=;
	h=To:Subject:From:Date:From;
	b=fdLuYLkWr/hgh4u70Gr0hBbbyBUTXoD/5FohZXajksDyG6p0MrS42+GveM3kzw+jv
	 Bq6ZCLhAT97LRdpfg6O941+3e2FvvTmEcmAltu7rhtWkcqufXYJZFdRkhAT8hTxqWY
	 oQP1temmTdF3/N+X7mCHO8j+3Rv70S7pW0GkHurh4jHogUteRlyVFqFVXPlnBkj7uF
	 3jKcL2JnmUHK4nvSSPShFzocUIGAow6xAOzHX8q0CCeIhTRsB3yHyEUVxP7UgfVaRb
	 daQ0wN6i/PbmxlKw91+BElSYnwopv5WFluNchWpECGK8kttojpGblrEhw0U9kgutx1
	 TjqpDrrEux8bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8880C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359771368.19130.1326851090370165110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f420d5da8f48a0b5c634380c0a105d81fce9d174eebbd5181f76562ab62324
Date: Thu, 09 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783597713
