Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308A51799F
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753582794; cv=none; b=JF1jpA/5Q+voK2QnCo3QYuyzPeDsmSiN4yKqm3gsSoj7VS1lb5Oh5SuBCJ9pMk4SmUM6wdaPDT8k5mYSPui9ZAijAH9zOZWlP653yzhWduedeuIqwoO5G5sQwpR5MIhAWaxYB94vw/XQgKiN6ql3LC+RFfQ0TY/9wYYiWdbY+bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753582794; c=relaxed/simple;
	bh=G+k9yd/dtBiwTg+tlwpvodG0f/aU4pJFJTBiQJwJZYk=;
	h=To:Subject:From:Message-Id:Date; b=GpDfydItLfRT/9KiCq+sFZQZDmMUKEWTT2/ItFA/8D8Kgrh2MYoQPFlOjR4YrFWczI8nM9AaLwUOHsUh8s4GXbJ+aXFRU9dhQsdvwSyAu1iTDzUehq0Fzxx+CcRsYeE+4F3KLolOZz6WQ5JPdtpye19YhtnwlPr1/LIKrRF/Dq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sR8+z6eP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sR8+z6eP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B41C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753582793;
	bh=G+k9yd/dtBiwTg+tlwpvodG0f/aU4pJFJTBiQJwJZYk=;
	h=To:Subject:From:Date:From;
	b=sR8+z6ePqNibxKOh3Ms+Nwu0lGVmrYDWlRWbs2GqJ9mZV+J2dc8fGk2nPgzGPRLr5
	 SU5TiFp8M2O+GSp5qYWLZ5tXPCVJGkoveB4TSs24rr0pIxLpZwdVflbEEr1IxGG/TY
	 ycwiCageOAt1WTR/JReJDkNiITdrG56H0kPE6hxFF+pKIyuNtX997dfJXsD5NjyT+H
	 AUJfAqANBnUHNenvOrIceVZct4fRKHa1/0wcjZ+FYeGZqSR7IcWMc4kiGw5z2JAv33
	 kC6rzY0WkCaszaB0UWy8Qhfzxsjx46AiScm1Gmxa2UYTGPmwwe0LoDa2vzGyQqRe35
	 m2omPC0Wtgs1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C99C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358279357.354.5148721661824648687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58106a2109b5de73237c7a1007b1f9ad9fb4efddf23e0a3c88a574aab759bd4
Date: Sun, 27 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753582793
