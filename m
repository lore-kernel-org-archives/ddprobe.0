Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7302D400974
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791028834; cv=none; b=kiXaeABaUDnSwRM4NnEgb9PbDzzTLEuvqQX8oh+k9dzRwOxaD2h3XdpJeVhshFZCKIt6RnIuQ5XNQqG+scDw0G7AACgGWI7t3fUoKTBuXMrmZVZz3dZBiLV8NBIqpmyhxKZXfRb8DUz1TyiUYkfkI99bujtUODFM74J9Lrbjbac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791028834; c=relaxed/simple;
	bh=lBw+xH71LVfLSeeqXbqhaBi64dYbX7/YirttFWPSj9E=;
	h=To:Subject:From:Message-Id:Date; b=DPSKvvNPAIBkiyb5+nPm5cQ5vDG3kJoXD92u7RpRWO7egmMNZMRtAB3WdsOh4M57YaS4hGQyVdQKNoKQ0EPAy+C2ff+IVq7xo4z3LQiBDZjXcttZU4+ppV1m7kV4m6Ozoz/Pe/VFqzx3T7GX+E0KmQTqkL6a30j9+mLw4FnLeRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHc0H5/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHc0H5/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FF6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791028833;
	bh=lBw+xH71LVfLSeeqXbqhaBi64dYbX7/YirttFWPSj9E=;
	h=To:Subject:From:Date:From;
	b=OHc0H5/o4n5c47JVDR35m/aZiHbBOcV2QlHG/CwcH0Ke4fqFCRTPUnThKlq+jwsOh
	 2ho88WUMsvsGekokbCzipWYzR5Ag9tMAHEsTyZhYo5ziQTDJM/7A56AwatosVA5fWP
	 h7q+xH80ZnK+2/Hb13FxP82yn+hmABNnbz6ynCSq/wACbjTJlJcNoprxVe80tUM5wo
	 QiPyLBRpxgAbZjZqM3MFjNoUx7fj7GRAX68OV7BABP0JpFkrOUZR/aNB0dwfLo6def
	 LWdTakBm1Og7UbtwDfim1gxMeMm3jG5jBJ8ZUrK4kU2oWCFSMfeVtK9LmMyKCsuHwc
	 h7B2jPGt05+1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC522CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102883368.15201.4567871618528910119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e95adf3d5a10baa65bd4814f396b5d5bf10044de07531b02111cdbc0171c28
Date: Sat, 03 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791028833
