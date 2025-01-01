Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370501854
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735746354; cv=none; b=oNAulULOdro9JSm21bQw1uONDrMMfS9Bnk9GvJ33xP0IAa1RDuNdlCJTVbiOjffCnaCbelk95AQHMFqVROoPjUZPMub5FS7c01JUJM6qPeIHDKczli8Hi88AKFrr686A9B+xhOh6qhXMDjFzNGJsNA5gB2IA7Hjk4hqjHPmueR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735746354; c=relaxed/simple;
	bh=Mm+JDOv7JVlBENSvXTqEZdg4xhuyUs3B+/MGQSaUinQ=;
	h=To:Subject:From:Message-Id:Date; b=B4t/K57vEZQfxVEiFkGSsjLY/KOnr1nzmGAY+mbhARtpDcy6zU9kHoIbp2EiM2GxXubzSGFNcPh6w2/4atyxJDgfQtOrPbj7D6QsSXm7gnBd9ATmswy3ZBoUUempccfTJ8YBGkji3SQS7l/84vPPpFdMe3h3DjdoC3Lf3gDBDH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olOavLUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olOavLUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EF8C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735746353;
	bh=Mm+JDOv7JVlBENSvXTqEZdg4xhuyUs3B+/MGQSaUinQ=;
	h=To:Subject:From:Date:From;
	b=olOavLUZPvSnTt59RpPYQWMBW1xq75/HQH/pHNW33dznwaUxp8BeVIb0ZZh7tivW1
	 A5Xt/Axdm0emq2DK5xceUcyIyvZpEtZmWozrJJwG6TgK3yXiBquC5uTHvoqyDwaJiR
	 EYZ9PuqJPEqtHzL82GTBmN0hDHfZlBlAOBB15y4AYsjXltic/5WpWTrpSHNSUySY3j
	 IbNhTi1VSbuX4RdjAuBesBXq3AeItyNjb7bo2/5b/wIr56IP+TYbbO3Q8sVo98zjWp
	 7BPdmfd0ebbIul/RJ/LPXFaks/Bp8+VqJFyLV8aGQDeY+UWNGW+JlfLL7GY2tiK9/f
	 p921yGC2nig2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A46E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574635360.12074.11920118543912638349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d18595a2a91465e7c0f6152d9c4204cc96bba2d565bb2b23f99827b88b1ae78
Date: Wed, 01 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735746353
