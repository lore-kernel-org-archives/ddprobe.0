Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243682C11EB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760548794; cv=none; b=MbuZBm4FzUUiie/qlQRLJv/Y3PpxfjDjATuIRkkZE/LL/yPGzCyuYmVCr4eNeSt7Xyw8D8RuiNyKz9wZgJmV6elnv1JdOFBesCjlj9h4cBqSNZIsv5gbv/mhGY2IzogH4JpBXfD7aMSkH4zITUOpRr7Ogh/i9VWGjxKSMJ3DejE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760548794; c=relaxed/simple;
	bh=kD/K0qnC+kt/Y5kbefB5UEkK/B7alB7WeKnhb4rfHpE=;
	h=To:Subject:From:Message-Id:Date; b=UksD5Efg2n52el++x7OlOVfc3p88a4oxadADmZzMHSdNgA2na4dCFdmhJdjDmsg/WblNx9KsLLr+br1RSrF3B/7XkUASpZYDFeijyYkri3E2znRbz4JKPh5U+JssG6FlIpL7aX9vzgMOcZZaC6lOf3eOXkfUWDe4oltyUwJEfRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvZB8L5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvZB8L5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5561C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760548793;
	bh=kD/K0qnC+kt/Y5kbefB5UEkK/B7alB7WeKnhb4rfHpE=;
	h=To:Subject:From:Date:From;
	b=WvZB8L5AowDnsdbYk4g/11V8y29FesNumyss/iDNYd93aFoNiC7pJdpta5hP/DSwb
	 LQ+dTNzWPcxIWBVzybluV5ou+Wmkjzl3U4fvtXWSO1r8dK3MhmnstsjhY1MI3DvxN1
	 88wncz1/1d2NQHiO0k7rpGFfzLdQd4trLnch3k3s+GCAYHXCJpc1/2PZbbldx08nQi
	 Ld8edqTk9Ya2w6tykhXMTLWgTWcnvKuIq8Wpq31KFof2BeBoTvTFNLMvsCkx80IXAG
	 6qREu2mxTjq6SUEXl0evG1hQnSEZN57uENhaHcg+44eZxefENFnCCY35tGoeoH+gd9
	 BYghGGvU8Orww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E26CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054879358.17918.10798078808357454543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8daf67771716febef1c06d9373249e19d6b92937132f3afe7ad92f4af31396a
Date: Wed, 15 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760548793
