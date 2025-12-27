Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7AE8632B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766824434; cv=none; b=kC7vQLZ8Jjzuc/7a7fx3kbT2goUs3EZl9DIkHY+otabzBuMS7Lh11TA8DhN9kVXyC2GH9rIR4ev4IohmTzr6Bd4RASRiGeDorBcZoPI04X3chvc0ckThzrLo/RWfRZctc9TlYreVX+egtv0Zfc6pBzsBs0dQe+MfbfaQj9L+Gx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766824434; c=relaxed/simple;
	bh=NiSBjLLNoAIYVpbPTFYKrp/ahzxkKO6qFK+kXDFpOpk=;
	h=To:Subject:From:Message-Id:Date; b=mjW/cVYJbSmKrKbauuKZyS0riQHzDKDy1KPAl5oPE1sNAwgYwasgmFrGrp7pw1yNARRxaimGfanxm4Hr5fkBD/JGtSr1UjQ7+xndbKo52dYlKDj/0w6saP3rqIK5ZDEFZSy9yrOyy2hn+uGI78h7TOB64mv1XbEHXan4w9GPRi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+s4cykp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+s4cykp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1B3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766824433;
	bh=NiSBjLLNoAIYVpbPTFYKrp/ahzxkKO6qFK+kXDFpOpk=;
	h=To:Subject:From:Date:From;
	b=L+s4cykpMK8ukGURYdX2SyIt2jJ+Mpm2sYlXzFE05AcKepaGzDhCgQ9Uq36/AdxWy
	 D1YVVzfVgVVTFwlwkIn3C4YWb70lGg/TNjLIR6hjOpvZsrPfHE2OUSCiJwSBPjVNmB
	 1RX5Xoxi6m1M0Vbd4Adt6lsIt/1rMYGGPqjNJ01bSYZXpA028YGqmZItaHTYKptlpm
	 Fg2GLVA19rmnkz99oWfwVwnFnha5l2OjpyibhZVTEvBOneTT2m9kjxon+TUPtoJVND
	 V2EGN/D9aZ9KsjynSpOwWi9MZBcljHBdpP4mMxXunMuqCPHxfzVXQxrc2bfynKMnlc
	 k/xObaKmCXaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9898EE8FDD3
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682443358.11566.10450391452074799948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2a7af04fca96f13ade1835d74529f6fb1cae122fd3590f5b6a2708358a15ec
Date: Sat, 27 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766824433
