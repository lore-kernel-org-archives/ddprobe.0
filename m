Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D352EBDFA
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760282995; cv=none; b=uPcYuNMdembEYo4WpW24QtI5Z2WIkfNGVnlYoxsispxbKE8aUsT41nhjVW+LA+vVAWlqkrIAZXWy/QJ+TMv2xU4ZblrgiitjczKmOhiaOrNs/Yq/jUtJuzgy5uLPQiERY54B51zL3tr3KEeOsiKuXAn1ExfgN94McGEnDdNQ3Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760282995; c=relaxed/simple;
	bh=jSQkesf+srQ36d14puuvSBkWGPXFT0+sOQPv/c5Wy64=;
	h=To:Subject:From:Message-Id:Date; b=CnQfYQhKXnC/D6c1NFe2gXRk37U2Y/RaRksnksuakU5AkIfvRgde92ARA3tSciFct9INnTYhB/9uuq3rSD8wpwhvk/4UWRO8KS1MMyjGp2+GXXwG5js+rViOGfmxbij5OJ3AnFk69FWOCoG4bSWq6k1OfNH0LbcjA+gQDbtZrk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNvsO8fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNvsO8fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DB7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760282993;
	bh=jSQkesf+srQ36d14puuvSBkWGPXFT0+sOQPv/c5Wy64=;
	h=To:Subject:From:Date:From;
	b=FNvsO8fsDGjiV8rMA25KIHg7+8mM5/jRqSAGodWp+L4kSFbLyblCtnzT+VR7nJmTt
	 y27FbW/p4DITOQDs7sEGM8SZB+vLIVCUmQf891UTKA9DU8on4TgpaVhpBr/H8YUram
	 yQ7+p5R6IMrYxhF9/r4sv7+Cxy0a3B/xxEZChEXNNV6j38FxSoGFYT+BQnIicy5Nu0
	 mAUzzVExyB5A3AYcAs0WY0T425N+e+9a66bzq/7YKNyv6S4rlKCAIQhIxchaGAd0GS
	 5j5Ssla1TJYrClOkzFTrmFYVxkCisGf96usQ0H4AV5Kks8YoG41LJG7tY3my4PxPv9
	 kSOISkQUoPt1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D3CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028299357.26566.11933586576851045711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90235e7558a80d51205edb798c04c26db0aa84b00550733ab485f91c065c3b46
Date: Sun, 12 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760282993
