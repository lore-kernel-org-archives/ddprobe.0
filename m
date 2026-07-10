Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFE71531E8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783650514; cv=none; b=h8FB+lL8PhUDRFbmehdVYpnd3CP2rmnLMkMpihyW68QMwHvUdBdsnsYd4FHtH2jFzHOGZPM777lXNmqtgj6KplAXaRA2dPSTO6yGJNI4ya1Q9zQrIQC0zmdFe0Hj0iBn80qTuT2OYKwGZmZn1u6N6m9+jQRU5ikxujjejJL7Szk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783650514; c=relaxed/simple;
	bh=Tg4Fb9snnvy/t98/Q/GfeHdb1CRRG7HkxJfY/Cy/iXs=;
	h=To:Subject:From:Message-Id:Date; b=Axrymp/ppvsShq2IcXC6bpgOq7pk5PZbeOcAuShogCHjboOPhz61FLloJA4e3ccjQYy3jkeITSYrjGDlleKeJN5YAR/YjDQyF0l0iWCRY5sqjtunbxxYVXG1Si4qzfoWqcVlAJwJPg4U+CGB38Q4nZUz7vHQnYj4iBi0NKHl9J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj6cIefD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj6cIefD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC554C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783650513;
	bh=Tg4Fb9snnvy/t98/Q/GfeHdb1CRRG7HkxJfY/Cy/iXs=;
	h=To:Subject:From:Date:From;
	b=Sj6cIefD66kUATmdKxZFOXNHignkPJv1TOUQh2TMmjkNaZGA07YcxH05IEu6Am7Hg
	 wwtHe1XpKaZql3LJ3ay1e7LFfukDYGX2oTaKCcgQed1eaL/XogelBLWorOEsfNgexh
	 vOwfq+mi6HxIIeKphaOouo4ihS6fzAoeHaZcjoWDx+FpapRxlCKOVEUvmNl7UtHg/7
	 zk/3wOg/t4s7Yk1nqd22o1OTUsHk+Plf1tLElD/X/SXWSHr0fGATHtpV+MczKlS3bp
	 0PdkUm6dSdbGJwbL8X3h1ORDt0zPy/zoIEgzfWo3NuTOdQPQ1VSmoqgkEOsEm2SWKu
	 hJPmVJS/4nmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA094C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365051368.17403.3725676520998427314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b8c69dab4923cab3dcfed649992526bc0d8b463e0094d93ce249eb415a7e26
Date: Fri, 10 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783650513
