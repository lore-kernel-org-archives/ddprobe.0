Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2843918C933
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766234634; cv=none; b=IArMJ+pcNJim0fxn6ek/ry6BQMXrxwGyjDQBAxT5WoqmyB6MTq5s+fHi0GSOvSZixzxrTSsYoy4bl2Y4uJNioUN/C75pgLVuGcfA0QquXm/nwNZaFATGbPpgDLkABk3eiNMKAJIIKS+QlUlS/z5O7tBgSQta7w0o2srDML7/ZTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766234634; c=relaxed/simple;
	bh=sP+kqlyYHLAiB1z0BznrVbYjf+ZKAdltzFm+OTzDeKc=;
	h=To:Subject:From:Message-Id:Date; b=Pj4h9AGyqcsEyPFiykqpbF8TSFl+L35ucRLXXlF56GFIG5hD6JDrlSVQE5tex8yYAyX5MWim9jWOxWdWGInhWalmAC8U7Cfitc03Ctvtl6djHqdQM8X4qOtw59uvP0mb7fA78+OxTPiYOa8K5PPSx5ukYM7/hY2qOKXTuMz0LCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALZRS01p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALZRS01p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26ECC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766234633;
	bh=sP+kqlyYHLAiB1z0BznrVbYjf+ZKAdltzFm+OTzDeKc=;
	h=To:Subject:From:Date:From;
	b=ALZRS01pH1s5JtXhSD0KopCdQMiKSKN9xS5kgqH4QWrZb6AnAD3bppEtF2/CceFMJ
	 +tDnA3AimNJlzpctR0yO4eQIRWo7BOgF3ocrPKDvTOYlyUoTORb7IT2Uk8k9PLg811
	 1DfwB69iBQ4mLnthkag0T+sQ5oQJLP+QjXjaUCskq8qwVmeIQLNfaUjoz13LXyHX/f
	 s7B1NI96BTzqzho3K6k/TxO8H1jZYalFgHHKVytnJJ5moyZdLsq9Oi698oHu3dksfu
	 4oFfnF3W553KY71f7+G+KqMxuwrj1Rf0rFFYpoPdOk5+YzqK2V9UWHi7jQmxYhVhfK
	 pFaYEzsOm5Ttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A4E668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623463357.26146.6139474391011007689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafaf8633371a05bbbd2471d060b2f5bc25082b8c3c84548f508443677ee0269
Date: Sat, 20 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766234633
