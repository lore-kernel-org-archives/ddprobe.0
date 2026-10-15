Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9976355198F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792083634; cv=none; b=NU0poVcUSMt5csqlzila9P6MR2Fk6nozMqDftHCyof3rnsOnhSoyuP83CXWftj2OLwhj8PDlALIRazLi1ZjivNz9whSDipqmGd5Bi+jT9z22VuEAPXooLr27zM/H2AJ3b3v1a8skRsz7gzPGC1xMPbDSzw2g7CgU2/+3T6GYtkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792083634; c=relaxed/simple;
	bh=wq3XcG8Ll38/gwzNly2XQF+29hvLa2cCeaBDP0xKDx4=;
	h=To:Subject:From:Message-Id:Date; b=BE1c1ntKeUWveVF1nUCeNHzZPFepHgQZ/Tc0DGM5hPIo5fTSyy81UEXv6OCUh8BHbw4qzllFtEliyReUmYoCrCCMug/F8FUk3YIxPpbElzRBjFpJeddR1axTvJHRyMfv95HvrOogE6+mGNv1rrPJEJKRBn9xuSQFdbYlbc2S6aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQD+PITJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQD+PITJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF8FC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792083633;
	bh=wq3XcG8Ll38/gwzNly2XQF+29hvLa2cCeaBDP0xKDx4=;
	h=To:Subject:From:Date:From;
	b=bQD+PITJ8xS7Ykq6/dfUjyI6UUl06zXnWvxNVa7UHifryL1EDJkgCrduWzBlQGyko
	 aT6WcG9GSzR8l16dAcyVwiXDVEMW6UCUbGrzBzwZ9jCBh9f7f7goSxEufj6Nt9Zqfa
	 +Mgp+xOsRCoaZJ9UhCKsJFb9zlP0GAyRb6FmpT+fSdLEk5vcPTtGEpBXrTqq2olvuV
	 UWWdK4/CzfeyWt5Nz6e6VI837LFbuUrRY7YZRlozlBME7b2itOjauxyAh/w8DS60a5
	 bDeSbPyrPqNYkEU4FpLHFGex0w9EjFdR4bGCEGixh9No6PvD6/ocKVLXGK5ygit9qS
	 2A7bm7TNAPQCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD655CC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208363369.30374.15339605650813186921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c5edcaea11c813a8929b13e117dbe1463fabc1a921334c4d647e1d83ec8ec8
Date: Thu, 15 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792083633
