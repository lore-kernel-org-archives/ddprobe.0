Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262F12877D4
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737914; cv=none; b=mU79BOeZY4v5HeXfN/XkPAmGtHANW3ao2oE4q3LzhAnda2TXs0wki6k7C7IinLXr/5J1z8WwUXwtwhIfsXLUstXjsST6n1d5SpFaFj78CiFaObnZt4mnSD+0LDCxTsGLQsMWDx2+zkt80xAPcze2VRTZKna/tJYHMo0iQRh7SR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737914; c=relaxed/simple;
	bh=1Jrr70d6V+K7ZUp/ptdD9jbjfQ1xR/N38dCOhbjyMEc=;
	h=To:Subject:From:Message-Id:Date; b=ZwxiSir+EVGyiOGyL6RyBjf45ryYGPUt/C3tAL/NW1WAQj6WyNyQc9X08O+40+el6JhHzFRkfZojm+BshFmwnr9OIFd9G34sM6UuZ36JS5TAKOCf9K1zSZd7dVZbEQ2ENk6gFbhyi6HgXmovoiliqwJa2nhpNKpNfyH966ET7tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djBLLUac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djBLLUac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EAAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763737913;
	bh=1Jrr70d6V+K7ZUp/ptdD9jbjfQ1xR/N38dCOhbjyMEc=;
	h=To:Subject:From:Date:From;
	b=djBLLUacIKvxGVzbhdIYFahdJR+e7VrjHO2+2oVqwKVpxO8c/pBzVyu/adKqbc9p1
	 Go8pXYZhkLM8Z796Ew19xDl2xguZFg2eBVmN0q3XfQbB1jVgaqyQaoxktA0VOSqsim
	 mw6SD6RIuVKFK7rKe5gcM46xyjfIRZHo/TIJIQ1XtIPVvcymMKf7xy6PgblYkZ47bW
	 SRJXhxKa0zmDIKl+uWJ6mdJpudj/kJomtFqxENkVtJ2dGIuGmBacjb7+cRNBeG0Coz
	 Tx1Kc9q8OPq6xfdLtzvX8HITzDyI2HRu7RqFZJm7EyNSfBDF1/CAjd7ZF+rhmGHNvd
	 IROfVAuek2ffA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA0CFC283
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373791359.4778.12636407585320547106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d1bdcce2726851943575cd45c478cfe9082b497e8d608ba9246e7578adf046
Date: Fri, 21 Nov 2025 15:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763737913
