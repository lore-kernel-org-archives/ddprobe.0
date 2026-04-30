Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BCE3783C0
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777564654; cv=none; b=JI8HYb8l3eCk0NvwFiwzBt69S6WUVf2Cnh3see4C0R3kWgys9hKKDAGwo6toNhH7tigsUEvuqHtYu81+kHGesoYZ2YJ3t5GAnrWn+8kU3jo4YdSZHLW6dyy0wo2153ccPvY5GKtoLQfEYM+TNLxK46+vgsNGmBT693aAq0ISCU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777564654; c=relaxed/simple;
	bh=C7VQbTexCmZoVfsA9CnaS84xM6Re0UdpoELLum5FddI=;
	h=To:Subject:From:Message-Id:Date; b=nLEsPJjtgNbJxr4Oc6BWyGjswddavESl9R9aDVRrFq9R2oJmGJ7UAgGPtlapEnnBlYAYaNgS4pwp5fKzVpQ+/90iwX1ErsxBkCoizzHiJ2z4amWquEzgCOchc/S05MNdrVPpDhRsU0wqlcoZIrmW7kLknf6OElh3jOgDVXjLJlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MntLI2g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MntLI2g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB157C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777564653;
	bh=C7VQbTexCmZoVfsA9CnaS84xM6Re0UdpoELLum5FddI=;
	h=To:Subject:From:Date:From;
	b=MntLI2g0Dt8uHTPE/VP20lM/p0Lx4+J5YgBgJT3rK8X3dQRkGaI2IhtyybdZ6gBvE
	 tCTzzOXht1BgRka+jEOnLqK5IJtePiOF7llXT02XBWtl/nx/QcSBZR+hbybrNQVXRY
	 JQEN2N63viP1mg3ZPQkfK0qeyCdQgzweKLwNmuKDatVhEGPCDRscYct1eJgFw1Jki4
	 f/g4+7TuuYLJPsivMCORz9+Wbki3q0E/oIrUeEetaNW8IcNCJMXb4yKgJNgJ0nSwwm
	 jZoWuuMVWUEIp9BiTD4GZMPB9lWm38Ld+oi4taMWRLJreGzf6mBRkIDNWiZl1JisaJ
	 786XFykkbPeDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA202CD13DA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756465368.24496.16969447029691933704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b5fe0864891a3883ea48e5f3685358c86b60d33d56f8f2efc150aaf3f563bf
Date: Thu, 30 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777564653
