Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299252AE77
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762192194; cv=none; b=hZMOMXB+tfU7oYbUnyT3D274NmeqiKM5SNvRHaCZJuv4F1k7SzIdOZvWbw9vUHQ7AJh0UmlOiF2InCx9k9FaDT4o0u0glMJZO7w2HxHoNkouNuasTX7v2wRZws7buFU1RdndqQGuyAsPZHUvTMS9+9rNEsOL0kQQqopMeFO44ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762192194; c=relaxed/simple;
	bh=kkOwwristvRP8rt2k1t0EaN/s4dNgzlxcuXoT/nSE90=;
	h=To:Subject:From:Message-Id:Date; b=p4duaeFvN2TAPqkp48gJqsspA2Svq8iWFFQ8pmCF+XQOIqRd8ItFCIEwJJY0k621RqWqX5NsEbKTpmDbep7MBJEYRtxl08i5d6rplCTcAFLMYAd8ZQTPPABt/43oeWg6G23iY//jESw3hdXo+vmPAHGkcTkB1TBO1k1MSl04AUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBVKEEbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBVKEEbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10B3C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762192193;
	bh=kkOwwristvRP8rt2k1t0EaN/s4dNgzlxcuXoT/nSE90=;
	h=To:Subject:From:Date:From;
	b=nBVKEEbA4AG7u772ZikYvbUSO5r6RRlQMXAtaKvvuSHpzOpJiESTB2Krp5SaBpuXJ
	 pGhPS/5Qgr9iuJ522eBA78bDb+kdO/NHIN9vLetLIzxnDOJkVG7sC7ByQrGG+oKCkR
	 2hXRi/0gXIJFJ+JY77azFuszqtWVvxmJqE0aUG4+j3zGs8nQYHHNnUPdIGAZ+h+Prh
	 KI3JI0kEw1xDrvmCI0GNY5uIoVjPFICAAq2lk0Frz95r+GwDYgqOTXKCNtL+lmtupV
	 NnsexWQ49JWw0nFJVYQmgyA7CR04FVzC2HWR+LqoSWWlD4JOIFTRyUR94dgrNAtZ82
	 0flut8e2WUnKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBDCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219219358.10923.10583828616155509345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7cffcf14a54a89d291089f053fc127868e261f9a8a321268486a28fcaacd7b
Date: Mon, 03 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762192193
