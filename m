Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5386126E6F5
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760969394; cv=none; b=lKRCqGPBL3HomITLe4Ebwzd/Dfa7p95u5LPtBhDcEIRboSyTuKQuMGwMJ63c5KaHyLux1+dfz0Irs8qK7dPVnJgru8yu2Q38Ymj1bfKkS9x5YcKoWGNj5BWZRqJQWF4Y8sSBx1ejDFeRewZJ5kiRj9IJDgYclQ5PqlGlhZ2/Lrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760969394; c=relaxed/simple;
	bh=diDbEk3VvOncUFNWNVJF5yK0udb770ugYAkVHctD9JU=;
	h=To:Subject:From:Message-Id:Date; b=tjaBtTfxxsBb3NPzWjNM3ULmA7CEgF257e2Uuwpcfg7sb8cVJ6vOnWNQMst/eUWCW8wsF8QEThL2HoEhZP368YKPM5x9h14gbNUDB6pF8pzocMjkYSdqGxO8iioRn31urvOAAzH6i5lISFoT/AIxfs7j/O7TiFbHVdjNhUxSR0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J07Nu+Y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J07Nu+Y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A487EC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760969393;
	bh=diDbEk3VvOncUFNWNVJF5yK0udb770ugYAkVHctD9JU=;
	h=To:Subject:From:Date:From;
	b=J07Nu+Y+gH3C9uW/PJ2fYN5pRBlNW9QN/zHehtDmgAADQoCj54qCMmMl1oPqc/x3Q
	 JIo6oqSeCIzooS2/ROSPjXljE2zE8L67Q6FHs1ZT5dz8+m5n6Okqn9Mu88Mj+pdX8Q
	 yLCvih3bsdgYLSHJcmRqg9GuMEgw39Lgxh9Ag4VU5jcg48dChhH7Gp5yMlAu6ylVAT
	 5bKS+3RlejfuspOXlyak8bkNLamu7uwa94SLJm9Z4PrXyewVQl419yklLBbclhwjy/
	 z/w6CfrWWS6CABlTYWsrjdm9ZgmiOFQXJd0dRVMdwMFGxnUZ2DhSSZQVGKt+qEGlxN
	 aoG5s5xrP2QBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA5CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096939358.19504.284062542864294399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc62986542f910ea96aecb858fc20c623bae9e8f0f06516cbcf09fca14e4552b
Date: Mon, 20 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760969393
