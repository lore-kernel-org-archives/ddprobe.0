Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436C625F984
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740751134; cv=none; b=mAQl3yWxOSJZgRQj82cQGEgs//bWFArWKENp40cwAcQrolH4fdsGwzyRkesMCMEhPg40CbptXgj3X04La5bBIYZHZ41CRoowIhrpNY/4YmdgwDYCloQ4eU5K3R0kHJ9z3fbMzNLVDJhyvVy87fB9W/oG4/LtpLUpDjXNRzrK0Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740751134; c=relaxed/simple;
	bh=4AAJfT6sHMTGvlswV5Q+4uMd97sRQlMqvxBpYsCxCak=;
	h=To:Subject:From:Message-Id:Date; b=h5/oRRgHijXMRS3mngRStzAGfsZxi7LkGa8vmhoqy4NkBQoE6RBGOzJsDnV1C2bJqFOk4CRHiI11Pn+kP2dXi4U4tBRq/qoZ4Kc4p0g9+SyWE7O2LBoj4ri+LHoMXe8hLRun2szic6mLycN3RzYfGTcfRJQfqVtYOF3lHBCgkdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Icugxw/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Icugxw/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9D1C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740751133;
	bh=4AAJfT6sHMTGvlswV5Q+4uMd97sRQlMqvxBpYsCxCak=;
	h=To:Subject:From:Date:From;
	b=Icugxw/rLVtMv2b2jAIFW+ZRjg/0ZOyHBVYblaAyJ03HUglMXGlSSzpGkCL6rypGf
	 56x6WBJsmBnbXeaQX0tzF/Xu+SJfO5f/cI8pwChcen1MYN4vWKBweRLI8Kz38yFU1/
	 m9kmGmUKj61EYzhOUMZt3LVWuqwHhPxAhWHm7a/0yeNFzDwV4Ch0DpqGXL101BqB+B
	 mr9xy2IAZu4jMpQn7xipneX8PcyNJ5w0k10GXM+Z9V5Udisx0wBaxRHM6K28WbiByU
	 +EuI7Xs57EMfAtep3xVDI6VAkO9CBdcYUQ8E0X0Vft8ShP2YbRMIqb7WMjW097aaii
	 1llxwelFwI6qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA453C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174075113368.24763.13953959309120307012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5158b364113dcd953e8c2f4dc740476259a05b380bc7c4a110d4fd2a2ecdbe6b
Date: Fri, 28 Feb 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740751133
