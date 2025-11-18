Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908431A0B15
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763507514; cv=none; b=IU73CMh+wFrKCVlTKY1UXyyQJ5Cy2ZDoekS2cnu75FPqD5mUOxLyf2N0kRqOjeUQqGhgwuiA2U3M6K1+QVrSCTrOCE/mbmajbRao4J6Ii6U+uQFOlR0jHs48hB4flVL0wkDEkEgEFRtM+CTwGZw8bdk8xfsm3FZPDG1W2PFHLD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763507514; c=relaxed/simple;
	bh=5SAd91fwDJOvb/rwM5meEY74rB8LPO3AQhM0+V3LQ6I=;
	h=To:Subject:From:Message-Id:Date; b=pxs3AXFnUDfpruc19+W3S2fHsFgMl04b4Fv3al/8Y6dTBdFlMo23UTCFhankSvubK2bw2b/SY9+LjtKPYQxB9ewmsXMNU/Djzd6Gk0GBGmsCvVH0dmkTEPjKnsZ8is5ciK9ejKB7Grra3yBv0ebS96zKe3aaQ5xz1gQazDqYPDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYBH5oee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYBH5oee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A9DC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763507513;
	bh=5SAd91fwDJOvb/rwM5meEY74rB8LPO3AQhM0+V3LQ6I=;
	h=To:Subject:From:Date:From;
	b=EYBH5oeez46wV91oR+6zwwe/MqyH6zSnc584YqoCIDIv1CMOxiq/UwrVgVaDdeRKo
	 oi2WOyd32lZXeva7UMys/P+Rv9mAm6TO2ET0FoW+0Ux5WOIsW4ufkXqEGalK6fST7I
	 7O+HUBFlP/eki7w6+/jooqZ/8N8rKzw+47s0BP1YwZO0blG3VnDFyylwvtuXtBUr20
	 Y8vXoNW3hkI1oANoIQExWjcszPYoo7e6+HDwXEYX7g0PzNzPkP2RIZYptFpHaKFwQK
	 wHfUAlTYQxr/jqIW318SLeJXjR963CGO8b+pyDzGef0t3IelL+xq4JO+acihIkQIL2
	 qWSdf+Ycq2U5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C8ACF2560
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350751359.22215.10807942232341453568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095669f9031be7a77baea41020eb24b8b5a9586cd5558809be0d8bc29c8c3fd7
Date: Tue, 18 Nov 2025 23:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763507513
