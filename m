Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC72155333
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754556594; cv=none; b=DU3ChziCtQwNHQDwENUZIzZp2U2I3ABBkmgwoWlcFH4QSy545Md8/ud4vmyd6Lncb5yTZDjW8APPgLnNwcsyDYiy2OfSHuDAMFiC8JdDOaT9Qy5x5r9Ru75siinzRrjh2idaPkX9O0RvNWSiI6RZVY/++HjYusMjOVekxYqCiWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754556594; c=relaxed/simple;
	bh=9tOjYgpe/6TPkTAng7hhK0cvG979guMixTn6SlsZMJo=;
	h=To:Subject:From:Message-Id:Date; b=OIFsAS47O+2ByICILILTq1w4Su5t4EUXmHPVYkgYUcUFVjX1oj75XH/QOp96dJKa69d0r6BTOHeQM6XYTjzOKqXau5/odIJDzuQBNdtJe8byYS97EZw5jbg+6861gCQWnkgZBAtOh5O02hCaQ17nb5ogCWVQaCepiwRToSrZ/54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ia7NdkwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ia7NdkwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7017C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754556593;
	bh=9tOjYgpe/6TPkTAng7hhK0cvG979guMixTn6SlsZMJo=;
	h=To:Subject:From:Date:From;
	b=Ia7NdkwUGkwM/8gwAM4GJDYf2px595ST9aFznMB1TIejksntxDIb+Ggz8M45xOOXc
	 i6+Ciscllhn61oY8GjbpvEcpdOJd96aJoUO4NbVm/IxMoqd++GXENkOs03GFxM00/Y
	 g8NYuKWnBebDkwJu4lQikrliPSSgNRKKFFL8WMUSg1GRbhaa+ZoWq5b5OAE+Sggn6I
	 313ZCiOBIC8FWEJldCWaCwZ8EI6/4x+Go8sf56wEpjph/zBLIqu737Gx9wxF8u24vK
	 145pvcHHO0iWktBPyKM3UmFjjZtorTv0EvY8qJ22eMaBvFVp8tlw0rNaRN9fGiqzJG
	 Gdbnc0ewAtaCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB5C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455659358.28278.8862771299657606788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 603fb1739a5e9fa01a50b249272df4cc681e7b67e2070dbc0aa99033d0d57bfc
Date: Thu, 07 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754556593
