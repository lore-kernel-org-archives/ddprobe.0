Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319C31A6829
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775773654; cv=none; b=H/WqTe/93T9rdOUrF/Ydk3sApyLP4cTEeO0zayOAg5RqAzgiOQMBUiyz8AOoIhwLRjAAZPnGFqWm/DdeJZvCZwSgFkQ6A7Saq0xYTmLo175QQZZYtwjf7ScgUa6CORQYUZvsWJW06wMPiNKf+HsASajzXh9NiM2imwCWPxe/gpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775773654; c=relaxed/simple;
	bh=V+kYIYDE0th+41YDS5emUZ7BpKaBwhvR2P/qJpw5Z7A=;
	h=To:Subject:From:Message-Id:Date; b=h9CDhDDr8chJyRDJQbZZVmzLSv1vR52EhDK8aJiP1DvyWPe6kHEWd8F0L5BkZ44BK5JKlVAEdJZC1mIW1H7899LdeBvz5wLFKpfNHGyTpykub1V1xPYHXyL5MhdYNaQg8LjgD/UzePmUzCWCKdgcNABIgREZjOT3s3fXQljKup4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+6xmGE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+6xmGE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB2AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775773653;
	bh=V+kYIYDE0th+41YDS5emUZ7BpKaBwhvR2P/qJpw5Z7A=;
	h=To:Subject:From:Date:From;
	b=q+6xmGE1H5cHfyPf9T4BQ3Uw77UYsAXO03diGNn9Und2raklOl433zFKx4DNFHUt0
	 ecCqvZwuJup7uH3LEhbRuZ0mheruTCE14vTHIpn6DMKyxgBFG2Pt4eNaHDqcDtNKlE
	 zZzTdVc42L2eVhG7OeL2u2UrcBUj+NMpzC8/1Aa3/suYcWHEg97Hi9HQxcFO3ld65k
	 ab+bEjCNZmkDYdLuWARUVgzVFnSSaO5eSYLRyaXJzBvPPT4cI4Oh0v1OLUX+eGOHpm
	 0voF6kF4YVeJqUGWEDxPdP72y58rhexh5yKmzjj0Y4K2/71e1mZH+JrEDZM8VcXE+C
	 be2zhqJNqYM6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCA0F364C3
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577365368.23920.427013463925348210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8856cf3fb62dcc4867543953c6f14aec25fa72a303760ad78413cb0935176653
Date: Thu, 09 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775773653
