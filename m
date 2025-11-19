Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2C9313E1C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763535115; cv=none; b=tWDURi64/EqBoIdMiNzkrJkTrvvtnu0L3PM4D9T9t7oZz9niYSBEaXsufyPlh//Ma8MsF2w7FYgPwMc+ebqYI4diT04NTYAg/nbOYlsl4zVli8lCiHjcBlgISKGpbY3HMlXUJK/eAdIl3fJpxpB31bgQEWYZyPCqvgHVYpDmO48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763535115; c=relaxed/simple;
	bh=oLKf6m6wGY5bIrjw3WWNjnRjozUXj3gGBH8GjHOBLVg=;
	h=To:Subject:From:Message-Id:Date; b=Ins40jPM6V63DiYDSyCFsDVG/E/sj2XXbHYZQMP1oUi9KnJqKDHQ+Whna2YRQSl+6uAGmpx3wx61tNWB3atzyZlgEkAU/s+VTTPBGaVtuS259GvCeiP7aSe3T2oLsa5CQ6xgN5IrcEG+Nv7uhM/63l4r1aw+G22rhjj+X/u4Vek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdXhgIK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdXhgIK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D15C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763535113;
	bh=oLKf6m6wGY5bIrjw3WWNjnRjozUXj3gGBH8GjHOBLVg=;
	h=To:Subject:From:Date:From;
	b=CdXhgIK4lRg57Yre1PtqOyjZ7GmZv8jHGs0q9esE6JKUDLtwcJpj4zn85fP9WYiSZ
	 MKZkqD+an+3ns2Fh9SaUN2163btw0IpgW8bFINxQKrAYNBK8BK/F3NwHPdYpFPKS/2
	 PaCEgjD1OrWVKq8v/0d0oFjpi7/vX8UG0E6uqysMbISILp/LRuJQrPy8jRMH5MVVlA
	 E822ESNtj8y1+f6Sq8Jwi60JwVWh4Ey9xsjpZ+ri2YEuyZT8slC2hw78og1sA9mihY
	 l6viqa27GNePEGFIXiG5A302KgvabxQ1y1E1ak9nDyYDsJbbOG5FP9syUzmJcNq6e0
	 EA2IFzDUwfOeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90219CF2588
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353511358.19467.17703916598490811969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28701786917dc97348407e975dcc87bbe8cb6c276e5e4b836a790758ee3448ad
Date: Wed, 19 Nov 2025 06:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763535113
