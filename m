Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F89D26B2CE
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785711634; cv=none; b=GLkSTAZYGuDeUU1RzYcDgznOdnpr11s9R2YlIYdUB5DVAE8dxEpSrBuzC8DmfyIz/OiRSqbSmqH4j56V2JEmHPTYxLq5vpTLp59hTx35alWIpPBbJJDMD/lbcgpauHI9PZbQPqrJB7f/EFPtLn86ORhV8b2zJciKhMIVQVw9oe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785711634; c=relaxed/simple;
	bh=z7h1mUVeTZ3aQJI20BPczZ1R/HmWKfEknHQQ2C4M/WA=;
	h=To:Subject:From:Message-Id:Date; b=S7ubqis/w+EV4GH+uF5wLzPadl11sROb9jMDOV4WqkPIy3HlVAU263OuPt/XNlTGejyowEdnfEbtzK6pnOdEN11H8y42amV7Lx/XPM5jogFc5HmpVjYwLdA1EsbDZYs9Ul27OLeJJ+XBTtzjBmjeFKzbJYX8Rh466Q5fji3CrCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWkQIIBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWkQIIBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5568C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785711633;
	bh=z7h1mUVeTZ3aQJI20BPczZ1R/HmWKfEknHQQ2C4M/WA=;
	h=To:Subject:From:Date:From;
	b=AWkQIIBcEkoX426cjQonTyrmczK/fn96PvtXcmFMwfeoPtCCQ1CTJJQC9nOdYBqpK
	 zy5C6LJwU2Gzd1FvxCD5aMoKeH9mOOl21L+o3ZB0pgNxRQosnAgy0W8iIv5BFZSmf+
	 ap5Zm4OVF+LnhoJ1wQ8BFTOWRGer429hzhy0RN2xXvKHNgOTsddStVszeFzuCc8b4W
	 Q08Df0/Zk2s8eDpV9vt6RTK1HMiZIvu1Qd8Zo/pRHJpeTO3d59/qHUdUJOXjggl3wN
	 NLP3cV5bEAa56NNsZ5DYVdC+oplJByXAJjpCzQ0HRFt6M+wrOzt5YB33ASU/MzkKlB
	 H7Pg2m2w7q82g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE127C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571163368.23350.4264519101852969165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04e6132f042fb78bcbf430eac4431be0bf5bc18ff70a556d08c802d13313ebc
Date: Sun, 02 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785711633
