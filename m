Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA0E3BBFC9
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785688834; cv=none; b=I+wNVJFeAFiJR9spmc9LoQaNxVLOw2ra3qDJl7mEZfru4Hi1qI9eWOdkEestEzouxFpEPTe0f9gP7F12s7F9QKRla3F7rw/F8BWQDwVgHgK9bhuEN+SAICunCHDiDLP40qzuMjfQCbQaSty9VTCUw7jRRgxkr0E6NwZ8foYVUZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785688834; c=relaxed/simple;
	bh=iG5MiRo7V4kN04/CDVi7Yfku6c1Krynx6oNmhJWL+LY=;
	h=To:Subject:From:Message-Id:Date; b=eiGDVhcZPQcPxtF5acdXho21qp+FqLMY8Po3ZbJW7qolZbyqItqH2G9VpQejBttXjfklRM5I8SM1NQ46oBG/D8HsHkuhLJIxwW1D4OfcE1DAEyffdW3N4I/TQ0aNqY3eoOYOha/pk5iJ8XFF7GiSNEXoloFhc7s7tz0ZftXy71g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4SVGX58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4SVGX58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC417C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785688833;
	bh=iG5MiRo7V4kN04/CDVi7Yfku6c1Krynx6oNmhJWL+LY=;
	h=To:Subject:From:Date:From;
	b=Y4SVGX589qNs3Y/HXAc/nT6EOJtL4bNhLILh9ASpYRjluL2p9qlFB8rRcWWCffVj6
	 eMdFeeg10gHDb4DllDpl358RVrk/SOklijbyDj9+t05fTObStKmuNQo+RmdeZQ/1kJ
	 dztRdBeZlinhUGKRGNSjun9lC1s/isW61r9qgRy3y/MyBbJI5TSWWOfbA3eHnSuO4w
	 ldZkIU7oLF4ukTrjR/S68c59kS1SJH1nk3sU7BPrQhYUhemWJ1R4gdBJFq8ub2c3zU
	 MJYm5E0JioM/vEQIeeDhfdFR8ahOxT+YtlPG7KeBzwWsW6dJbV3busDbq11O0cNKq+
	 H9odPEb4GbekA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE30C55179
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568883369.18157.10931271774000620785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1940d028ca595ff433724fa660aa8310dc4563c9de9f2dba298f313746fe999e
Date: Sun, 02 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785688833
