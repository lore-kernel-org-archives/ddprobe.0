Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515B7EEB2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733656554; cv=none; b=gKEL0jg48bDCqBLREqHGZa60WuwQeNzUC1BDwyA5obOYZXdGCLiDp76kSLpA/i/qKc+trf256nDPP2Q7ghLN9pzh7K0/MQqyWUg37eFzmJFU9oPoNs/ljHYvswd+hqvpt08YncU8WMzkIAoHsEXXSNnuPc/JewsHUPRRpiET/D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733656554; c=relaxed/simple;
	bh=uOXM0klje9QjWlc8invwq0Dc5Ot0n4xu4v6Mj5YbASE=;
	h=To:Subject:From:Message-Id:Date; b=B0UtBGp8z4PvwX4h0sXCoCFaP/4NVusyatk3WXnDWifMUECft32sz+8q250hb1lMfKqvPTcgN3//YQglFITVT2y2aRqQ2Om3MJJDTBss21uGJc4V9wwA0N5DLUNIaPe3xUmpVGn86mUM34EzROAN1RrmuO+829spoNg7JwADZ6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvY3u58R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvY3u58R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD98EC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733656553;
	bh=uOXM0klje9QjWlc8invwq0Dc5Ot0n4xu4v6Mj5YbASE=;
	h=To:Subject:From:Date:From;
	b=kvY3u58RjAtbEzREzzg81xgjO+Q9SNWilcjBH2rL+ZjyHr/dCpeoHpyGPPCJesHKm
	 NFKheGyzNs1GG7D8DO3FHk+XdkAMlj2NAPmAxZWAmUjiJ9ZIOLi20AQJXozxWw8wmy
	 fQRdoFEp2w/uA9vk6s9aphD6xhZw3MfzuCOda51483tI6OYTmyg7qusO60dZJT62rF
	 ZJmcPy00KnFGafxPVJukcJFHGoeSa1EAt7m2SaZkmc2l1n8KO9KgIajN6ZCamN31/i
	 Z3GVCMOawD7QUSuZrUOP1tNW2MI4xRZ3QxuJeBY4k+sAjocOk5thhS3cf9GoSa/MYX
	 WLDEW2sCc5tJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99545E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173365655359.24433.5039782161966623532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5a23883751db198b7b419c64387a6014b8ef4a4ac5531c847156e119a3421a
Date: Sun, 08 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733656553
