Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219B913B2A4
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754024394; cv=none; b=YK9YC7PITanAFS5p5kluOZCdMGPEvG6vk2Wj3/vIwVD2aGjN+//qnZdMxzQrD1f9bpnKIKvXIvZyiywre8faQb1NHUd4yeX+Pg4XExKJuXvBKnCupLL+BAuBNcvWhu1TtMmgxg0GiIXqHZv2eIUiBOdX9Eu0ZsacrSjS1CfbrvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754024394; c=relaxed/simple;
	bh=08GmMjiYqnc8ItZqjRrvja6unuOVh2EvOGBjOI46vKs=;
	h=To:Subject:From:Message-Id:Date; b=loh48kPNo/6skO9XFOmfAOnaZ0J5s6jCT/2DwDL4Sy1GyBexyojS4MYmQE5vQXR/H3jYLtbvK042G3HG2UPkBrVFd499uuBaEs/TCZbJXrdJwpFxTFPqDvQ6zzQwUkIrnXEHcqndV9FM8vSEwTmGJKZ782v4DG3PBYjNoA58FcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+cYIssG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+cYIssG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6031C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754024393;
	bh=08GmMjiYqnc8ItZqjRrvja6unuOVh2EvOGBjOI46vKs=;
	h=To:Subject:From:Date:From;
	b=S+cYIssGvF+rkmbt/2KdCwjiSQKn0lMCbr256GnC6km81Kcaz17nBewq1rsJoZ2/Q
	 f0nIf5bip1v+kCBBEuUfHTP0ix0QceEdVuz2TN/RiVdlRxNdvjQndUvjCwxd0eze2s
	 z56ri4IA4rOzt/IyTEir44Vxpvnz1TbtT3eVcP6+GVhTICm5AaBr0dp+tmk5cepAC+
	 JXu6uDJMzYpzCzdZ2QZvlh+bekZkE4t0SzpqxAUYulsCo7Csw1w9F7ZUxce1dq+xx0
	 iird6GhGP/ZgOCg6pfCd32p7LE3t6WwnNTENvKwTGvWZmRiJVtbZybzLa1TeUzGFQu
	 LVGw6samkWOqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB4C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402439357.20561.12741569645416327940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40080e253cc99928a08dc0a6103aef2526a888347ea0ca2cc489ea6c2091f717
Date: Fri, 01 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754024393
