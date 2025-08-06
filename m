Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197471FCF41
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754523594; cv=none; b=fiBUTHgTmumBWVwV7Vpkpd4EWCbOeIbxhGlhRQgGJooCZ7Ctds6939T3p+TT4uiBg8gCb7mp7Ra3sCXdCQYkf2gl+4fWsx+s9yfXXmlyvi/BBzlMsb6U67ED/KrFxRxy5tNG3RoagJxweED9GU2URDntv44vbhg7tKEZIgCjkaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754523594; c=relaxed/simple;
	bh=IffafTCI7hcLNTM9apXtOS23TAlwdSG5G7ulKtnuuIM=;
	h=To:Subject:From:Message-Id:Date; b=Zg6dNyu55sEbGu2Rok4m8nGUHy1maPdazVDf1bLtddAe5/sLs6o4VB496Hgj7Ey8mUgmRE4DKjdb8cnOOCWO1zKFbnJTNioPNqJ99nMIXJ6zUcKCL2bQW426le28fAnRLNQJUQ6IWs8i0eunZePi4eHbaA4JJmfs41KVAOAMwJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Or0am2oX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Or0am2oX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0804C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754523593;
	bh=IffafTCI7hcLNTM9apXtOS23TAlwdSG5G7ulKtnuuIM=;
	h=To:Subject:From:Date:From;
	b=Or0am2oXffEcyBREMmsrDaxB50RtlHjvrOTw0Qe+de4YOY5HuxU8W0E50kwKoweuw
	 IhqLoRReKNBn2OmThVb8QbM+nZ1U9037xJjVlp/mjM6GUY/xjCQZrYag5GyQAR0pVZ
	 wOYDWDs/eBFDOhvEyK2HQ9vi9s4Ra48Dz0648YexjnBoOJUVagC+JGAeM9J2sgVjAW
	 0oVMJ32DsYeN8BxhrnUkOxdHEbnRFKq2tZEvkYbWlBLEhEo6OoUanDoz4zKl6B0pek
	 OeTqmiq56fO7muQqjmRFfGeSSSL4kNeuK9lQrmAmRGzjVJ00mMiOuJP+uR3z04KNm/
	 u1u3do4BBXAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEE3C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452359357.14287.3279860547555585674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc91eaa274debc41aeeccca6ec42d7efcecfe4f83c1eacc5748b27c6b7dfb378
Date: Wed, 06 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754523593
