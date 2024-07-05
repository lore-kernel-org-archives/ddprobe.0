Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AACECF
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720143323; cv=none; b=BfzZNp9XQ+uwatRYV+TSsmbFIklGnBO17weNk+PyTetYM/7E0tIOiTqct+precYdYX14MqcFMQklnMcBHBTqyPD3BBrOjYU2MyW25Rg17zImiTLxfwg/2nwMcRAnjV6bhURZBbykMwnCEQBcIGMLgDdoXC3+4kt0c99xFpdGnko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720143323; c=relaxed/simple;
	bh=rfw9eSjX/4v3WUc2s8ujsGtoXEcsywhNbHvsPJbOA7Q=;
	h=To:Subject:From:Message-Id:Date; b=TBIE4MBMJfWmjCT2KJ3gYoaTomdOfO60Ocg43i7QniWOaFMG/yBrugLHWgzp4iksTS+fqNbg3j9kRFB3CggoDdBto0EwyKSfe3dEfFCt9nYzFSWw4LiDe7el3WUGofTM7+Q72I4ampuREPvIyUq/pG0p4tacEOWwmdmLDUnQLV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILzEWTUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILzEWTUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0E2C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720143322;
	bh=rfw9eSjX/4v3WUc2s8ujsGtoXEcsywhNbHvsPJbOA7Q=;
	h=To:Subject:From:Date:From;
	b=ILzEWTUHpIxu5550OVx98zjjrjt82FEDF2KJYvqFymwXh4YCJhPV3sfiGGohvvRpX
	 2svfwoRAMe7/VCAzCUBxEaqdBNYijpVrxOMwNfcZRYeW0M+H3WhDlMmfwI6Xw+azwp
	 TIG07BoZjbu0PSzycZDvJC67i8LVNJUEV+DsP5p/+1r/kbuFPmmVF7HoWuxyb6wMS7
	 /MPgoEjFCZdPp18nMBn/MYPZJKWm7yaKHWDwq+lkhmBLLqfm0Gov/jviQf8kmjYO9T
	 G0gQAYNY7+C/d++aFJPKk+R6gzXiMRERQC9gQ5q2gUoVcPpst1/dTcQnC8w+6x7pBP
	 y31FoX1WqrW7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE31C30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014332279.10177.1934372250080579342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bac43574d4da20c2b119790515d95dd4b0e5c532a7810b20473d399363d744
Date: Fri, 05 Jul 2024 01:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720143322
