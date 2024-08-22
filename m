Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C00219DFA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724336154; cv=none; b=W0mpbuBuM/bedqfAXhA4LAeVZBHPa9fe4na2hy6b/Svtfr/duRIyyoZM3P0Sb52cT48dKOdXWyI1FDOylSXwmARGr9y+hcqFLQlduHltnAcc5YAD7YJAolCL++sTLpD4UwMEilVYzYKm9wyBdWtlr1XBoZ0kVjs/tgrT3WimFKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724336154; c=relaxed/simple;
	bh=qsj+3neKip7SLmxMaGYR2ozif22YTIf3W/wIWvv+huk=;
	h=To:Subject:From:Message-Id:Date; b=Qvi6tqOiOagaumXnL/fRwCpYChwhp0VAI65Y9hbV192JtAXMysX9mVwsei0CrDcZ15/PCdvaPdcFLpkwQ93pDATEJ1Y5T492aYULCFja/zvJ31tJwugjC2AQEaFfSiFYSrxujO9HXxXwkksTUWlTk+hdJgzTmBrNf5A8o0uUewg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGJvC6Y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGJvC6Y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C221EC32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724336153;
	bh=qsj+3neKip7SLmxMaGYR2ozif22YTIf3W/wIWvv+huk=;
	h=To:Subject:From:Date:From;
	b=cGJvC6Y6FP0irPdB4EFGIaUDRp2aAotBo0ZsrxWHMB7woNCT21nu7Y/+hsbyfE3Zm
	 G8B6gcm1J0iPieqQP4kXSkarZL/6PMscKZyOoAfpMektlrhXHHUR4zIVGRCz6/wPV5
	 /7v3B3/4xcGcgODIqtc8MVDBq+OOZbCs1clsKDJIdHwFbTQZrSVtJ7XymoS/4FS6If
	 6n3zDnhEf5Whl4mvph3qh7KqJmhRu5Eh+OZloVNUygH1Spw0YZQ5LH+m1r0qkT15vb
	 P7QKb/p8fiq9vMCXmderENxWgn7PbgnEm7QKoBar7DLUkTptJntj9jLo2RpFP3ulhM
	 ivWxkjfecDrkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA03DC52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172433615368.31178.10257845063367354829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fe91812cb001f2e340613ba888bf14f8dd934abedd495a3fd2edf6f9519ccb
Date: Thu, 22 Aug 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724336153
