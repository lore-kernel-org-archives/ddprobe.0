Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5221E6DC5
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753535394; cv=none; b=K2EA2PIkIYhiWsu1cfVXEGlqzWq/H56W6+tN4WauM6TBmLzsCmK2QXsqm5zeoyp6BE1jdDh9czaMoyU2sLYlu58vIYHsTYfpSt7Jqcx4j+rws2sBbYOeQN7QmxM3d7x9N7yxXQbzw8ZyzOmSWMEXNjzynTmYAzCSp0LFC7mcMOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753535394; c=relaxed/simple;
	bh=yNWadtNGcZ53o90nvKMe68N18w3ur7KyKH3GackMToE=;
	h=To:Subject:From:Message-Id:Date; b=Z1BJBMypWWXwXF59rmsfbJY6SsDLShzp+/T/JwblEyI1UYKMzC8Hd7ZSxQdF6Ep5KgSIEraDPLtglx3fF+x4rX/F7Xnhz1iN1/rb0JWO8GeGA0c9rx/gKOwZsnfRdiasJcPK9zTn7m9UMSBqfstNDMnhC6AmubFPFVsgk/fDjcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gek+B8kN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gek+B8kN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A6BC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753535393;
	bh=yNWadtNGcZ53o90nvKMe68N18w3ur7KyKH3GackMToE=;
	h=To:Subject:From:Date:From;
	b=Gek+B8kNWHK6V+bpCKPOmmBVNlXtIc866DcWI775LT7qlhbw+D0Eib4HmIjS/kAOJ
	 yhBsJurw7j8Ne738KXYTEhDcnTBWG3L/IbRdKBCHAdmtHFFk90pfbkgJA6n6N3Bpn9
	 3jFRm6hko2k5lqYeQZgv2MBH3vvF4KeQT/5fXXNNNAOdOKWCmG7NucFeOcVxEU1voM
	 ImY9DjXcPJEp7OCabONeZKhUHaDTWqT3AhQs9y5fFj1lULWF/lMC06Ry3wQbP4/Z+G
	 NVT62MOfVja6EI2UsihK7uUgBwT4Nr8vwLq+TQH7F5aR3AHDHsIj78mBjR13KZroRm
	 Ln899EbIT1+NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94481C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353539357.19142.1745061583806443111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5396570e561a8522f86fa623478e2b2fe347a9bf475ae8aa0e1e43f76811f487
Date: Sat, 26 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753535393
