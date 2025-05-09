Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D20226AA86
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746777594; cv=none; b=bsjC3GGKlP1iK6l70lkEtLX49VzEg4VMoWiwfO7D+PUrGfu+EZMvY02338PEsKAtiwmQEYo0snTD1Bxx7vZDDWBOO1bXsUqQjzGB0K4lOVNsGfb5yeLphQGxwUPxaAzEChdmuOB/T8A7Y1lVxCAGe20MyveIWs4j8HMKSkfGd40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746777594; c=relaxed/simple;
	bh=UTstfIRRPHcFbmXH6r+m/TdkOgPrenIiwSluaLwvavI=;
	h=To:Subject:From:Message-Id:Date; b=JDaFXqHyMgBPkh8B0xLulkgiGBiqkOFSzWV258jEVul8PUOZL80Y1wGh/FSkpknuRrrsfEmAe1BgQ1v/V8/uYyajdb+KvWImb2aRm3ymtETip+y+ecwXo44xDzYJJkqaspGxxpEkzYAkMOAk8L7Rrv5Ep9BlVc8h9I6XLsjtECk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqOJKsKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqOJKsKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4339C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746777593;
	bh=UTstfIRRPHcFbmXH6r+m/TdkOgPrenIiwSluaLwvavI=;
	h=To:Subject:From:Date:From;
	b=iqOJKsKGEIfnie/8p2xp0Iez7NmKcu4dtkEfws6XaDMqoaSdIrBgTca8WKxv69epg
	 V/T1KbGhvn+jzNW6ZoOHW48HKVu1IhEPwkB5tl+nf4TWuc0Z/EytC2T/AD7KA2dvJf
	 6tQRkDQeFr30SWX2b1js3VpKRBopSH7Jy9E42KZZ/S7Ryr7ijWzI8b0LIaFreIMnPK
	 ALAw0SM0I1DQ/PnTRo5QlzfTIU207AenxYU/JQXZrBrcgbnyvqke8B6W6zyis4fsu2
	 zNsp7mdjE+8f/y/9H9yRvP5fNFyhEvcS1E08LOXmwYhKawcdZl8ywWdvq7HnSy02p3
	 UDmPKdF5F15aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D83C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677759358.22877.17275231579160792979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e296886ab6fdc3bb41e41d76b8e6cd3445be196267c03851f13979fb987aba
Date: Fri, 09 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746777593
