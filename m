Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1447C314B85
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761866394; cv=none; b=FH8+YaEFl64vtsFa6TDlWGDOt79Z7bR+47BGda471x7EtXZ24XKIephhQ3CK/GnFZ2uVy9nlsFUaVHJKYX0y230O9dUpXxcgWcC0OvN0CpIGNP4NXl5OmXNuURjAMQAvMKiH/OmwWWDd9ffogSRufqUjKeeerDrjg0OGjPKGlC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761866394; c=relaxed/simple;
	bh=Eb5tIbwUjfI9CbFwWJyTnY0zFj3hFDvR7rnlzO+/sSQ=;
	h=To:Subject:From:Message-Id:Date; b=JNkh++OIC6yDq0RrKQTrIsEzw3QjsAa/FHsE0ZcY1IOyLlyHWjUgrrHO2FWwDrOXmoEJRNvIE9Ib7OevA7Zmy1bgpvOP+URnfYJNEe5VnR+x3f9uNSNBercUAIu+Hq35konA2UyHrf4R/miPW+Up+AHp6KIv2XaNBBJFkM+9piw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADSA0lz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADSA0lz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14BBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761866393;
	bh=Eb5tIbwUjfI9CbFwWJyTnY0zFj3hFDvR7rnlzO+/sSQ=;
	h=To:Subject:From:Date:From;
	b=ADSA0lz55O4wcaKBljBYEeCHHBbKVLo2LVs0hNsljb9nIDRUVu83j0MFAROf72j79
	 b3eF8UQSkGAPQ1Ie5Pvkop1bncbCmn1dMOTz0NQPScqWN+kc9SLray52CzB1P2pUOg
	 qpPUDaSNF3rbLor6v0If9ySNEaWSno2MqaQ8i1kDmCIaX4Yt5o3gw0LQxIEP3hu/tc
	 WiozoRwtsioIevmy1XXnaah3kHeuKQaWvFmr1o+DSuVGn+1itj19eFMTTZTYhLosuS
	 PPmlKd5Wb9dC1a7jUS0DG21A6Oem+58jAD46+k5ClUOTyKMx1dBc1rO2eQGPPQgzIh
	 VM6YZqQaI/nJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC2CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186639358.23556.15264392430434790465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ae861d59ac249de57043c066718a7cbdf3970212058147ad47bec58db81418
Date: Thu, 30 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761866393
