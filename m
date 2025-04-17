Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0CE184E
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744930794; cv=none; b=WXKH7GOUkIrxHBNnQXimGGquUuS2kbp8KmQiRE57cM9ZT7re1Pq/HosUcaDbBBq81n2CYUVpf38DRjuvd/FprfoTfWTnUmpv9S2ElxtMQVS87kaIod9gHK0pr832f6o1xKjKN9qSdGErRLaBqbivPnHB7luY6DBiMEIpbEAecCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744930794; c=relaxed/simple;
	bh=6+GBbEkDuiw0EqV9ZxR2qzEeefHzIj1+BbE07LODWog=;
	h=To:Subject:From:Message-Id:Date; b=n3M7xPuPOildyVA9GQ3HXPFgOjcnTTaulv2AEIZfHdiPNyalKu0KEUWgJLuKsVT35bp/MBq5tEBw5EGSxngqhgTjJpkX3CYXKlsdDunewdbTdSoC4la5D2iG+RqVEq/hwFXZvvwWFE0so+MyguLbcOyWAS3wQotQJB4yhJz26XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nz8C772B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nz8C772B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3227C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744930793;
	bh=6+GBbEkDuiw0EqV9ZxR2qzEeefHzIj1+BbE07LODWog=;
	h=To:Subject:From:Date:From;
	b=nz8C772B6vLxcIo5x/s6jgTvaSflgJeE2Rhb2bGEpWhSDcUrxeu6WqB7RefD50JIk
	 47i4/z/RcJapDecfG4qAz4O0BzeJHxZE4n3JiOHvtX11nIBcToPavccxV65L8/O7EA
	 rwX8CcwLI+O/yfuRkmpG0NRuEbowzV/aANCChkCi5BXYuWTZyo2e1BAkGrlrCx2rrz
	 DsqLZc9CoTMhYFJugxo1WCNOOKf5218OOlE+JYsOzSJVuDq44VEcOp1IFZ1u6gxg60
	 ov8GKm6sPdpz56G8co2Fkdf4uSn1vm3lwmPgkoQcmV04mzETgNQUgMZlyRpFzSRTHw
	 u3ggNtfD09q3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E11C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493079359.12326.10915428407056892770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41bdd445efc684b2c55e6d6d271003787ec57d03307a15d7212a8b0eb5510a59
Date: Thu, 17 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744930793
