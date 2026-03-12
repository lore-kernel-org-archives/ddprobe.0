Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A773CCFB4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773335094; cv=none; b=RIVftghWSU5N0d9P4Fx2r53AvU+gZ+tyfu1D+VTwHkvuhm+nsTqQYQ0bzjH/oV0T35VjQpb21GuqmLcPQ9sZo9NQPts1gv/gq2JXbzWvapJENKxisWdttIcnERkj49B4ppS0MlXw5Dsb6Bb5CMbyGzrbh5IflNsTYsqVRQclpAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773335094; c=relaxed/simple;
	bh=8VCRSPrC8tzdL/RZDAuKk93G/7J68bTjDE4rQ651BQQ=;
	h=To:Subject:From:Message-Id:Date; b=oHth+4IYjImuaIHEqcKUAK6iUGAUZUTO3qWqYMCr1fH+xJvjFckVUlHNeRLKeZscVlVPGMrKCkAp4EdNNp1KO8dBzHcMtqMhaK3D0oQRRTFYdC5V3X65dYYnRQbhQsC22Wi2Vidvv1uxTp4Iu6jOFXtGBemsWqBWxHoZ6r2bpL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d96NKfYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d96NKfYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CEBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773335093;
	bh=8VCRSPrC8tzdL/RZDAuKk93G/7J68bTjDE4rQ651BQQ=;
	h=To:Subject:From:Date:From;
	b=d96NKfYIUsKzkKq81Fwahep7XY8zpTMwFKDHk5x9qZwncQfksEob7sIVJ6yBNtp0n
	 sITiKwJVrgkTvLOM2aOt5p2IBxCNfuv7y6/NKmzpI4/LuQ6g5zfMxPZ+oLn7d3NfZg
	 jFCqITFeG+5sWgUfwvdUzSUWDLmKw0VZQWr4cGNj5ynVCkJwVNDpUDI7uLOccR0H6t
	 HI/ALcUCE+hop8VZ/UeViaVnPvROGSBfv9PYhqWM2goWpBn/IIQwD4ouPO3do7Hmk9
	 lUiOSqJSE6qOEADn01bmnJxd5gimoYHZ+1wNUN6K0+y4v1sVQtwXtJ1xHqS39f4VVR
	 y2EMyst2wrMrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF5106ACCD
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333509358.22736.17591452683400072035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5028af1e0fe356e8e28aca483007e0b835c34750c9b5bdeb33860842407c58a
Date: Thu, 12 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773335093
