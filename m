Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B570135A53
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760187594; cv=none; b=kYxDZcy1uon88g5zXQpuEDoNnTThXpmKuM5aIK4gZWIGrjws4uJYxD3yGD8Trt091B38qEZ9NHFJlrlY+PVDV+FrP8IC5A9nKRqxMosgErkGc2S3I/IHnMbn+dYumPaHNUBf/7b6K8EHuwQLlbsVpKSI0buF6RHU950BRPRMe6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760187594; c=relaxed/simple;
	bh=LtuGWeVENWp6Ru8XZ6Q/1DrXktjTcwS1L3DH4PyTsKc=;
	h=To:Subject:From:Message-Id:Date; b=r8bW6juLAsBikVsPfEaATIN4/zuJ5E81r6vgZZHzLp0SnivlPgnkzP8NGcayjnvLx5kXT/uSF1OK76E0vy478OiC09YzSPWedpxhGxzkKehhozg4AchVVv0mcG8pNHlCr3srZ3Pgr9HLIKb52m2g3CBlYbbuYmUOrZjRPhjYY2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGtE2Wwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGtE2Wwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12FAC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760187593;
	bh=LtuGWeVENWp6Ru8XZ6Q/1DrXktjTcwS1L3DH4PyTsKc=;
	h=To:Subject:From:Date:From;
	b=GGtE2Wwco0YN+rU9/8GSc1/K3qax9DZ98PP8AvPzAKTgDvA595e+Zzj8bGQn8zERw
	 FpUsGCy8G1dmb/wxbiE3X2Pfs94aTfoaUP3KXmcnTmJiLBCiOCNTOpu5JQk0tXVbvn
	 WTR76IbrFrz3icKX9c18l6K071BCIqhU5sEQ+rJucqA9PXB/oE2wDNqrCh9TnxzWA3
	 P1MYmx33YkiBSc+bc5EYyWmhQ45OTLevDrrypRc7A3SEOpVKJWIvBcndBzQyOXLBiH
	 PLk8t9Ddq8L5syzYlDfdHY2VVCyosn3ci53ppXugKW4MSS1TkepP7QVReyvDiaf9xn
	 M8X6vzNBOhT1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE5BCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018759357.24461.1411738603036858601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e364d5f4ff003a6bd4c5a123dc1932008e97016e4a358ff9d9b01b9a2d6fdc31
Date: Sat, 11 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760187593
