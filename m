Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5828A7BB0A
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719687863; cv=none; b=E7jzGZWxfGhyStwNAoo6k9npXTuZK1y+o31Ql2tQOZpFc4bAoe2thHp+sLUnFj/Y9v6FJ7co3mTfnu8EQWqbAcqcX2dAKVE22/7nOrItQ6YWxkPZa7eRsptc5YJClaSiqmDwsb+R765By5Sc9wN/pK6Q3fbR1m2E6XQiMAM6hZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719687863; c=relaxed/simple;
	bh=peEubfsBgnoAG487DxIscWPdwmElOvm0OMrYV1ixCMc=;
	h=To:Subject:From:Message-Id:Date; b=XFuo2sv2GFhDn6KGf6HOtvfJ/8QjOY2Y9bSzEv+m7RyFPA2h1lg3y6DUxEiN/7RFCBotKH61+EsnVaaLE43ymsYq4a5N59oiyMJsEs4VvkEERFYwNvmkP5a7n8HG6X23T0joAt0DpBNwTZToXDAzwUAIgGwR2INQbW4cnAcZEII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dmd51PgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dmd51PgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D776FC32786
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719687862;
	bh=peEubfsBgnoAG487DxIscWPdwmElOvm0OMrYV1ixCMc=;
	h=To:Subject:From:Date:From;
	b=Dmd51PgI8ctwGKUkCee3aShOSj8tg6kMqtdrbaMm/3JPnX/MWWDWvaKWT8UVEU36h
	 FQ0Y7zzGZ8PGDPDKRPqQFXvdHiLRdbnqWGOdN5gseTVxQXH+twNE1ma0FNhi13Hp3t
	 t60iGzQlR/MzTvCU51V2ncmzjBMEvzAMoKVWePXQTd/+SScLKbcrzy59Kz/QI1WprY
	 v/dNzp6JhndvxSkicdBlSxfFDopsSJcJq3VuXoFAhwMH8LLrlsPMbftMiKhG61JRbV
	 yMbImeCsrFfqBfvjak4lGcHaGIIDVQTAU7AYBuNvqCRzKgzb6ltsutOzIyOLABIXNy
	 uLwxpYZG47nsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1933C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968786277.22070.14052149227472969891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e4fa3a7fdc35b8ede3ec736dd7671f6b81359fe411d857a2970eb10300f5a4
Date: Sat, 29 Jun 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719687862
