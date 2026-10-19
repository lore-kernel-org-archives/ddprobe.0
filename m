Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C60498E2E
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792398634; cv=none; b=haP7fhUp3SCs747gIhtxm2P59tl8ajgdyGrBBySrZuS0N89zQCM28iPQbllFxX2xATHbodY2HKt7TAVGyeuT/ll0GewWzziERO+BpGyc2vkC9vkzbQUSD2g6HXmJ32I1xWTtAw5dCIoU2qmYhjwgdsnHv2pTR9LH8uAbU7wnwE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792398634; c=relaxed/simple;
	bh=uAEvQTLBqOfAY9nHXP7Sqf0UTD/owRDOmY3lTm52Cks=;
	h=To:Subject:From:Message-Id:Date; b=AF61/fET/zZlTezWWNE5FA0lrixXQD7gTLApl3d5cg4NB1ggh5P1naP3+AoP8ul4jdl2ts7xE5RHLIqqnIEQPqzwW7sbhqOvG/NCmxy3Rpg+SQUngqW1NTg6XdujkDGBd2L4BkeXwRDTzmL+v/Tu0RaGMRp/IOE4ko5lhQQpTo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PN2w8X6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PN2w8X6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEC0C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792398633;
	bh=uAEvQTLBqOfAY9nHXP7Sqf0UTD/owRDOmY3lTm52Cks=;
	h=To:Subject:From:Date:From;
	b=PN2w8X6pUbqTLvDp/7ZTIE8WgZTiE6koE5SEKMZRX0QsWPWHfJCGP0YHfbMAs3pyo
	 CA9Jefx6EmhOM1VzFYAnzgcNAsaohAteiPTCBlU5ZTOdgSvIrjbw/i/JmwfjUapysy
	 CoofQXSEFMQMAKCtgfdogVBwIVTo5Y2+028jcwzLtEYHYVpvhaIM8mUYPBucYPLDkS
	 GsmECEM9QKGgvayVi9tHgIeOwHsFc9K7fHBnlraAxLJIV/zmHFFApfZgV6gd3UAmfj
	 JoiNDEdu+ZeDPpZi+fxLhW3WN/M/QilHEOkg6H0dQsqGB04urNhRuSTD7hFRgMQPRF
	 LA16xhW+GQBPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA982CCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239863375.27669.16089685802480156424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeecffe72159876116aab214074d306a586b5084252ea29d6ac44d455d13b3e6
Date: Mon, 19 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792398633
