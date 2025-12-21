Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA903A1E66
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766277834; cv=none; b=LhRGjY0GhlqbuzUNN1xjSskvfq0o8esClXi2Pd2pn2iRgDNtP9uVb0V1UNltxhB4cLpfAInoYoJvR7zRL+f7LPEmKQeQZHi/z80oEOo1fEp4nKmTnXiwJAxoc9E+5oTfy1PCQ4+fPOt/gE29kx4xoeGsaW6SfD8x/lpXHm2drLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766277834; c=relaxed/simple;
	bh=lRC7kyRsZ3o9waXURpJo7MGvKEVcSfbvuS5VqsXE6Ao=;
	h=To:Subject:From:Message-Id:Date; b=oNB0OdaBD+vymXzuOC4uCI0IVWVXB06BrehsebyIMlHgIRIHZ7FIdoOwOsSF6vQ6IXFFlyC2E7XtSXt390YtbyaKPdewpWl0KCfRkWBX7mq/KuV+EWRP8UrrgNFve0Ui3VRuWgx7rtvAzSkYZUbXhU/569wOkcuc8ZE6fBjzsdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXOP6BDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXOP6BDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E55C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766277833;
	bh=lRC7kyRsZ3o9waXURpJo7MGvKEVcSfbvuS5VqsXE6Ao=;
	h=To:Subject:From:Date:From;
	b=QXOP6BDm9fZePKcqWVfeG87zeFmj0TIGYxGT+XX3Au6U/qwlQ4LC5AgQ0pp2krD+r
	 Clg/OImzPmR7RyTNT6BoriyhkldiLEqoaYqGn/mIf0nJabYKFiRLUzx8/0Ew+3Zkkd
	 ySansbyvXaafLjRUOW8YEW+ayIkqoosB7/d5PLZbGapIs8NL8eRVt+eToEtxRC32I6
	 /ME/z/niT1z+kr1Lrimr7cp5dGtMrXBthOe5ZzWU5wpijY6276+ZN/BqAWaqpATsbR
	 7iXc8V1eksM3sIm34b6zrAr6SH2u9yIKDGMvCNizkrx/jutiWKkgvYENF4mR2fv9e7
	 s+ptHmnusOfzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965ACE6748D
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627783358.10362.6029887481159889270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13dbe041011ce6dcb95756fad1bd3ba212bdf45fc93e32a868ab4193151b21de
Date: Sun, 21 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766277833
