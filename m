Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0BC6F30C
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740938334; cv=none; b=cdotuQhBQ0aLv5nFh2Us9Pnqp+e0KcZyRRNGxXmePZBG3qJbfa9mvsGfkNwGFI8fRG4sEKjhvw6OmGexLrLYIPWPL9b1KwES5kuzm8Vw/VjG4oCyhu3N33AzdWY7PXMCIl6B2IFOc1KieSy8imSDAuOsIGPasaz4g+BrHk6gP+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740938334; c=relaxed/simple;
	bh=YU8RoYgV/kM0xwYFSQ6qhxrn5TLPk5ctgNYrgoGPlas=;
	h=To:Subject:From:Message-Id:Date; b=GFjeoEGlP0OFIiSjZLCx7AtAZn27JtGbbZx130HNjoKs4qfLz0qFjfwPPieYS/Ol5GgRYvNJa/0E0eRV1hlNlukaYaIsh1kg1oBTCR5BFLwlyZF5BYcIye/5sOSjUYnVsJoQIDJOI0z6o2KVi9GeW7nJ1HC05OGwyq8ItWodWcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7DCa8WC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7DCa8WC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A783BC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740938333;
	bh=YU8RoYgV/kM0xwYFSQ6qhxrn5TLPk5ctgNYrgoGPlas=;
	h=To:Subject:From:Date:From;
	b=B7DCa8WCN/8LbwHtdpHYAgX3l/6inq+isVqzy6sETWEf5XmeSwBg9l+Rvt2C1T4L4
	 U6wblJGaR7RFaiAl/EXn+FaN/mcLJ0iPEN/NMX5NqPotz9MnfVsTh84ZdxvTacKTUx
	 6tly+yaMtctXepZWyw0M761yI7AYfUTsQbjJIdx316VXJdUMMywvw1OnXOcLu5NDI7
	 3jwuFNp7ddwCNWLkox0a9mm46G1Uhpq80glHDyTkU1h09dAJkaKFjk2NCPMuhJhbq7
	 aPMl40cq1QOFZIpU8Nzgmb/cC8pBJ1LpI4Ay+dbY5QlE0O6k81JSDrAr8b+weKH/rx
	 ii+fyapp9yrug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AEEC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 17:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174093833358.9242.3194248498866350893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8041b52a7ace337c0b38b193150b8c594dd886f85e41e02cede2cfa3649dbde
Date: Sun, 02 Mar 2025 17:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740938333
