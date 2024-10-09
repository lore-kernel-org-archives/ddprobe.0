Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E86D28EF
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728455154; cv=none; b=sWZnWZbTov7JrW4YA51BlcUTV2PvcZkRlSJoMAyYW6/3mnVf3j6syHRg73eel0QT9sg66hgEilGD93ars6w5t7NBcpkJh83gVh0G2NzpzMEbbHoqwLvcMsdX2EP/jfjJE+5K8uET/2KJlC57I8MczcPSyM9d0nPY6tWimWEOPa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728455154; c=relaxed/simple;
	bh=B6+wRb0U7cRPaxTL5ECYPzQFHEO6ySEIcnrDHunwOxQ=;
	h=To:Subject:From:Message-Id:Date; b=YW7EoZkH8fhZBa+VzRlkJA/nZOFiJ8YQnPjVI/mewQWk3KQqQTTRDoYOgoAA6EHM5dy/9RvUrhdEgkv3ahzhatLZUYdviq1C52k3bCnSBLY830hJ8/CQmD8dilD+ERy8uUsWkzFPKPqSIS3JzD6O/24CoxamJhg2SDGyqMI9VpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJnguD2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJnguD2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C657EC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728455153;
	bh=B6+wRb0U7cRPaxTL5ECYPzQFHEO6ySEIcnrDHunwOxQ=;
	h=To:Subject:From:Date:From;
	b=YJnguD2DQA57kNCJbVpl0TgFSRN7VvYjU4JJ9gvLc9A46FQn7RnLPcj5XK22yu3R1
	 yzskLdwglffvmKuc/Dcc7UpPhgaIpHJDmnFPvUefMiWmie7mcB2Hx8txhKwJn9Meyw
	 jTHvakE3GMUon/4pGmRW0/rksXbHP4NTZur2yXNFGpWt/VZTEO7ksoo3khw6gg7Mqt
	 sFJXg9GE/drDGh7z6AwGhIx4tzg9nU1OHFQ2SRsGsgEcLXXIZ4ftqRn1Y2xBqOAKxI
	 9mbXoFiCj8skmulCMfAT4YmGtnnFNcJt0C+cukHmpna0QIzXRPJfv8H5he7+3azsbU
	 oR7qRCnlRYxpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A897CCED60C
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172845515366.28553.9996076915837060102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815301ee85bb0f42a1560f82faff978e35e4852819197d681564885e9fef56e1
Date: Wed, 09 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728455153
