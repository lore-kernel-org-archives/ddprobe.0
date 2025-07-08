Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3E825A320
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751971194; cv=none; b=QT9nwbu2qt99q9cdnOGAqT+nRL9I/05FUXWtxE9OAWurOlrIGtgzyBsPi9uOxawqXpvVAavapKs7vV9etszN1ispHwz04/oxsqqBnt2Isg8EygBIJHUmkK+3t8U0y5BBlRRMkdfPjH/PtIKqZa+R3l5yKorZrT1yXOTKBCKGuAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751971194; c=relaxed/simple;
	bh=RBHE41xmdP/1HEu2ecizvODNeEJf8lo9ZHx14zzwM3s=;
	h=To:Subject:From:Message-Id:Date; b=qViZzhzfUIKZC83j6BZzm9vmfo82cg48xfelXR29+s/9A5vLpMgyX/45C0wxDe0dIKZk6FXwr13vzW3fmiWXzsh5YSjtwHToS4hUG63+MEMi8rzHH61cGlgreg1qIU75yNMd0VoOLBDCjPuektaz2L4pSWayrlHHG+vEwuF/EHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr4Amvka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr4Amvka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A326CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751971193;
	bh=RBHE41xmdP/1HEu2ecizvODNeEJf8lo9ZHx14zzwM3s=;
	h=To:Subject:From:Date:From;
	b=pr4Amvka9zB/UF/CPC9Z+uZQTVUdykj/Z9Rqk3MBfPstYib8gIjy3hIucQ67AxvVT
	 agTCNcQ4ofsxhe0DV9fhyfrJIpWCIkgldMWhV1If8Arbcahhc/mqKPFfEpC73Dvpa5
	 O6LJ6v3kHTXdyVpjh1bV4hMxaYwW4N8j+sa5KbqHW3Y5BZ1/2KGvujKIHUrWNWbr0r
	 sFm7pHRvuKrH42EncGYz0dtxbEsGx3az9keWaDyBIie21aftHFhhxoKxuKnhQvOY/e
	 oo0KnlpO914FOOtWhR3oPnmtkV6cXXW4WvT6cwCC6uxbvfLIBX6E5KOh3hPi3cldUF
	 nUSI4+K15VNfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071AC83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197119358.6105.3302349708691225303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa63ffcb7b710af21b1a5213381d87f8f099677eee1d8a853a6dcd3c549a788a
Date: Tue, 08 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751971193
