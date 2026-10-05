Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7433A4BA9FA
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791212434; cv=none; b=NOTnnEZVlvy/57kAWxhlL5aXNfVm+jPssgsSz3iVodG3BXhg3eevsfaJQ3xsvPAnOOQH4nuKwLrPWSFKnDIBNCJPVDg6Chu2EAVuvghXBR/4CWd6FkqQLtOI23KHO4XXjFAdEbQzvDQUU9D273TGH4MPL1UQIR0bQMQsD/Absyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791212434; c=relaxed/simple;
	bh=Ce2TiVycldT/XcbUf1fYT5NTQMuhvghqcO8687/MbEI=;
	h=To:Subject:From:Message-Id:Date; b=vEwe36t5gfEc6t/+L0NpM46t9kW0MFEThepMS+EJl8BJl3aR4VqdLBh+lU/Orvu5ShxUdyZVig0t/fowY+ceNwHH22lOZv+J17KafV8XHlPKcp31PidB6dBXFzN+nIe5RI9S0VJAXctO7lmzZkLJK4gMdgci0O2jX/I6NjguDMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDtF8RZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDtF8RZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A21C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791212433;
	bh=Ce2TiVycldT/XcbUf1fYT5NTQMuhvghqcO8687/MbEI=;
	h=To:Subject:From:Date:From;
	b=WDtF8RZAAr5FpzhcvRqpb5hO9YnP+YXIhPDJ8GWS8Ap68EReInNa64E7i/Y14EIIp
	 ANUpPxH3gO0L7c5aeWvNc6W/zgps5vaLog8i8ctWORdjw2jmwq9FqyoWOrpGjui8ET
	 Y1DFA2bKdIpLnNA52wg1GDFsYwpytNBSi8fr8L/m9JhqR4e10Se8I8dsH5H0t2418u
	 w9OpcRjaWq/6Aylq2SDxV3fznN5ov8jdVWZiPpEWpTLILEbMbpqdszOx+4If69tZW2
	 kEGCVE5obFm2s+deuP4g6QCnVdi2YJoNPsGdRUwcvbIGVLv/kcBeLGqyd2I409qCS9
	 k5AEsFWzyUzbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB798CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121243369.14291.8909203108362816843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec7e2e5cb4613cd14239cb8dedd20286c7432d31ca53eed4a1185e3a5e2af79
Date: Mon, 05 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791212433
