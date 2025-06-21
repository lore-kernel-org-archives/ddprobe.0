Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353562B9A7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750543194; cv=none; b=kK89Dw3oiHgoUCwnbfqfDWca87yJrB9Y3Ngzc+bTEirhqQmbupHqhttaayC4Mz8Bbix+jn8PHqZuXKobR36L+uhHB+fXFGq1ooTjTuMixNZYBpoWGIP2TJdBaDd7IKLoxEYhPzCxMAYWTdPh3yjGE9NpR36CIqctiQXft0PvgKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750543194; c=relaxed/simple;
	bh=0wi6NfidIoBECA60e1PQlbJsXim6pT+RlDW5bWoEXps=;
	h=To:Subject:From:Message-Id:Date; b=bXv6a/A+MUNAmW5AsyiaiYI3e5nfO7uSg/FT3HahaURHKC0BJTNb2KsNOrOGGNSvLG8/jqQn2tJ55/hpBH1ATnrxzAOyiZizzDnPq7QpOyB6R0OnPRhvvAtXPNCvHGMpPjJHpp318y4sBgdEf7RH40u+yF6q1R+ZcPUDmSWrg5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm80iX60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm80iX60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE265C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750543193;
	bh=0wi6NfidIoBECA60e1PQlbJsXim6pT+RlDW5bWoEXps=;
	h=To:Subject:From:Date:From;
	b=Lm80iX60YcbWDaAdeAzAJZF5bnngUNLf9FR98Oavk5KqOVfZLkkeOMrgPp0lrcbfz
	 PQbqc1uJSw02J33o5ghOf91AIKEFhqdBX8Ac0wqGIxkFrj6nnIQyJjm1w3W5zuY0c3
	 uK+SPCCTIjtma8V9QzQtSqFwMbA+wPAmWI29Y5CD192aQB0fZcEbPxkaxnr1OWvBbx
	 rUi0xJ394rS/j19j7hDQ6eT5u3zAVfMfNfZMBPsU9Tx7issmltXc+gP9b/yGaQNNYo
	 bvegsaWXwlF3vvUQZAUk7EfnpSCvzFygC60+LGA+MIKQ3li8+N44/enDei5xAy381M
	 meVFI5e0KoVgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4AAC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054319362.1519.7985187908114669822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bc764154a4241622496b977eac148727e962c432c1658f71c722935ae20439
Date: Sat, 21 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750543193
