Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB4D281375
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757192394; cv=none; b=FTl8po8jvRyUotXbk936PSn3HqGoHQAC0evz5d/YLxoXIyWz/p47xah8r0ORDgv86fS8JaArH3MkSnZSKJmGFibYHPmj8j9SgbKXqRQdsM2G8cfeIK8bFitxENLcFnuDcN+WmMa5h/0jcNtZHSz8GOxpNlB2pw7DbThaD3UOWzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757192394; c=relaxed/simple;
	bh=v9oxYSDnvLTl18ATqFhCG0lscPrUE/pQdvg/jTizuVg=;
	h=To:Subject:From:Message-Id:Date; b=U9njiryCX5LHarS4dZ57pA2zaFc5Vi92avd0Wd8ziYjXdkW2ElfN2Aa9sQTIkbXKnWlTE01z9WDnT4jDI9TIMez5K7xLg5JesSCi+sdefVoAUT8ESj7QAy/68+DUt8KaVSm3S/i4SVUVW9oovsf6es/qgFe1OGuDYwDHFCb3eio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PofBdXDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PofBdXDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61CBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757192393;
	bh=v9oxYSDnvLTl18ATqFhCG0lscPrUE/pQdvg/jTizuVg=;
	h=To:Subject:From:Date:From;
	b=PofBdXDdB+0wHJyKmi/AoZgC9uhFADvzrBwahLks+UMWh6pjX1y/aV1nMn7KUc198
	 7KPx2jo19jp+AaMtsDrAVye+ZJ2rcCcP9nlIv6AV/aDD/gjoiBQ98j4m8oGIZZa7WP
	 SpvmfcNyJtTKTZHhNMgdq9i2/6XkDY5Z21oUoaAAhmpc3kxKh0tzt1sPbYglT3Wf68
	 UmW0C2l8UtYEYiuLLRKS84o3yvOYcmtQNh86tIMun8RHHB9P4oY0kpxfU3vAmfGVwn
	 Y8KDX/YrsKBkVskamV9BHxlUVF3OYMi9M7JVqelW+ZsI5Gsxfm5aiQ/sKTLSIwOLJB
	 uBnz1u2xVvgvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CDDCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719239357.28311.11432437394817308493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128fa9910abf6e49033151fb08b2e0e572a2819a5cf1cd12e7b88df5ca9ebf81
Date: Sat, 06 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757192393
