Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A90C13B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772841894; cv=none; b=gpofjckxqnaH6m3y7LReBHVCNbBRTXNClNPHTxxPreQ7agNgQxSPBqV/yW3tuFW37EYWFowH9POITyTO2qLVzCjz1Hqsv1W6ZxmdiX2wPdz38fo6GphAY8+0fTY+lbkgxyMg7obaj4nMqaszX1cYZDQX32IgXR565JflSHTlGbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772841894; c=relaxed/simple;
	bh=acs4uXtQR+z1YAg/dknpGs88maK3FVXQ+uj6dK1z4wo=;
	h=To:Subject:From:Message-Id:Date; b=TyrsiRalv2yFLqMbHlC/Mi7kg0Dh+5so85gocHy/OdxhFmDiuMeulFw3SFIp06qqu9dkQYCClP2Qx6YONz5RnjECy0KuyVoEn0xkFMGS1X9LCYixa2351lSlrXISWLivHIFh9C2aUhrxPFFRqwokdcF0GvBuMr1csHPyiY/GcTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELrUE+Nc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELrUE+Nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B07C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772841893;
	bh=acs4uXtQR+z1YAg/dknpGs88maK3FVXQ+uj6dK1z4wo=;
	h=To:Subject:From:Date:From;
	b=ELrUE+NcZAH0WjCOwNonFSbCxOXGMXhLlcZZA25oWnkUQQU8h/9WnOTlcwGteq41G
	 mbiFxlJYDRvrPVnAYtB50F0PupQvyJDhautJp3F4AAZ9y5oT+dhLb/VXDKFnANDfB0
	 2lRHehq7eLwk4krCDVHvL27purB/pwicilH1XMYdaAB3+rWoDU0GgQp3pKpJt5DpQ2
	 b/KUyZoL0+9kncq0HmCCbuB1PzT81NLaYaTtyc545Ky5aI93FSOyNY85pvbBDd2s+F
	 bb5Dj5sJ+VAckfm8BVH2DCbAoCs+0TJYfNtsYYYXu2aofouD3o6lWstljeEjAnGqzb
	 DTe15QsyzZNUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE28FC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284189361.3663.7893315565953776990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298c787abbd376584e53e709b4a5ecb400dc75dabe7a1087afd4fc229e620c24
Date: Sat, 07 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772841893
