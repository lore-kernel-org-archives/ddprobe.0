Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86529BDAA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770668034; cv=none; b=BeCqg2deDgn2cnmb7ukTMA5XEb3kBiqnNuzRqlHOtHq9vv7axeQuReC92OeAl4ySoOQHa/cqWzmB+K9Tq9e/v2NITMEaUHVMmOoSxeNI3UxgrQETdH93HmqkLrl9tb3u/TP1pMrs5R14VWjFiQu11iBBBhVQgo7qZkgEQicJxAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770668034; c=relaxed/simple;
	bh=Xyoka90O4gF1On71CMITZO9VKJxO1P44JirOWQxvpOM=;
	h=To:Subject:From:Message-Id:Date; b=hZrF2ZbWCOqtDF3q8RG96v/33tTlLo4MJXVwnmGwkGnYa3gCljQS17GKJvAP3sctMh2PSA3wmxRo3rQLTkVkA1I+COd1BCG2/SZwJX02zz40gXnFM6CwfAdlXGZ9C+xphFWmw4jssTlTMEBge7j1IsEBWcp5y2jy3AN1MalwEMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RV2hQS4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RV2hQS4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED93C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770668033;
	bh=Xyoka90O4gF1On71CMITZO9VKJxO1P44JirOWQxvpOM=;
	h=To:Subject:From:Date:From;
	b=RV2hQS4DxyEjsZBnTciZHjt/y1J3OzSCeWLJlOXdw9nQFF0azLrj7BsOy5r7oxgXu
	 kQxRsaB1RKIHWVDfR3H2jLNujzTSyKlcmXw2H2nzamCNMuO/SPX7V9z+qSZ0h5TmZY
	 r4+pQT6FxuRVxS9AZXTSBu88ivbSODJJQlV1wGUMUCEYf4oURb7nId9t78jztsxMjv
	 20d5OMefb/PU2vulli9nkE8uzPz2LxWgs6M3PEWf2G/Ka5DbnuVOA+Alq+VpReYeZG
	 F6jxOGeYD3ftmfaZRqYmEDO0hAwg5aL6leDn4cpb3bn0FIAFaICHoH/visEEQ+oRDO
	 01YbiTJqSYOmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A318FEE6B75
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066803364.18571.1959930595964803416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd745b293e88acf200e8a61ce53381738660f710b971278c97a7a9f98b0717a
Date: Mon, 09 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770668033
