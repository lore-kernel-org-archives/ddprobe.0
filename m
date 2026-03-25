Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BA13F9F52
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774456494; cv=none; b=fu+VOa4MEc4j+8OLyuQiwNZUhjp43Y8jkW924oQbsQfGDsy4Ry6Wknj32AfoT6TagJFlRXcNwnC1a67xgkNwTzhqslci9jxPHR6ba50f/hhclZjW5b65nK6bUrkTrEzyhyHZ45UzOOXmbau9d2aP2a/x8YtdZt9jIgYXQCrNteg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774456494; c=relaxed/simple;
	bh=uhVoocFBfCeg1Sm9GaRjAX+pG71WefIQgF6SR3I7qu0=;
	h=To:Subject:From:Message-Id:Date; b=ZePJRTqFabopQ04tWRZibN2/jo9V6HTNV87Qj9WIhf32BdZXGAe0fhy/NgBXNc8ixoC7uBawrUTe2yy5lNt8nwT0HDwy/WLJls1CoVY2ZAOmDypoDwWjbNMpm6cNnVYHXw+HgNuDRI+uunzEQGEUhx0lyY1FSxx/v4v36XBE2Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIln82Ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIln82Ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA270C19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774456493;
	bh=uhVoocFBfCeg1Sm9GaRjAX+pG71WefIQgF6SR3I7qu0=;
	h=To:Subject:From:Date:From;
	b=IIln82QllzuhKsU1vSDyFGkc3qBnPm8kz+OuPvXWQt0FxnIKbxuYeIAq30NW8Yy/8
	 X4kyPHKZI7IoUb63FkyeM/kaVz2pO3DGbgeQwHOJN8KbITSSuvbEVZssu3K4PD0Cf7
	 lA2osdIWHXikn276bwovmrXjj6XrChq2QfefkgvGAOEqLggfnPNZyXc/5J4gtw5WvN
	 IPvM/lX90bEhfGc9w5714A8Zjg8SfgCIb7ty0mT/RVjYc2b7rULskAkwlHu9pX//wH
	 XMF50+7BKb7qrxFkJQqM7n8cV3FIi6st90tIWrSADNulBMZUjAgp0d+GrGb+RWXjRM
	 cX0sqYCy9z/sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77E5109C035
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445649366.4308.8954739414109919350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6a6e7cd5de9253c9f19f4499b26398c1463527892f68b891acbaf131c802c7
Date: Wed, 25 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774456493
