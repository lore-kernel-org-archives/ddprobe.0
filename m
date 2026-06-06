Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543E93B3895
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780779874; cv=none; b=Dcba3oxjLsMXBo9SCLQCINPfVtloUzXTnlBwaYhpwtPnbyIJZfBqmG+w9abK6KPZAOPM8wCfdLMkE5GHIMps5fgk+pbf/decBuN7YBXG3OabCp5fhZPuiBre9Veq70WmXQATfW5FHE1+ZcrKHc11R3p4K0yrmAkyYEzVgBaEpyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780779874; c=relaxed/simple;
	bh=J3O9vb6nAtxhmVqPIgCgkj1GHFVNN76KTloxYek48L8=;
	h=To:Subject:From:Message-Id:Date; b=JJkje3KlVsHhY57+3aqJ6SAz1SLBV69K2345n0v0qQKiCsq3q/S3YNtkNPQPW+vLE0X7uReLbtTZvLO0RZtd+v41+F4YIAtjx1SqBaL5iW1LLisQWRIcJtaqqr6ryVOW3bGx+AL3J/mxO19oAKUQUXFooIAz7HZPi7cdQTsu4wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyGy6Nda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyGy6Nda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1A1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780779873;
	bh=J3O9vb6nAtxhmVqPIgCgkj1GHFVNN76KTloxYek48L8=;
	h=To:Subject:From:Date:From;
	b=OyGy6NdanSBQedKei+SMkmcyrrTxy5yHchHTIOHtJMMhcr8S9h1CO8wpmGL8HB3Ql
	 po22AbP8se0OOqh82lXWnxU8POktvpnIXjWtlNjz1LqZflxXRtg94dQXtUjkfeOwjH
	 m+hPpvEdQLYYFsZbU4sJesk/m6cprHKkl9JfRrpCT1UIZ+kk39OPYxH1R8boYQcDkj
	 NqfVdcEo33AN44z0UthzKiMw3yRIXcwfFvhpzzxpQRpk8720iYLTVBwD4FQpfpvWtK
	 NdscnPoKGoGTiu5XRFlB0cDwmdnbkpAon5ogUp/Cc6PDe53MB9eaD9Bd/zrNRVBtZv
	 8QWwZVLV1QNzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC6CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077987368.29531.1385427412249277249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbefb44b0c75a02e32743adbeff80e05ff9dc48401379f9b5047d48eceaed376
Date: Sat, 06 Jun 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780779873
