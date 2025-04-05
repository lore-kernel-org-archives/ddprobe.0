Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCE4EED8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743862794; cv=none; b=OY525BaDrLaWg5AS8s+xpgPxFyoaGCcLap9nIxZIkFRVEnWyLCmibnyj2QOHjKMlgCDwBoTE8wwm2leaTn9x7m//NXkyk6vsv2JXokvoyTbquNa5VHjmXAiG1vYsyvE1kwxlwLKfP9tlLZVflMMf2LltF+ArLyc5gWJ7GuDiLrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743862794; c=relaxed/simple;
	bh=OT8FKNoaPVV9m55YBPW4+hLdoPl4zcRQavKqhuybGB0=;
	h=To:Subject:From:Message-Id:Date; b=IcIurlCvphfPobAbLxdytWj4gBpGTlx/5gg9zzcQBe174+ry2bIq1Zgb8Oqn2iThn9AA7BnTwrp9IkotC/MR3n8gqnbKbpeUGiA/zqjx+oed+o4nZzc/I7Cdni9h78lNAwDtqkgEKYoy1u0ImrSrIaT9SzS8xR9QC/HixqUaKeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkCXpAwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkCXpAwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB7FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743862793;
	bh=OT8FKNoaPVV9m55YBPW4+hLdoPl4zcRQavKqhuybGB0=;
	h=To:Subject:From:Date:From;
	b=CkCXpAwIreiYNs83TCy2pvp8Uf1j0vCfzMXsvx4uMvus+LR1VEHBX5TkC/elh2ZgK
	 0lbgCbdAh2s+XCGocSRIkUrGW3vbHHZcqrY1clicBoAlFkvqN0BSQrsczB619hJWdP
	 H4i3TEYmTQgxysslXRiKs2lEDBOoo65rI9heE8WamV2iPOz5hy/nbWFk/DNGgsXIWI
	 k4YVWuMWqUgPblKTqKIod3/yXKIVdfJp+grzTVv/eu8fVGQnbo6L+c2DCD1ULTNrw4
	 3bbsTqV66yc9YItGMPHZ22DYr2rmqV73Xs1Kat910Tif42FYjMYJHEnG4GKpQCmC9I
	 mKqVjm07IB01A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3702C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386279362.23652.11821577434001701188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803586b0ef37e1ad9ef4d181347f5300b0b29f878d6872817c9c92a4cf0e2fad
Date: Sat, 05 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743862793
