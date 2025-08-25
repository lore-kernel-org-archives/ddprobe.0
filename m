Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DB62797A1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756149594; cv=none; b=ARr6U7kTPjx4Bz4h5qBxw/8ltJlr1e/wkhbfeH/gpvP6u4SFY27vu0j7VhswpAizurz9gcVZ6RVfm6d88UPlkonM+0loiiBLsQ15c2CIah2EOO+3fTe7GHktXN9yT/tbaheO8bf0LrU+9LL8bUAtMCTXzzFAOodMZnOZAA9I/s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756149594; c=relaxed/simple;
	bh=Znoh4z8W3o4CZO84Dy7cXF339id7nvoHN+6PV4k0P3I=;
	h=To:Subject:From:Message-Id:Date; b=OMBceUIvLIc1vAsEqy6LZJF+WLZxGUS+EAm5cR+TpBlVuR4Bx5euUGNM36ePjyf6XI7Lzbb09HqbHRm/hJYwX4tHeaHcHY3hxSQM9602GcpXB/MvQPmwwFQSx6v5xgz/BMEHBiM3oYJqFi9dbZRujPE+v2M+tk+lZlQuRLaaa4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ibwuu2oD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ibwuu2oD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F47C113D0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756149593;
	bh=Znoh4z8W3o4CZO84Dy7cXF339id7nvoHN+6PV4k0P3I=;
	h=To:Subject:From:Date:From;
	b=Ibwuu2oD5A7VCGd273mqnHll6Kg75eb1rtdNspe9aJyB+dOPRtjKLQOpAR3uz47SA
	 cvEEWmukR65jT2L1Ylfy9Fjr5BDk2CN4gT8ETG+r77M0HJk6yANcqHK55KATMaHwfr
	 w+kzwcgiOIJ2Gd0yoen0zc8LMU0C1ETySrPK2IgrQul/0dDKBuiIYqx9ye66cigQyM
	 Krq0XxUDXKUrfyXcGAPV0VvwseGtX+k4xz6uhhFtGsgQH2IGeG/GJzeC5g3UedZRwl
	 w237Tq2P/cV8wpEkJ0YX0CDHbIzulPun1GBPjKAgSdHeyn4BCm5yCap3kzwLEcZ1op
	 IhK+NIzKHx0tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912DAC8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614959358.26862.6942052560627874031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886029c74840a68096077792e93d8d8fa7ddcdb165ff613349893acade2f013b
Date: Mon, 25 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756149593
