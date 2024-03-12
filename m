Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E301B1386B5
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710270497; cv=none; b=aPWrW/eIyAVIW2HaPTP3d+sL58Y3PMuqza9hUurOjaekYzpubOWV4L8YRofUsPRZZjflCnzm3/Zi+brFNJQum1RU9UFqEddBGT5jpYdU7s97O0MHhbAxi0EPEa26Z/0dgSH2xFzwSEaoOnUk3WkFA4MZTOWhrZuEx5obmqDV4Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710270497; c=relaxed/simple;
	bh=aJ/2bv9fWCGHhDLiWHgA3tyR9DXpMWHlNO0AxyFT23w=;
	h=To:Subject:From:Message-Id:Date; b=YirpLMlLML2vXcN625QCnuxZGFUhEflN1zx1F7wWe7PFXlWUs9rTRoVWLtwo0xTsKKARK/CFFv/kXx9qPz5x5k2Ky3uPeXkrwV3Xn45g+66kdhuQb0rGql343/DN3l8nFF9RFlyNsd8cGUVF+vvhBvL/gDVEzXdy9eUJg7lsN+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNJbog/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNJbog/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81CBDC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710270496;
	bh=aJ/2bv9fWCGHhDLiWHgA3tyR9DXpMWHlNO0AxyFT23w=;
	h=To:Subject:From:Date:From;
	b=jNJbog/8GfwXDhc39FWdf10yrK+lLzy0cHPoGLeik3spy0X4+OmYMzzTj4ggHvaBA
	 NMbsJ8xAqYfVhxp1SitsyjBu25hUYEY0iS/QAugr0Vjuan9SNpOlPUx+lx/PVvFP6X
	 0Ii3yOrIIRUUWLLoZllyROOAPFrliqZsk238R66RAYQMx6k9iZOpDkQ/NyVsGOYKgj
	 eER8gw9Ardi3GQA1LS3qiUF7jvuP09CpebuB2NAhjBNziduntOaY7DUZLYnpvmaKKe
	 Kekafx5TFFmlJnJOkIxpFetTTbB3EhhncFRpPNdhbLaayxGMTnK6jCBD5WQWsHWqEu
	 v3i0kuBvDjeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6553DC54E5D
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171027049640.19035.17989161542450613890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0746100a9d3f96bac5aff2318b19b067aa872679ebf429e2822856fef580d8
Date: Tue, 12 Mar 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710270496
