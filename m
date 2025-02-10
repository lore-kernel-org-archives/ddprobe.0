Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC0D25C705
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739216754; cv=none; b=POMo9kfXSUPtK9DS6flil7sCMFLTC7YAHHyCwgcMzaZ5ZdsXOqhbchXJMJXqNCW2C7IcqdweDThUJ0hS+C/dF/+UTgtgFdoahHnzimZcE6maiEjq3ki775QByAZuC8y2FHD7k6B2ZWgdPYgzbQPTUI8Jar77Sq74gXDFZfglTBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739216754; c=relaxed/simple;
	bh=NbtJCek7bByDfbDFmrf05A5L7XRAOAL7wh2DGHcGED0=;
	h=To:Subject:From:Message-Id:Date; b=ehqotNqs046nHJ5A/BrGm7V74X2QmWVq8XWd7s5PepTAil/n9Ab4fUnVkw84XDyx1+6B2eqUN2UJxuG2LQeN78mQZX/DgZb8WEVTTPZE83rMSz7ZFnByEEhm8EgK94IvfCFybaz7IMI4LPTRaaCNpz6TxpYHnsWz/C6OJ64Ekk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9quWwWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9quWwWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD83DC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739216753;
	bh=NbtJCek7bByDfbDFmrf05A5L7XRAOAL7wh2DGHcGED0=;
	h=To:Subject:From:Date:From;
	b=a9quWwWnmh525YySAbDpd90T24nI+31YJkx3Snt3McQXApr2ZPWG1R4VhItPe/NMB
	 Sf+M5uIRSR7UMmDWUTMYC2kJyNA75doZiAsg5pDTGduxTYMBVWfyX75TOXSMyZZsqk
	 VxHbS3TwYbEeQ248EAleZ0i4xP9Pa+34Li0KtWfaE+TZZWmyOVZ2Ew2ghzW+IHJDrT
	 SSmqssQ3Rfiv5xuI0NATLrkuUgmdRfQpJ65KDcePK158ZoJa1APnqCexuEhwOtB1ld
	 C9ey+bA1zsbiOEIA904qgoxs9fiG5Gn8VROGssGJsemT3/ug2zIGwz+zVo+d6c5qyH
	 s4cH697BCJR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6731C021A1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173921675366.25071.5700242315594680086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dda6a85dddd0a9f6bf192c1a4f09bc94a431fa97aff604206c29a05c5e94ae0
Date: Mon, 10 Feb 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739216753
