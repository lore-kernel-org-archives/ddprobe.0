Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A06C1F4616
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750609194; cv=none; b=S2fHNVtYd2rCUkhkJIrdl5/UaegnFtdHSseaTIdqqpA9DwOqHOuCNwA2C72xc4DUGMje2yoJPb9TQFLo3+HIBgnygDeu2YzqXeonLyEoFjqI/yrQtqo7kRozKyj4kEQAlF2NiPzFclwp7/5xTmGVJfmktgSsTVv2yw0YcZi8gfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750609194; c=relaxed/simple;
	bh=Y0B9bE0OyOztQvHZHGPX999gL6/qd1ZfiAJRlYJwW6k=;
	h=To:Subject:From:Message-Id:Date; b=NbHKxyQwlFzRcBQ2mOA7pTrhye3fVeDrB4MgYu1erYTma/5mf5mgzzbYjoHE7WzrW3tUTEd1M/9S78ZAxJ4cMTHDrAtDQIXAMm1WQ0uWMe/BLpMUKAD3MXrQ2VMhvD1ck8n6+twdphRHLzxP5os6SPtFuGmS7/OsExQUNoBzwYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLcgrhdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLcgrhdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5300C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750609193;
	bh=Y0B9bE0OyOztQvHZHGPX999gL6/qd1ZfiAJRlYJwW6k=;
	h=To:Subject:From:Date:From;
	b=qLcgrhdyqboyfsJtUV4No70Etrhnsj4rAm7xr9LZCJ6wMZQBUJ2Wd8XsH4msIrctq
	 zsZ6bfIDEE3F+P22MeldSJ313aIUne/RRGamZUNuGn+sa+k/9lct6r8O4q8uYEu608
	 hDZSgtoxfx2dvwV6TQ3ofhv8kVKTp8Gma5Brk5q8d6pKGanVo02YF5EM4v6mbbeJ89
	 ml9A4aqs4AMBPUob1W8gtjcu2388LlgStuZoMMjuwacIDmqVSnjUvw76+ntgdl6p2g
	 zWDMd/A2VOcZzQ7grKaPOJSQbHLtVtwEiUEaLbdRPtgTDyJPHWmInwS6jC50Lf38dx
	 Gov04jX7/tnpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9383BC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060919357.5471.17687055840062307675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d283cbca7746e326b3bfc02a1a480ef47926cb15fe226430ba98c7730c50d6cf
Date: Sun, 22 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750609193
