Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95602561D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712395097; cv=none; b=TXMKun6SxLPZBjtyqpeOIejJeFNwvoPfMDWSk3AphQqIxWHaJJzbKGSD8f5ZZtjLCciaQCemzZTQmCuqdKESwk/0Vf7CwW60TPwQE0hEB/epCXp724MPpNFhzc5cXw9OfddBXaz8Eo4CX7jn4QYTizVpz1TypuZb3PC+6agYHPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712395097; c=relaxed/simple;
	bh=lsMz642wKRGfUf8A832gHVujMmil39D2j3PMAwXJo/0=;
	h=To:Subject:From:Message-Id:Date; b=Nq1VC5c8t7TQ5tW4FISMVculGuB8whoUMR1Ew2sG99mXGM9cnf3Ja69grRyKDVFPi/9fc/ldWOrh9Ksyy6IBpTldo5T5fRconTmgYuVlTP+5A9b5977RtJUSIRCDK/EzkR2KfFjmcgfuEF3gkjEvjg42qIo7aKbEpKNWMQIk+tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1Lw0R8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1Lw0R8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73734C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395096;
	bh=lsMz642wKRGfUf8A832gHVujMmil39D2j3PMAwXJo/0=;
	h=To:Subject:From:Date:From;
	b=K1Lw0R8jg62fW6kNiM4HBkLC+gkrltnhYFLKpqh+AO969Nv8xEk/rIsYTJnhzN1bm
	 ehG9gmVBsIwDnM6L5HInss/LubqeA6HRi3i/NWUcq82XGIwTe4qPw7/MHlEg8vMb32
	 tOzPrlryP3CJaW4PpLcpDAEPErbCixdJnbVRX/F8/VBMBBLhDfwR0gq5NGOgue2lRd
	 KV6k9U3bec8XmXWl73Y7lpLBMwSf7q1sWkhNmYkccC0KW81D1iCEv8fQHlo4i/KGNk
	 W/Vwff0h+hC6gGgsnYKn2M6eYivefOYKprNgCJutT4NlVI54/WpB+nm54qu5t0on50
	 LJRu3I6wAwJ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B8CC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171239509638.4316.7561400408301003701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946663eac363ce02abb8accc3510c570df29016ba070375d5fbab87e562558da
Date: Sat, 06 Apr 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712395096
