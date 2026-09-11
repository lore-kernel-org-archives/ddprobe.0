Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5613A24DFF9
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789091434; cv=none; b=Nnk4yskMBZjrOdbMBB3Ad5Ai7t43Asy2v8i3DFiqv4mrrVDIsoD9cmaedUAtBGH4dDYi+TejxnQB6p88AjZPKHRph8JXGTwrjP/NFeldaLzJG0EcMHLLuNgeD+7mWh1hC/sYsbs7UTvW3bx1zqIxPQvCCZdouK77/Ona33hXOWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789091434; c=relaxed/simple;
	bh=K0yMANeoqtJMELwJN1s5oiytuHTX7qSjhzycuDYOdfY=;
	h=To:Subject:From:Message-Id:Date; b=SYc0eBXuXRx605KCiMdIKudX+RkLzEBXiL6sVS0e/wJfcQzJ1WIpkNbDklgX4foeMIQ4zoQI8z/2r3xeor7OOg8Vb1wYyWIgX+x8xRX7mqJzcleenyYY6zTBNkdED8VnK+r1l2nKPKa+1CP4IcwPApC+euL2MNkvI34RyAPCZ64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSCYz5GN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSCYz5GN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40F2C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789091433;
	bh=K0yMANeoqtJMELwJN1s5oiytuHTX7qSjhzycuDYOdfY=;
	h=To:Subject:From:Date:From;
	b=ZSCYz5GNXkjXnOpxdME1W1hhsaKG8Wo6YECAVkskagwsQ1IMTit3qR+gWG1qAXAoW
	 kG93HN2sZBgRot8cSJVJYph/+W57dgKO4gZSCB8iZtcUvqgwfnpM9VTetgHHXDdXnm
	 95fMeZ4Xi74km/JsPK32QkJXKyKiRPGKliz/jbSnqmE7MBXvLNyunQ5g8IUI4d3IZq
	 1X/ud8sWKJ3tweSfNuia3xXPGsl/8Modih7O8OuVQurRRC3hLEVuf5xkXE8kUU2yyp
	 Litze4Hkv722CqLZbfcRDkk59kHBj81TUDVbbWNgNtY7RVhi9w83JGbTtQQjtVKY9m
	 Q8TKaM2AEm7DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDC3C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909143369.20982.10121461101764534673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e44e5ac50f55a5ca92bdd4ac2e56bfdbb5732182364588aca7fd7d28426ab2
Date: Fri, 11 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789091433
