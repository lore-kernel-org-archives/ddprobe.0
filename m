Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13483495E5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766727834; cv=none; b=llwDlCFhxxDiygT9R5SbGF9nd+noVn9uo5y24nvJd8C0SRXdfLNuFBvlgoPFQ18lGDaWcvoCc/+XToBvJh9mb+z25kUXp1Qapo2+9fAaNuboOBtttjeXNV0XCYlJh+2r5HnaqWOGKqmSIcTzRljDIGdm6YJkjanucGw9OIKHQK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766727834; c=relaxed/simple;
	bh=ZFIz4+hDvH3Ppi/oql9oMS/+93aCjFPQHUoILpraMbY=;
	h=To:Subject:From:Message-Id:Date; b=ovcVJndSISUBXvG3JrhU83N2bcRIXIBTEQdyM/ad47GAe+Rbxg9plmeUpZoBVucCR/q8/6emPXcVkpRWnhMkPR30Ik6gERxcOLEYS74aRpBwtI9fzD++GXtZ686hD3kiA4HTgyqNzQ72P5vDNCiEhJMRUSnWTfq//pMqWA6Uw7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpigNwiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpigNwiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9357C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766727833;
	bh=ZFIz4+hDvH3Ppi/oql9oMS/+93aCjFPQHUoILpraMbY=;
	h=To:Subject:From:Date:From;
	b=rpigNwiZrfGDGuBjq5bzJFT8tybK/hAaDZ1k8ThZxlO/8Fp7CZHPcJ33y8/A0rSvH
	 qszxfqCEk8fvcYTYeSD/a4uoxHSOhkxA3xpZx4yYHJQ39Jfst4DHE+O693j2/3F5Ws
	 xFW92zLOLWXaE177osc39nwwQH20w9dcn5/9rQPUpkxajQEmjnYvvlqTDktA2uUnjf
	 cM8XqgwjKgbbPivvy+9/+a6MKU24a3abDyby8+5r2X4pTENTmoGMqXF55rRgMFNhfi
	 QV7dVpqBO2KfzyXSTva6fcp6Jm7rbpORGfOpE7sOe3Dn/4YNK1g+BWe02nyvZ1IDzd
	 w/iR9AMyHn6qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CFBE8FDA0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672783358.11670.13435288184014997975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a218f9a83d1d2912763bc24983641564ae9fc0bbebaed747b2764cd479b7623
Date: Fri, 26 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766727833
