Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D98426CE39
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774401894; cv=none; b=d15db4/glBO8j/Fu+m8AuxtiLt7EAGiLEIheievrCGApyi4F7UuI4VyUrjX0l6g1WTj9WCGMcL5mu7up7P3aKgfjVZs+8fqDdmKxMQXnPNeVbf0fpynYbB7mxpwZVCXNVTer2JhvpY//j1QxlnyzBfDje41h9csYd3ljNzgZGEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774401894; c=relaxed/simple;
	bh=XuCklS6+1pEZcIbmGGOGFgkW0KgGWN0dtopduCew/2w=;
	h=To:Subject:From:Message-Id:Date; b=dg2WHTxpZRO2PBlKCB0hQw1/i+VWaf4Dpi97ZD7XroblitfscHNmy7wPswCUE4CXcd8TVBjcx9+3mV0vIaRFIgsAUOw3n5r/VKSqiovoGYn8a9GuxT7YN10u3R6Da/BfI5DN9gaLB/3MCFRrEJ2yfCRX9ClPc1xySQWvTBpqf3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWsP+zpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWsP+zpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2938C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774401893;
	bh=XuCklS6+1pEZcIbmGGOGFgkW0KgGWN0dtopduCew/2w=;
	h=To:Subject:From:Date:From;
	b=XWsP+zpw1rhP9jzt3Yp1ka5tz178b1w4GNsExxC4Qb+MPbGtDc2ZmuahgCdaEwq8V
	 pE7e1xEASWfKEGyXgJcTlDs9J+DYzI2vZLMlt2DyUx9zTuim8GBXc7nP+zcxspeY+X
	 afxroyOlJzWS32y3T4RkDk4DNbgav8a6rZH17VGTGZPjDNJiB4tczcI2m2uADgwlbs
	 hFfjGd6I8Gordd+UL3IJ/lp5IHq8Ra16erqDh5JD79Ay2/otEH+evPT9smld5DpU+K
	 Uo7arQZMG6aZm7pv4fmfp5dg+OrTwltZTykePanFmrrxVoMTJkwDK9jEiy4IYXBAQo
	 tLlk701CrmIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDC1075269
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440189359.29264.15591972043305268968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7c6d297190cc19d32b2411bdff0a080fc59ffda72b41a4d1c3ceeb7bf9c8d1
Date: Wed, 25 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774401893
