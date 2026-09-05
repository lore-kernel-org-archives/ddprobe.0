Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096123587DE
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788620435; cv=none; b=LRXZJDV+gj11M7peukyj81icCGTKelZx93+tSeY408PDkxVdRi+bM820eY0Q4BoL663IWVq3FmOYd92X9cCcpNRD2Wqo6OJAyFmWDT/c9qYwEYQiP5RoWCqTcJDXu7lbr4ErhC4FRllUoD7sEJEDslIkP21aChs4n2KM/mTDZrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788620435; c=relaxed/simple;
	bh=LFnz7XSBkz+F52sN87KOs090rozQ4bneXN3OsCBV2fU=;
	h=To:Subject:From:Message-Id:Date; b=FLZceG1JVCQG88HYEyWQ8HWcTOFL+Ws1joHLs4cb+6B7a8StsSKtJMPYjB6U40lq+2ahdEq2JwiH04VWSE8HtA01Zw0q7RNr58YccX5i5V56h/y+19NxZIBzECGxoCfGaOQWMNEmGVoQ7cx9OL73qIZ69F5xz/p+rOX/U00r24U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOfOetR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOfOetR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB5EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788620433;
	bh=LFnz7XSBkz+F52sN87KOs090rozQ4bneXN3OsCBV2fU=;
	h=To:Subject:From:Date:From;
	b=YOfOetR/m0prQgBhJTqKnSrm/0U5cg1Y1f21yAtNy2OYyN9S+8bHo0GB49A44IHA4
	 dbpAGDy4Ybaog/v3WSTJCvK6TBIZeak6MyIqXVF+zE46iZ8vqTvi1QH+KiWVfV99tq
	 7FW4ftmQHM5FpKW5MMv6CbPHtT5MmD9azRYOKRds4ZxJQc3L/7aQPGOnm1gpJ3FIMu
	 LsXsy4oNT3WDuDm+BBPlY48SbXLqIMFBf22ERLwat1BhhLnZLp2AyMeqmIbttuWvQR
	 AdZ6LF+DzsL7+u8RKfXsAJKGqB5jGicvu6Xxk19sZO2uL0Iq3btrrxV5eq665Esr8H
	 H+MfQsedIxQbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBDFC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862043369.5633.12927761234768622234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c8ac62ebe5158bd23f183fa71bb76631f1016528d9db4c3d4c4bf8d72d2496
Date: Sat, 05 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788620433
