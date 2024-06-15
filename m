Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2801798C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718436503; cv=none; b=kJaqDMj6LP2nYkZxfuNj2MHxmGnsdsv7+FPieGraP0/42XNKfUlFD0Bv+PzD4q5OSZlc9gVoqT27+UapdJCImE7oMr7EdD5PnAlwwxwSvFkmzrbuHCMZr9+8iGV5AHJlGwC6zRMclnFGG8GgbydBMlAhKAa/SzfVT5OlfFREF9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718436503; c=relaxed/simple;
	bh=31L0EEI44xtu21XTD241R7HAi/ZsOu9yt058Sq/ZYds=;
	h=To:Subject:From:Message-Id:Date; b=TXPzqlrZdSpcQTOhffIl+xlZ437/XvLS863+TZU8lotcgmnOHuDYWoMF8A1kIXZiyIeU04zXLQz6+FqYFDMxFlp32oC1XtUowgBBfS5EiP66FtbbsFvrLAAQNRwG44x2j40YY8fDkV9tkGkhzk1gYXH9f6uwIROj1Wf2NFuEyV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrCbkWZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrCbkWZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0395C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718436502;
	bh=31L0EEI44xtu21XTD241R7HAi/ZsOu9yt058Sq/ZYds=;
	h=To:Subject:From:Date:From;
	b=MrCbkWZYV2TefQFSA/OhFn5/iRXKzocEKW1DHOgYqBXyS235f4TyVFS6G3wYz2lHl
	 g2Kfcv6q1j5Lj7k+BZSbrrSYCk3KMgVcfx9jZKA+SpIyqcZHYYzcVWAfarUviCDd9c
	 WJga/kvqxUlWBipfva7DL7+bT+ILJcf+Vrr/oI7kjmXpP0oh76BcfVsVz0LdEq0lkY
	 VTjMBS/us9dmTD70QB+rwCPl+WKDvxDfElL6j1kT1BKgER4icMPvyqQu2vIei5RO23
	 +Nf7L/N/vSMkrTt26CUxT6aH86LlGpja3iJFoyRvIiasRPAHRAmKVpyo6QGAxaUnLy
	 g+BUQqaNvWO7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF1FBC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843650280.10988.13481419315201416206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b644f6fb18bfa3d84e7a41f0acdebdbebc163504a8ad4923faa1cced773cc7d5
Date: Sat, 15 Jun 2024 07:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718436502
