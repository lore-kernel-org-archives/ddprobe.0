Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9D53C08A
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722984354; cv=none; b=A68WDhqASTUlmGiVuuR/LjyYOHK73xNOJnzLAe/DTcslEYwp01PBIb7LIcr9ypggaAm7MWJ/2xc1WemIGN4S+zsa7OaFNgbIMkjFnvvTRarjeHmF2PJ9cDRkgKz5pS9i99MbNP7s1/yYOpVKnipLXmbGa1pg7Koi+68qJsZHjwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722984354; c=relaxed/simple;
	bh=JqhO2f84gLwM9viMV5KO0TaaQgPYV1vyAkncHXMMS1I=;
	h=To:Subject:From:Message-Id:Date; b=LrzApTuYqyao2IlgrpHnijicLSshBwgSw1jZBUrqEfRW53b7w9IEtlPSAwjFKpdFMZz5i30FV1ggVWU30cNgFM4PL8yq//1RKP7PoLaRAGbhCEJ08p0whZu/c+LXw1jFU8n4j6IgjzOvsdHanV0GPGQa11E1UrPB/KlNJyxImDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcmuey7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcmuey7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3578C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722984353;
	bh=JqhO2f84gLwM9viMV5KO0TaaQgPYV1vyAkncHXMMS1I=;
	h=To:Subject:From:Date:From;
	b=mcmuey7zpbgPyGd0uupE2CKLHYTTudSotWP15ujgEr5bx/6GuCqMqQC9vCJhfrIbl
	 Fn9DsgbK+BryJh0bMpqJ2pQmlJM/RwRnZBOA7LxbK3M2wObJIw1G7Ypc+P2vfn3HeC
	 vOqORhD+QpTEXeIsuF/FwrcResHBSD58Z8B3Bf6ux/TwhLLubFYSSP/tt2LAWYwHMC
	 8RSbZyvgfPuYb8zsYfyeUDmbi6fQoEUGxv4ymSYZJgs20iFLPnJvNjTbtkURWm38/q
	 BRYc2p2voYf6b2HUhMVFSl1J4C4a6X0RmZLWeZYkLzVnwxzu5DMtCFTDz2ajJOG1rX
	 EYLhZyV9uY3XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E60DC52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172298435363.13616.8189544113293423649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4acc15907f8b1fc6921d5550c10d7123ba85191bf5f2b7888508f8f4b222909
Date: Tue, 06 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722984353
