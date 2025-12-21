Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC073A1E72
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766295234; cv=none; b=Hvwtxhet7tz5zMDO4RZWsya1KS+C3UnT95U1avfxjsMcSEK+dGDZiavsY0/kKmJ7Eke0FGwvrfwgEJ2hCl69B19V5vQ7K6jOpB0KY6Ehcwwo61esJwb3Gj67KcVPgdRvuTfHd2ympluR6Z6pyNLxhPDniX1cqbR5k2U8al2M1c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766295234; c=relaxed/simple;
	bh=WyoCmV3pVTGUY3/57GhVWB1KW7U5x9WfuX7stNW3I44=;
	h=To:Subject:From:Message-Id:Date; b=oP9CiwoiKNCov7tLjkSuXZ7PtzWFGfPHp6TUyy1vb2x3JknG6K7Do5Dta7hxD1+6txb9xkX9eOpQEQOumZhdq9hnwzRHfroc9luvgY5rl24opdFvc1SeJSDXhldWmrpmsGMdgVhNjeld66WYZMmkyHk5+Q80cfVlsKUgFDHBMbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFOo3Ud/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFOo3Ud/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66AAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766295233;
	bh=WyoCmV3pVTGUY3/57GhVWB1KW7U5x9WfuX7stNW3I44=;
	h=To:Subject:From:Date:From;
	b=dFOo3Ud/+1igXtbWomdenrnsAg85b5vtISFThrVpj1zwnsncbP9Lf+owxznM/5iLi
	 RezCNoGxxyHXJ91yyOM/DwyBGbglss4+ghNI5hYfHWkWPVasj5gW9bYQZdWc2PKqvb
	 0N4Jq4LJ2yv5EacZZoY8p4k2iFAp3hMAiHbml0yuHn2IsStsVFL5eRuo+ypmyTailT
	 IRWG+3sIflvKiVzk+cKOTR2damaFdeyh933jOVd9RwmfgBq6R9ZAwaaBrco6HEsEt2
	 LlmPRwRCS9pT1n2obLlNNRzLlI5VEhUwuQMTrz/we/JLK0ptDsGSJwaJFBYX5m1m7u
	 Uvd9hFfv+GBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D54D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629523358.9285.14142723540417809015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c7fbc5ee9729fdd54969944ada06be41a4880afe262f7cfa91c6024f929bab
Date: Sun, 21 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766295233
