Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB6C44C84
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713775223; cv=none; b=lvNBQXEZQQ2dMVarrunNzzJgoNcGSDi7K2Fe6am7U/kN2FjvbdOCMQCAMUZqtNPWbBQAqX3Xcnm+0P05VuTW+9iO4A85yTpS/rGO0DGaMeNYedWoDISHe/DgtnCDJaqgxGsZKSqylHv+danwgVq6vCliLKfCOcc0KlErTGJwrYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713775223; c=relaxed/simple;
	bh=LZ6Kjm0wLR9pWpzd06d9LbKSabXq6Nww3Zd+SIyp7pg=;
	h=To:Subject:From:Message-Id:Date; b=OjWwXCGo8JGNNWildHJ79z1LQ9kigQXGGFRihd6/h9irLuC7kGg/GAAh4hCbAMWp5P2OMGp7SvZ4c9M2UANm9JdnBz+zIxPrfVeqc83fHvPXcBaub4dPPqXwqGYVhmsLbUBtyhuOkKpE2uYbYBa5dDcnatkHlQ+ZY9je6MJZKf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeNJVKjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeNJVKjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87D3C2BD11
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713775222;
	bh=LZ6Kjm0wLR9pWpzd06d9LbKSabXq6Nww3Zd+SIyp7pg=;
	h=To:Subject:From:Date:From;
	b=JeNJVKjcaFODKBeq5k3jvmb6Wk476BISuo/c+TCHfJr2RBrMoycZYrvywCa4fr2iF
	 9Y4x5hD3x64SfxTrefO81xGoo4WiKQ8+dSTl+Cotw3JhGo5B1BE30s8q64GjnFKD3e
	 +Wdi3D0DfgEt9kocV7pJ26J0K5hVGuFHo54ud6SBCUKH9U3r/3fNj15kC5xLqoMkcO
	 LQqBHJtpbV+DurjCKhqfPS2FbOMbf07Alh5ASiWB4AaE3e3kF/agfoV6DGH1S/EsVq
	 JQaWxKBvjFTuYxG0tXQNO77axL1oqnXDTxfp1LgfRGApebfKukn4lJm0uq0mxb8lMX
	 zTwNm9P2EC+Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EE8C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171377522278.4499.8781497839881015070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62f7b53b6068c6a8c6dfe336532f8377cbe48f86203ac85ad626f4dc12a5194
Date: Mon, 22 Apr 2024 08:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713775222
