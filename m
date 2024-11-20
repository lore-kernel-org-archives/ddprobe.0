Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35549AD58
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732070154; cv=none; b=TVGIf46vb7nEKoYaUFgAbSQi5Oiiz20zHKvIZatgwwa7ncgS5meghSvzuTkJHAhYZI36HB9J7+Og5Vj9KnBmqaLMClTQCS0Zdwd/y6PGJXl/ePsvMbuR7gDR2va7IzAeVtOYxiwW7hTT6co6QzEdYXZiQQ+06YYY2Elp6bbTpkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732070154; c=relaxed/simple;
	bh=g9GG9ZpxuFIBaBcey2WviwQvRnK2vIcHEE2NOyL4HtE=;
	h=To:Subject:From:Message-Id:Date; b=uJcqphORHPabp2IyRdSPHE7ZnCOXljFosPiif6JjBJPbpFybPkxn2KdebJOOAEtREIleGcELlB6q0QKdAjylR/SvcjE5R/MgOf/ZrdlitM4eYQyuzCUuBos5v6LOXpQ37LqJCXZ+0u8vgIZQHWWqO7pTHb9o3E8Ay/aKcYBXmgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJYdv4ND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJYdv4ND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9550C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732070153;
	bh=g9GG9ZpxuFIBaBcey2WviwQvRnK2vIcHEE2NOyL4HtE=;
	h=To:Subject:From:Date:From;
	b=aJYdv4ND4Mj4l2IVbJyi/xILpXKObqvxCP1MJXbVO+oTQzkc63M7B/mNokseRWBiI
	 INKvMXacwMsGcENvyW0VYOZy+TV5/DiFZC15Byl8oeZp2wgtJV1ndxey3fq6P2Tslh
	 WKZ2wJm7jIQFHB5IvxxpDXGlVg/P8eJhMPtJ5dDsLgHcigwQiL2U/gi2A9XxzEbT79
	 6bvxmYiRWs0QrgHQ0jrnhwPs39NJ2xkPVs9XCWE8CmejQDJmzwL70iuYsDX60SlDoe
	 iarzT/DQ1o5jFqJfZ2qj9Ymfiy5DjVQiztJY2XqjqxsqqIW4UqspTbyWc1BGgg2O2l
	 p9QXjTh8jX7cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B4D6E2A1
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207015360.12177.13217347266813052130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa87d122a59cda570344e8efaab8aeef77544d1aeb1ae4e9cb3861022ad8ddd7
Date: Wed, 20 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732070153
