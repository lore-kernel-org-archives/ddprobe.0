Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2400422083
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758974994; cv=none; b=VILwFCy2DP3A5fZ2FWfFfQ0asN4pXPDoaEl8fTw/EkvO3EABwWK50QBdHJwKKKdyefsnKhzsGaa9WsdkHSnFRKMkdWBRyGfUNUw8OyFnneUJ1THQlWIeqZrTcBin+hMjZXrYaGOoggwW0a0UvhXC1nNegFC1thXe4Gz4Z8sg3b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758974994; c=relaxed/simple;
	bh=RZclxA4yDJx+24AktHfFxOSukRjroHfX3uFIvawwow8=;
	h=To:Subject:From:Message-Id:Date; b=ZKuM9654qBDwWxzfTscOc795yVlhUtwNRpxpkLKzWi7chPESxxbLumdM4eGQoaw4aGeLTXPuxJk0NSntwPHvfDDBpc1/qVW6WOxHCb5ryz79adZEjDWWTu0oSXCr7PAOIoXGxVz4wTDqN9p3BwaNNoh6hNF9iaRmwC8OdVCk5Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuG1bWMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuG1bWMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EDAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758974993;
	bh=RZclxA4yDJx+24AktHfFxOSukRjroHfX3uFIvawwow8=;
	h=To:Subject:From:Date:From;
	b=KuG1bWMYd/Ht3oknLffXXrKSy74hBT1G1EQJwY+n58dL9oNKlYTLScoS5jRPrYhVv
	 Pw9qvrolNE4fPzX/ahJXBZamp4p+HD4QETI4VYc3IuyUPSMz6zgWLRX8pqCm6AtbqC
	 NoovmXMcX1ouXpCNon1RL6Wby34wJHl3RGaau/l7opHZP/e6uBhEAEDormqZ+29AJK
	 X0ssF8q41nf652rdUyQ5a8dYX1hd9klOnCVJB3jctS1idGZk6G+rmQB/CHGCds+cmR
	 hgUAv8UWs0PXDiy8R3NfxOnUR+SjTrU8/MylSqyLgzA7BbZyXAF9Oi+fl6QIgRogwD
	 Ret7BQeoMSjyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC6CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897499358.10430.832241221869318378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47db29d6c742b59d6850598d639badb52e1c03e9572a137ef3f517a146780f2
Date: Sat, 27 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758974993
