Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D99334DCCA
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770072234; cv=none; b=NY3tCkp6HUsnPp5+Wqeu15eru00bmE7IgPrah8AmyVRf8nni5ZzROKL9boauqtJgowo+9hKfbZlMfcXwh4ZqXugRAOM2JgCF5ArJPir+K+ygnSDp5iTh/pUtA20qBbs+6F022pgNRzJcgRLMatm/Bg7qTjEvHVxE4GKMb+j1mDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770072234; c=relaxed/simple;
	bh=xwx0pLVsAZHulK1UEBJvyvVS/c8wHe2u3Pk+bsS1Q7Y=;
	h=To:Subject:From:Message-Id:Date; b=csVAPK43YzVhXFjI15+V7k8656FEihxncdZmrj+1cQ+64QTZgfV9KjWRaikgCz8T/pYcPqHl/WSZXsJ3ljeWR53KHCt1AbsAs0LcVCGuai3NeNTM/mF7KiMhKkgwkGFXX7QpImrP5khI8FjaOTExQsQE+4cjtPbYXZw2WmHmQ20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMhTUtxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMhTUtxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4FEC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770072233;
	bh=xwx0pLVsAZHulK1UEBJvyvVS/c8wHe2u3Pk+bsS1Q7Y=;
	h=To:Subject:From:Date:From;
	b=SMhTUtxrcmHRo4B+GjNq77BdbsJO3m/nGuufS/70LxBcrh5PukcribATGAlF5oKIi
	 kPXivhI3dAy8riXO65raKJuUtI37b0WaFh/ne4HhVC46g3Oogz6OICmyhHwAQS79u1
	 fauFdcR/lB3MZ+9uY0eOoijdFsqX3mwcweXFjegK6uFG8kxytCuRrgI1bV/643SR1T
	 zXO/LeUFlfStr9GPThW8z0IfGT4XzI+6RTA0R8EecwRnJCmmhpJHomeQJgUK5SKROH
	 JCdF5efMz/fpdrr3w1mOiaT7uv50F2XShBcCt+Y+HPRivnPm8/8h4rstfWeUVNNiQW
	 ckA5SrUKO3q8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8CCE7FDF8
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007223361.30149.15010931970069354880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195a7fb88febcfa92cb4046715ca4736436362d84c4acee4336d34ae44f1308c
Date: Mon, 02 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770072233
