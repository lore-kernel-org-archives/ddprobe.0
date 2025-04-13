Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE73291E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744517394; cv=none; b=exAQDFAyhNjtzc4fU3geXaljtduIKRFCLAGDM3a8XmREJIu86RR7BwWYWUcF3xEL6hBKf6xrYaAkUt6QFCT7HZky5BonsRXQHPAdL9UvD42BESlPa65EVeTK0ymL9bfviV2+99DQnDMvhAYbnaaBqoIb5t58W1Yj/FvJSVejR6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744517394; c=relaxed/simple;
	bh=aypg+Ip/DHzULoA/vcf/F93x4TsYQ+ToWOA97LMRy1w=;
	h=To:Subject:From:Message-Id:Date; b=iwQMNuFNZ+FOwNZxrVZlCcw8GAWsiFrrVZGQjjTEIxWkV1Xq9MMd1iJFyWbpn1tTf/2jwnR1FXcfLKtHyuM3CzlrMSGml3gCOXhV0HbPIpvgI0DfzlV1I0JuOKyJoStS38PCTmiDefSpQ9Ls2Bc9Moolt2gwi36eEEDyPzrdD1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mdo683oT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mdo683oT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DD4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744517393;
	bh=aypg+Ip/DHzULoA/vcf/F93x4TsYQ+ToWOA97LMRy1w=;
	h=To:Subject:From:Date:From;
	b=Mdo683oTb/E72ErcMaXFSV1tNlmCCenLR1hlL44amlFhU5ihD1moxOD+N942RO/SU
	 1o+zdRvX5d62qulwH1rfR9PGQ0OUlNsJzmP8j4Rd/auJgwX/N1aKjWpQo/UIBnYWap
	 gRztA1EA2tojmsnKobmZP3pPvAYMmTzGtR39bzlF6YpEabTq2skOGuzTam2Pv8JbKU
	 25HM8KbhA7Zrmyg+ZPoZ02+rwxMJhek+SrlQEhdooKunXNTa51BzaJK3CDHiYTwiTX
	 PtjnDtua67SqKsXgziY2n8GQKSEOxdBdBNg0wzN7ponZc8ftEbdepWgzAHDgih/ETq
	 zUAp8bEH1chag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B7C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451739358.16022.11057956546970553458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23de3d847baea8f59ca40e61db18fa7c2dd99d2cdf6676e57695c412f6047447
Date: Sun, 13 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744517393
