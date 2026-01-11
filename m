Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063E9A41
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768116234; cv=none; b=jgjbG+UcHfXUSCWj2oavknl8bybXi++/x03q7wWAIwMnkRIKwmoo7pFrPad2PhPjJdSTZEdJSW3cJvpsESSeZpT+MZ4sok+lLxrYz2m+WG0k52z743OWD1bUTJFz/RsUnnsgpIjkWkFIUNEKcOHQFPXjbOzo6SVlEZCpk0+R3lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768116234; c=relaxed/simple;
	bh=rJtcT1JPeF0kETpLxlEGodUjAsfW5htac7HvWdemWb0=;
	h=To:Subject:From:Message-Id:Date; b=UDUJYZG5bQN5MH6r5hOjhGLIA4X/o0VkE0sAlKpywo+miB2xCMm/OW2q5QBJ5sazYn64hyhwMZtGU1HRRCCBvHKOix9yiVClrYMcMVfTbVYOspGWgEzY0Ksemf5GbMKlpuaYmAa7ZFG2Wwxy/DmkAvx9DMkVGbwx8Y97EDPgRVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7RSDgJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7RSDgJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F80C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768116233;
	bh=rJtcT1JPeF0kETpLxlEGodUjAsfW5htac7HvWdemWb0=;
	h=To:Subject:From:Date:From;
	b=J7RSDgJsh85UoiEVkAbNs6suCpZqC693rdPXfbVxGYt9CoRWCnFTe2VJS8ULGRRj0
	 PsIauB8aE4eCDNJwTsqNCoQg2btqNuVEk4vqaBAamUwqP+QMifI4oZDv0X3wD8QO8d
	 yKMOaJPub7l5WVtVtbVJfegie4HaLBrf+BBMV+9fqZr+EIGu244VWgWKhUinbOe/fh
	 J46+IMEUNpgdsM3XlxaWNcjd55SeaQe3z84LrRz1Ul7MthVxifDPxLOGHjYbpnlTD5
	 UXHH4YVFwTCXznoDx08o9EPvXietTjaBhSDGgDY1ZvKupiPOeoBy1yVbGIt8ZoM2W3
	 JQLTD8qa34jJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9566DD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811623357.22316.8453546806348132574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64e61ff67e7bba57cde621f71678e682f1f9514b755070c7120fb2f84c56bfa
Date: Sun, 11 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768116233
