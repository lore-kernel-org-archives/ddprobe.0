Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A58347B4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744906194; cv=none; b=SgRM0MWYBe379pguY/qPyd8EvWu8Kc4H0NHxWkSy5W8W1BTABiMK8oy2PNilrXnjksmTCqJ5W7dObz25dRZUkPisF71arm9Dkf4I2XVijivRd1yrBcD+tFqdCT4EXZQUFMofPh9RLkO1ghf6SdI8rxpJLP6KmnykTHjkLcGeteA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744906194; c=relaxed/simple;
	bh=JEnqYsJqKGGkvCXIiSiprEaB5d+1uy2Sgn2DrFHQO4w=;
	h=To:Subject:From:Message-Id:Date; b=GxacH2M502pgzjCmodIR1REVj8dVMErozn4d8gHfw8JW9/88MAOxn0N2ZwV05o0z9fvUhfqmfdlcDD/eUvHeVH74lbIKddY53ga8S7ysM1a4F6bH6XxXS8LIlPNbUV3eg+6BN5YzYe2tBWD79+xGE1/cWcKBGPAX17XzIQI6MW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7ExBhMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7ExBhMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3B5C4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744906193;
	bh=JEnqYsJqKGGkvCXIiSiprEaB5d+1uy2Sgn2DrFHQO4w=;
	h=To:Subject:From:Date:From;
	b=K7ExBhMy4U4uheoa3jazKPtX2abIrRFFO8KdbM0teUSvQ9kTLbw4VdEcK5JY9s7fY
	 uwA+x/+4ArVMNbvp/2TEPFRh+7yDq4lcRCeSQuo5WMQI64uI6WtCQKa7CLSFVfSxCt
	 tnFI8Y05Vo9t0aWpbuv11+OcWYIou5eczKOeAECYlx3N5yorEIJ7hCzhbcr/uMFfAB
	 tGatZvOTS09Fdifh5E4AxuvVATbme2d+cjtXuF8mDYulJ5a7g8eYbF0PDTH7UnFUPn
	 /n9P90Jvdm8JKitRna/6hypkaRiidHQ4lfqrrnKsqJYymh7yDb7zlukbzeGdQ+o+5J
	 AJSTS9Q/2gDXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A3FC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490619373.19028.15684061602730704370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26e5dcb6cb744fa213a7330a0776d8836b782db10013eedb30aee088f56958e
Date: Thu, 17 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744906193
