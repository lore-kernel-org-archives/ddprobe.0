Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302AC239E9B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778188654; cv=none; b=r6APigibY5GNB1Cp6trvbw2uHmFIt5uWdUhjBKe/0aLtaE4gyCQbL2imeEU2Spz1QLktr77nWzEicrUIZGm+f2ArnFoO/FoKyapDe3tAq1zDhInnd8SWEdgzGdA69MZ7nuh55ePGzxPrg4ZxAaY1Z4KsaPTG6Mk63t+Q6yvm5N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778188654; c=relaxed/simple;
	bh=H56r4Y3/W+OkTvqNC/rMKMRpCPLSmd0F4oQ4tddnhG8=;
	h=To:Subject:From:Message-Id:Date; b=mDL4MQfZL38FQZsinytNNmNs2pr0ovMOjhVWGS7nkrt5R6A8cAgTzYdsYPPjGhhKqQCPI7/9C10drAwny5ORin4Hgdb3ysf8EGrj4c7ENaH+LayTYF5EtllNAsjgaWyltYCeVNyTljiTTAyC6qyRq+6Q6JN9Pl+jC37rrocUpM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0oPpGtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0oPpGtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB33C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778188653;
	bh=H56r4Y3/W+OkTvqNC/rMKMRpCPLSmd0F4oQ4tddnhG8=;
	h=To:Subject:From:Date:From;
	b=l0oPpGtcYEhYKRL5IzR669RzcJRX6utTkz18Cflpbg2wG4thkXZM1Nl5oBaJ1ITZ2
	 fi5MWYqhAyQA2fq0QgqQIu6I+pVkW+6tSaUUUDdikmZ4EYhNO+zOeLAkS4PAieOMxi
	 /Wry9RInYcLCqz8Dt55Uyzoy2sw4R3Lg1ylHYkJN62n2g/2ZHXpWq+K3/WoKowqbNU
	 pUqAlC/xQL6HoAxrQNhMfHPcHQ8BPMb6SkXVG4oVUzycovHh8AGoK4F8J23pOpUln4
	 3BAKM/sNA65lCiiPC9s0GKPBQ8mNJSX/4mFZlgieEKpmtQZ2DDoQ/aoLlXVj6ZQWZI
	 oZPMsIuvJqbmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B688ACD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818865370.5199.6598486554282146628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573b53dd5a8185b6e28494c7f29df73ca5d1a6095f53ee1ebabfa1472548c7c2
Date: Thu, 07 May 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778188653
