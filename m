Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B01D1C8630
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756151394; cv=none; b=QfqQFMmb8onC/zXn8oiVtc4XGJUgvY0pEMh8jD9e4COe9WRzQnFIevjlwN9uCUkbsl7/KNThdtytQ44+8R4dB85Bms0CXKc6lFYN4nEpjCKdmz2w/RnJ3zVJWpphhwAHASJnRkzM8LTqOs5RPKKOy6NsMCt/Ub5hz3kdF9YBqNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756151394; c=relaxed/simple;
	bh=daugSRrvqe9QXSMd0f2DuvMfBS8XajU6sgSpGVHnhGo=;
	h=To:Subject:From:Message-Id:Date; b=gGESxAXQop1OaInxrTl4qT8HjycajzQ0vLm8lxg8pOaRaVYiZvOsN4PR1EEF8/UO2Sz8+8xyo3+ZVXUXA5U+otjNeFiFfIZYFPDah+ZdVSaCzzqLcD8bE7yseuZNJPsmiqp6dCqGVJwYal7Z4nVjoyf9IQiFXyXJVm3qUs9kcmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kv1rYzb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kv1rYzb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B42C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756151393;
	bh=daugSRrvqe9QXSMd0f2DuvMfBS8XajU6sgSpGVHnhGo=;
	h=To:Subject:From:Date:From;
	b=Kv1rYzb9F2/+YK5okPu4sBQfczv2Ni/HIlC05VrUBO3WN4C4h3KNHCvKuI4BWmafZ
	 aFJTaJccXF+9WHFDmB0s/8H1ueOQV+cFiiDMdK+hAWYz6Asg4wXexom3LigZ660Az2
	 atShJh2UyCK7FClv0i3irWE/WoumqRSoV1/Znh1hyLPlCPLd6uWinRoWRui4+gOZpN
	 CmFL36GgoGO7a+IOG5/AxybyMLehyoJvGpr9NIDAEtqET+r6Vv7otusa7M4go0xr2P
	 gQlN4A5pE39JtKmezsF4JQvbqSyTKGhd8F1+ZkDUxC3R3jdGnWIIDrGc7wddEROrjH
	 h7yRIzMOi8wvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943A5C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615139357.17035.4595018309869381088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18feaee5ffc8347147d3c6b28fc08a42eb4e0bb9965000f2a82956a267817da4
Date: Mon, 25 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756151393
