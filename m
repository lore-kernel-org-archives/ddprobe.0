Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F6E3FC7
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756424395; cv=none; b=sq9EEFZ2WHi945ETR3y9inLL2frYkOMdbMLUl3htD+ayjS//QZcp7QoAJ4nUB9pL3eNitTctWc+IykpYudDcOX5iWsmvj5EMRj7t9/Ammner7Dg8tYOsJPeyVADz6J36QVcwBk/GMx7wTj/lyTmipFjNbFSz0Y3zhA3k0A8HvEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756424395; c=relaxed/simple;
	bh=7KT+1w6N+2fR/gM78hvcgxHv9f6SUxIqWIasYB0zL74=;
	h=To:Subject:From:Message-Id:Date; b=nTqCa8RagIQ4Tz5WUPOsGTwja9cZiOWcNJU2wlWQ3m97SrD8lVnmjLo2fYi+Xrh3cuWcXc8q7it4JNTYIyQ3XwysUCke4IYeR7WF+LqPTwcpbNce8+t4Rl3jjftNKIu477T07s4rCIRDxNo67rkJJxprBg0DHA5wQIxRycja5N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwogG84b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwogG84b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A27C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756424393;
	bh=7KT+1w6N+2fR/gM78hvcgxHv9f6SUxIqWIasYB0zL74=;
	h=To:Subject:From:Date:From;
	b=XwogG84bkX04CCxEWV5zD+LVfmLRBPLxhKzkkloBMtf4rXRPHwWQxtA40G+nVMwG/
	 IFTIKOz8cqUG7+XZASs+75h9SSvoxF/msfa6fEshOYmT5D0ScZe1VBkSxdHJmWv6ui
	 IHKW4vCJopsJ3RswfOTqb+qgiA+PmTU5l8X6twB7ss09YXKoMYaidVE9opygOhBtDN
	 ATbHCOBga2YZNswyILPUUt9o3Fox/tXh39ydLBKni74aBN0bQhfiF8F/M75OhzGDOV
	 wqyMpgS9uCkzcydhxhBZCAm6b+16danH6dBtPh+WmLCojT957HyQHXHXtI6nsvp10X
	 VV62RLfQGe2RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A1DCA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642439357.25513.10257399271538783142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3482e10e2450d1c64c45b5db448921b16c0cb105eaeebb6465fd7fb683b4105
Date: Thu, 28 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756424393
