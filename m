Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AC0143748
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749098394; cv=none; b=ewcQseC7lKBiQzr7f5dXCH2FK1V93qE/N/rsxrSZ1S4Pi7SMAaRokuB++cSbKSXiIbfie8kc9nPirs10vVK60iApmoIjsqHhCevoWsoZWWOfMDXr3CLKwWv6t7q+6fyCU+Q2yI2Uc1ZklnPJ2a8/AMhWgz5oQefVJIlGO7p1SO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749098394; c=relaxed/simple;
	bh=kZQqnq4Mmo96OP6BaYjhGWD36ArAQjmLCy1iKzUgkwU=;
	h=To:Subject:From:Message-Id:Date; b=o+aZM8lz4H2zfwEseGD7Zy8x55KuC0q8k7KM7LNKskMUDiGqS/z6MbDhCqjWvwrN/CNHZqpqDs33eyL0VEm3YOodMU/SjZGQY3WiznGMTzUFmPw/RInLIbnSFHpxjA8CZOEW0jGviaCguL11I/2JfQc9uq5DfMkM1UV+OgkRNxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOat0bec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOat0bec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D23C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749098393;
	bh=kZQqnq4Mmo96OP6BaYjhGWD36ArAQjmLCy1iKzUgkwU=;
	h=To:Subject:From:Date:From;
	b=LOat0becIgAiKra8jEx2gtZAxnhWhrHZCtRly/Qz8tdqRpMvyUEffvKfDFnhvlUJ9
	 Bt6FCOJhvZs5lJdsmj06fIUeQX0eODQBLPpAE6hjfwj/GPXkLarGQg9kkwgCfUiHfI
	 XAzOmbcQB4k7NyaIGfJDNFaDYZ/9yWBHMlCJpSmX+/txfIvDJ5upWFH0xzh/W/3mTR
	 6Aj8GEt+bSCR9JpbzXCR08GZV7gCI+bdep9yCYWFh8KC1fDD7ExSpTtJxcVlGQFV2g
	 RSmYSYmRY2qBr5cupAPVMfRAvNrW6FgaDEKdMfYVmcEkVBbjhWjBST4x9epmcIcDmc
	 IE00a2EOYNBfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F02C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909839357.28889.10614502276231530038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b116ef9be99358e5a82d5397c6ddc7593b25720fe9dc062fcf78cc7e832394a
Date: Thu, 05 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749098393
