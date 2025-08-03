Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6E318BBAE
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754248794; cv=none; b=c9So75FmHR4Cn+YLiJhi2g+N3B/qQALsimp3bJMkx3eJlCVJG0ZFIfD6xkQFd3cvz0H22xn3cOkSiK7g7j2b/djcEm3ZoDfolIv6KFgqWlJbuBH/DpPc8dolH9lc/Vf65Ki7A0k3vsJkC+xKKI2599nV4odc+PNmWB49gBrezRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754248794; c=relaxed/simple;
	bh=5fd6Pn6EYt9ck3mwnMpfIk6qmd02PP+7/eTqD8Tm66E=;
	h=To:Subject:From:Message-Id:Date; b=QuwZUxWyUWpyz2UNpm5ckiPRAgsvVxFhTKO4mpCHtxhAApg+0KAJob+DadoPN9d7sV96suX2ZG96DVLetMN1QvCOKjTd3uTu1lCtwOx0Ba1fistT8ImL0FMjrmZmonMwLwz7209WGEvMYBKTIshpv3RyYoIRnPaIFbDNKGKEmO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgdMPT4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgdMPT4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754248793;
	bh=5fd6Pn6EYt9ck3mwnMpfIk6qmd02PP+7/eTqD8Tm66E=;
	h=To:Subject:From:Date:From;
	b=dgdMPT4KnGb3oTpLvRQQinYLG+li0Q8hzk6Yv7gWX2OZuFgblqt0dFrGFIQ5HZ0bc
	 m1FOYG+Y20tpE+UcsTcqCmnFrz9uBxYB31aE2nlh53UWanQdTkc8gi/nhWOijPkziA
	 AD32DaJXDGRiGtjoB7upElt/FdZ8N5acGPDjOLHZ/83Jowj3hOfcl7aQ/z+gtcXJ7Q
	 uQuO635dtjbAqJk6oURs3gLe5PW9mkRzFR/yP2jlF5dZ97PP3eYxFbaJlyrWnq4YVy
	 5EB66mfnnitL9FB/hYBuLcU6gLut+7nFvm4HvaO8f71ayZxRmyOYjT4cINZrv/Hgh+
	 X65ePQhnJD+2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8ABC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424879357.5528.18101749635740813546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf5c1cb9a22c3a1cd8d33dfcb5b4b6b668155b20918b0d33495b11e4db5d96f
Date: Sun, 03 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754248793
