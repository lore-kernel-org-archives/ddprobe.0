Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59E535838A
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787838035; cv=none; b=i9zpFVkUOSZOdS/voo07RnYYJO+3TVqSf/KWLD9w6UQkYRBW5cLRjqnjZ5T1k6Netr2cUe/pbMEPxFsQLaod/c5rQgxm8Nk7waVnYg8v9Ja70FrmwFCIcwWzHzXPKPGVa1UPj79NvxPOBgKlYrXB63d4AgH84XOJS9sDiITCmhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787838035; c=relaxed/simple;
	bh=jOWtbaaTCrvPmNBXp7dMX8P8q+l3Y1NaIeGy/ByxPjs=;
	h=To:Subject:From:Message-Id:Date; b=BT/3dtByjBMJuT3ZWqzzgb3ajzT0Vr1eOThAj16UG1pMx1Mzyk5dS44m1So3gcZO1H4/gYUo2L1RtEMEwGM25Mrdn/DkXIu9P1agtPCzmmjKllHq6wMmqh53g2syXTft7hT8CfepBoSdyPlakHp/w/XbjmIONpnoPhOwV5ZtGWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuPuw/6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuPuw/6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A75C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787838033;
	bh=jOWtbaaTCrvPmNBXp7dMX8P8q+l3Y1NaIeGy/ByxPjs=;
	h=To:Subject:From:Date:From;
	b=OuPuw/6WS4RwUJUKy/LYHbom8tt2OTRTPbDUq55D2NlGv6E7lFMD1OufN1BLR1wnw
	 W6oQhCI9G7SsV69nuMuYCHJnM0SZbCcUWLcOGSQ/YzFEfHwA+hODpZWnRP3AgU42bG
	 ajhc7Ekz5MG47H1LGt9lMe51IgQirlHCGHSeB1FPE1cjf6suzdlxBUSEjrKAnKJUU/
	 xAz85zfrP6s75BO/ylYSan0HgdAs/2t9JqxzTRUsyZcoDLv+oPoTuruX211zsPS327
	 kX4GxG0rCGwgyyTIApKu+DUhkQ5eeHhUwHXKquoUA4Pl1gqvMQ094gmuLbW+lxB8j2
	 pD5arDSqUUrDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF606C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783803370.8204.10104961577947305435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e9e152dbaf63b47ac585bff07d7000bf18679ee24058949c2182696578c297
Date: Thu, 27 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787838033
