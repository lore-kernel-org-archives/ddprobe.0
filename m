Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5961522AE65
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791939034; cv=none; b=bNs4A1Q0dyqsc/mVBpKZEKkr5y4HsFY67rdX3RCeAyg7b7NGEENSXdnVCxtzpOM70Egx9mFwFafN4ycMjqVQnGjZKOVTREcq3arTusurwB9Jev2UP1nCe5jrYrNA0M3HZfuRTR8RMSnIfw683N4ZMUA6p6RmuCdX+pSwDfrXqGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791939034; c=relaxed/simple;
	bh=3A3G5EFv/NmjSqax1SVj+eMSLsWA63VRJMl+K2JodM4=;
	h=To:Subject:From:Message-Id:Date; b=dUfMF5Hkj6LGGRKwstPrg1ZI9oSj+D8uZGhz35PukZDvNoWuO8aM3K3y1/dNzNXHwqZdQ0JFWnr11FV7kPffLtHde3k+nSNfjwsU3gRPQpeG9ALqbf3llSx+JuiW2DkZFqi/LqZ+6aN8cGkQICNE94wmVQaXrG1i8/Ch+gbawpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0o7Vnao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0o7Vnao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20D7C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791939033;
	bh=3A3G5EFv/NmjSqax1SVj+eMSLsWA63VRJMl+K2JodM4=;
	h=To:Subject:From:Date:From;
	b=B0o7VnaoZq24KsevvldwjNuzeUXcf3RhH//1uZTCeGhhEKK/pvc4g45D89734eenc
	 WFmoEIS5Yl74rOlwXE+VxFAdPIEJ3EKscFzfzdZQcXnUrSYX1BXrzuduJevqXUXCYZ
	 0DlJwquTlJdO7JpIVoC4edBSINZANNzQHpJ8feYy/RwgSSg91DE/lr0sHgLtO0f1N4
	 BE2D2C62mUi6/ucubDJvJUDpxHPqySY9qOz/jakPeFq5guFnh6LiNFA1borNV2CCYw
	 wuIH9j17fq/PcasRSOwxcL7qNNxgV800pYhFMqRccK4Az2lCWkhEn34+06NeeCdadT
	 NckV+Kchm0PpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A7CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193903368.4212.13233107521541011593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5cc7332ee86e01e46a9404a55b8c8c8ff06c368adca315e1b21f79c75cc70d
Date: Wed, 14 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791939033
