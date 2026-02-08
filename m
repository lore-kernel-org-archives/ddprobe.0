Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2407721CA02
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770570234; cv=none; b=nuIA2/5sZBFUXr5IOoLPipX1pPDqzas74GL9PWZNT+/4gphWIMFjXbvxE1RTVkksz8hV3rFYXKu5GeV6KVX2ileTPPgoZUDFF7pCVtNRtaVJGvMQhOMvwZC/p4Zdy01wg9/HeGNiG8oMskfQnxrORXY/ApFwrlLkYboTIzFxPP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770570234; c=relaxed/simple;
	bh=8TTv150a+eDxIi58H2birqUwDR6+xepMnROiCOnbu0o=;
	h=To:Subject:From:Message-Id:Date; b=QOaArqq/clwitscOojnsI98qeuKekvERuPmq2GMsp+o5vE9x6HyStFaSaBex+9/QB86Q2i2zUcNMZzcScOFccGdfXYByywDguK7GrXwnhOYLOEpEFYG0fEU8146ZAwyAYfhCR/GlC6GU2EgUEhsTdXLEOepfDsYCBhVgBG/VzBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGwueqM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGwueqM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0421C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770570233;
	bh=8TTv150a+eDxIi58H2birqUwDR6+xepMnROiCOnbu0o=;
	h=To:Subject:From:Date:From;
	b=JGwueqM3Ntuim9d+08071ttA9K/dx6Y6xJNXdlZTkcQ9pUs5z4jUppD50A9T8Sdb2
	 YGb2b10AHc37D1g1zaaOtC97UGQ8fJgwIn6cRTNRVLvhibJS+1v/sLdikweerznEXP
	 a6RzFmraBzxDLRStu9YKOviE8J4G4v8+NF/cl1ul86H+Oo8cWKSjVi7wWXkDRCyv/h
	 PM6VzxI9OeUbnhG8HLZFEQHxrpn56I4L4X/mKKyK9PjzjwImm7NJPE8pjV6h12n7mJ
	 o5IgpBLf3Pyb4LtH09QTjZlgCs6y3yqLaFsIlQyGWlE4TlAemiRbNdpOq+FfxuEQme
	 W1s6d1ZsdrqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6BFEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057023366.26318.11699425045477936831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3a746f1641ad8ccab136c59b35ff2a7cbb26e019b6b7320a62ec3494c35d76
Date: Sun, 08 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770570233
