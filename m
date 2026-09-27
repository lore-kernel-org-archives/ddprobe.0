Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF053D955F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790512234; cv=none; b=MAYNf8fQyak5+THbAHEBVAfsllY7hZP54GRWXU8r4YHwa8+HqAHysqBKS6pxVsaYBmVODCGMvB8j6bBNonoMN2bNcKU+b/qNGFWrO0AkiT79FNG0MTmxaegtpm2jOd3YCP/JsvJy+MSG5XleZJzl7sZFHolPxY8x5bgbz5vIj40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790512234; c=relaxed/simple;
	bh=bCFZH9Dfah6o1o5OIGo9glp2sbaltZaPdwgsqSjJb5Q=;
	h=To:Subject:From:Message-Id:Date; b=bs+Aqf2x5SFtUckyXRBsFiQoFVHqcKPNXYOlJjCfV3FBoyi5DW4xfwkON4Mx19WcOKfPhdoLG9M1vgxrvvHtiKB9GIubkyFMnnXeryU1IUoOkDw1ZxSMTyJ4Y97lpzf6zRxCf9CIimzUieB5C3T/B5jX0+PM6LSYDK0C6868O9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVyuXJK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVyuXJK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9352C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790512233;
	bh=bCFZH9Dfah6o1o5OIGo9glp2sbaltZaPdwgsqSjJb5Q=;
	h=To:Subject:From:Date:From;
	b=jVyuXJK79Hw+Sn0mAT1K36WJcLubNquwwZdfuIEaleGklbdpfir0JTTmEsORtrp23
	 nSZu0i3Tij52oLwKJtsKM37YOcHAfYIXLu3mLALwOoplBotw5ZenSdJSKOhPgoTAKJ
	 ddlF21edoZ3wIiVXZkgMWfdmmbH+YBLCd/QUWYBp9qZMNhp8sD1CzMUNsrRwNXnqlO
	 HKmGK1SRVpIKGp8U1fkt2Z2iJr27luyFyExVrEiWi1HmzRhMEl/1fDlJbT20dxaIY5
	 rGUXo5WeG5RtPtFdggBNTI9kxwUCNbRrybtckMBI8EhyCVOjYxQd5PeOOypQJfO8+s
	 XDAYvmGVQbESw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16EDC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051223370.17464.11744343032103594077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a8ddbeacb77c5f45aba2217cbb90144430d424bf60a2a5405add8e78be1b68
Date: Sun, 27 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790512233
