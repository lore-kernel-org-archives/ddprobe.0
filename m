Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111371A9FBD
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757982594; cv=none; b=VhQfJDVEUL5AansmWh/Py3YBSElbq9zLILqLuqJLHxQx2oQAD1u0k2jvrSdm2kpJPiQPO4YBqtNYx5UJjTHUQIJPstATsadhjM1G/wPl5AVLTb6mb/Fi1fOIXy6pHUN9Vwto4ty4D4DCmNNmM0WQ0I+HoTaNEIY9fpMctKNJK8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757982594; c=relaxed/simple;
	bh=76pfuEZ19bcbSbsGdel9AjTrrXGSvfrESm+u3Uy/k5U=;
	h=To:Subject:From:Message-Id:Date; b=JAVXwugCNWD8hbl6hwZCQkQU1V6VoLoxxoZVNqjmQfeFO9N9tdqgbiD6y6+f54ANDYFbjyIUxBErwOqomjqYhg4eCYak3OaezD9kjJj3dJfzeJ5ClUyyJW8OvQzut6aucYpZSR9ksWMIU20WsuT2nsyI2XW/kDxLSNkURk99csA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3xPMsk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3xPMsk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2DAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757982593;
	bh=76pfuEZ19bcbSbsGdel9AjTrrXGSvfrESm+u3Uy/k5U=;
	h=To:Subject:From:Date:From;
	b=H3xPMsk7EQfxOlygScrCD6BiSA8uObnjucLj7D7tCpbw2Dy1OtCjGFOyuXcXokXm9
	 uAZzJfHGYBJurcTURLaiOd106xarioIErD0je8Y9oV9qFQNUdpj7AuXlLxTfB/Nn9+
	 NKue3V1C/7nVulmivH60qb21YSxeHCk59NiIRJO1ZTcAsjQ1Bm1BhjcRgHsKBgpXtE
	 mtQX3iotPneWdh7V1QYreJBH70D5R7nAJHnoMGSl6HY7/w5yGDJS6s3I52ChN1yrJW
	 ii+c5Xc+sGOSP5BOpbYVeduDaMvoW5lMCnmeN1cuKG8Xx2+I3Z5v7Ol+Iy3kpZ/v7F
	 gZaxXoC4s0YIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3ACAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798259358.20068.4220279916982144494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f51163ebad1b0cf76fa4b7f6d65b1f0fce088f4641d0aa7cd3aa3e2eca3ba2b
Date: Tue, 16 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757982593
