Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9B021CC5F
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747581594; cv=none; b=CAbZbI/fRoLqSJRNHOur85HgGgdOZfLyemcbacqFzT6by1yHogCpdCHLCq/UzRAPWDjXzkRmxo6V6wyqFOqEG9ZfAqQHMf7aG6aZRiSpCl3Jnb0UDavnfkxsD3pR+NY+nKM5YJoZSmql+SZNma85hx7yghKFLfc+uRTCjMHe89k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747581594; c=relaxed/simple;
	bh=IeEXNw9uYzTHdl+Dm+c3oJaxxHFk6+wuhvtqxl4HEh4=;
	h=To:Subject:From:Message-Id:Date; b=TPU490sEWCHWhIe4ODAF4M0nLRtloklpBAfMK41AQnVGss8XzqV6l7D3c05L1L1TO2P90PHUCvSKmBROr8FrYTESXCJRLWok2tPyC8TQXnuTjLkmHWZdNczIJCTAdfcTi2q+OebTwv3yNmxaHuAI6r4ihgY6ujGOcDqvQQ4AYXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpLDZaIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpLDZaIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D76C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747581593;
	bh=IeEXNw9uYzTHdl+Dm+c3oJaxxHFk6+wuhvtqxl4HEh4=;
	h=To:Subject:From:Date:From;
	b=BpLDZaIW8L+kCXVpYNJCZZL/20wAdCmTRihROrn+8IjPiW+tICW6GmbWjhPnaPoZD
	 UYi/y+Ru8OZ01SOIuEPWAbPqml4DN/QDItlyZkTIEx46NrEo3xrvs9STnwps/A4SnL
	 TssM98nk1S2lyIvte7N0uz6h22EW1h/JFmE6chOHZnpRcb96moXme/4VrDh+XJOmy+
	 lEI+5BVbyF34nNNEtCxXaHhtLHwXHcmkYbJtkyMdWf1iaRUkaATGdBh4MNdY5LpSNX
	 B1mEqxMWHP+hGOFaB/co9DjfH7a8E/M2sXsxikPz5ztwKE49XmhigDKugjxE1pSnsq
	 WV06shkE0bIBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9179DC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758159357.13116.17249821869754065174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81544a1aa12c35749f5dbf227ebf67b57b6361ed8f54da9a8cc4da629b5c4d8f
Date: Sun, 18 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747581593
