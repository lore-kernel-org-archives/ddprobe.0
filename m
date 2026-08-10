Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB0938E8BB
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786348834; cv=none; b=eTNPXyRu6aIpwRwWf3FH6TFWRVw6uTZxQ05gm8ULQ0H3whx+alS/qHJ/cBBgL7J0d71+TTCfJnIaG2XyYAPYp1sbrgnHplvIyV/ALb7SMHjGWlOPoT6f6Dh2+I/LbSBiBmMMjYSTTOX1My72IDYxmb8P1VU6aUKXrbCL5hEM5Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786348834; c=relaxed/simple;
	bh=XuPjg2Kdp8jg2S2dlYsDDyFRNXtO18hdem11G3lRMI8=;
	h=To:Subject:From:Message-Id:Date; b=NBKBWRvLyeoC9kIUglYkV84f/tPHheMMnhXndPygDKlSrgI1V6GQbNr1jY4vv0eP6RGD9ZuZH7fIRCUTwL8HgpZwhGEawtCP5jz+JWjaJ6Zh6w+XuONY3+ny++oQJamxGMIEdRd71pL6wdzEe0VkpNPv6Awvsd0rZaMTCtH1FWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrr4I3tA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrr4I3tA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3454C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786348833;
	bh=XuPjg2Kdp8jg2S2dlYsDDyFRNXtO18hdem11G3lRMI8=;
	h=To:Subject:From:Date:From;
	b=qrr4I3tAmFXEhgmHdmVXiDOalKBZN825WYT0XTVAEhDKOsZkyDHv3kh4qABEDiR2A
	 zL4UYtvpVd3JRudq8hEJ6Uw7MYgzQxFUOdIatPv91OQJYBE4vBzUkb2YiLXrwkH01e
	 D55AubK0ZkcE20OcJDZMd/dU1IKFAt/lSC6IjKXgZOG0MGIkkRZrcPjLnrLufIhbzE
	 onbZg+A+xRARW6ym1R1cNAKWCulVSns/G5fDeWQdmrEVRY+B5i9z0eQrP7HYbvAB9F
	 rq0bQsfCRp7M8hFxZDDtTyzipeYq7qmO0jpfVjxlvRe35AGbIDiHm6J/A+zQDsCXuw
	 p0t4LoVvjQb0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE399C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634883370.28796.2124875311221244696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d52d2b47e93d633458c67cafc7d41059b9fc8ae884a5543aec8c788b10ddc91
Date: Mon, 10 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786348833
