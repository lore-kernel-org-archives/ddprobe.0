Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421C221A44A
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743163194; cv=none; b=F8L7KMJyughCT3e3rBYCnyZA20uAOOevS3htfi7j9GF3EJMOzThhOdOAw/HglvS6cA7Ad2zp+sNzuUb5v4z0Kw6MiUeDk/89EOHVSxXVUBWVDsQmtCa4mikkiQ8am2Rn0WUR0eIMOLCqEDrarqcH1sBvUH4t5yVkpaSfdPYbG34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743163194; c=relaxed/simple;
	bh=UKGHFl/t6gJsX6o+ZSh+W0F5bNrDGA5g57dw5hB24Q0=;
	h=To:Subject:From:Message-Id:Date; b=AQDNzTVy1om4li8AftSaob9R9QFyO4CcZEkDbkQCWXJIKzELR0ESI5tsRLYYBmLCReoEklqz4mqr6qQbwMnBA11x/pbTSCOtGr/6R1BggBCE1S+FIeqVaOg3wQpBJn6kNqx4h2t9erKPe50ckhjwSIudZjw+DuN9X+99VLGI63E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hiz8JsNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hiz8JsNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4889C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743163193;
	bh=UKGHFl/t6gJsX6o+ZSh+W0F5bNrDGA5g57dw5hB24Q0=;
	h=To:Subject:From:Date:From;
	b=Hiz8JsNghihwugzRc3c3DP3+xpJGWUvPoffK15SD7A2VFMc9pTJ1mGkBYYmeygb9p
	 /WV1Uq59rOEutkM9FdjHsR/8VqIU5KB/FT+jpaCEh0zxHn2F2SObxyKH30R6Ag6rGU
	 0i9ct1B7Z3yqUelH22syUuH1Y0xsEgemt7r/W5VlVB5ffEfJ4FrF6wNWeFgHlA0vbu
	 zPk/EPEI/odV50r0FCCjY+FwBfAo4Ea1kOQIBQxMDL/0cB1cvw42lCu++DB0dOTCk1
	 ihDKkpuRoHO5UjwgdIRt8B3txfsf6C1sJyLn94lD/narHdrmN2YNzqDCJ4L9L+z68a
	 wOr9uCr26G98w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC2DC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316319363.11480.4105703868408512671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bfbcddc7db639ead8bb1630c421db3400caf53b83fe1cfe6400d6828f67317c
Date: Fri, 28 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743163193
