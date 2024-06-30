Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461DD1362
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719710063; cv=none; b=vGMPB/ikhAdWwXbOGPzy+LroMil+o59/Ds0cMFSm+FIcmrJWrro39xpG/A96XhZ8usePv8U3KSrnWsObvEGz6gEfyr7biDw3utJ1hOL3cIwI9BS99faR0X172gKXjeH6OTkHwpD3f49DzQkY8cb1Ihd3dubPYDcdcJX1k78/ugw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719710063; c=relaxed/simple;
	bh=+K/mZy1ZAP0Wj+Q1fUkDocLnS8gcyWOOSfv6C4AwJMo=;
	h=To:Subject:From:Message-Id:Date; b=oT9FkAoxFP7W0QSns4gWt5gOWHCEf1EEplOOg+zdAXTkhHHkno5GB4vmi0B4PIxVQFntut0kY+V9VnB8UZG5l3IyhwXOKbXV30L40SDDDNaGZIutxU+2KEmLwrQX+llYV9qqL7yn/YdYKSnhOuF/06aSkd38ucIC4IvHJ2SSuFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpDx7na6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpDx7na6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8DCC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719710062;
	bh=+K/mZy1ZAP0Wj+Q1fUkDocLnS8gcyWOOSfv6C4AwJMo=;
	h=To:Subject:From:Date:From;
	b=lpDx7na6dn4CRr5eMN15kw1fO0OvXnWYbQn0DCviBr+5DAYya8bRFtimct8ZidTT7
	 8kvk5mfSwbtAfr9UR2cWhLu5crF6SlxrMvLTdCPJgDljOfpdXXBI1+HXaJyxyOETvB
	 HgcHB5K+fQaO7TWB7AGgakg4ZRkxBH40wRliNdoxXjYxjTk79efP3jXscnxjJkFxu/
	 lotq7R/ya7pzmIzRQQMWtsRsJ67VuVyobLNx1/00yOP19ay8wS2ye+5ziWGVWGUbxq
	 ULIL/qmEkhBQyMcSd9HurchlykNVIzvNKPciv5W3o7IbpOrkuu3TJUBID3c9E/AL8X
	 T0mEQ5TRxIriw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8579C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971006279.21085.1766913647625989494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9292a00a62d0ff8c89ffb47e9765e9bbfb57ab8fa69d3db9ecb5cc6f8e5786
Date: Sun, 30 Jun 2024 01:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719710062
