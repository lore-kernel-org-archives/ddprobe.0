Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA7D3BAD9A
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787254234; cv=none; b=EyuppAqK25+Kw4/yoQW5aroiP77pGlIKG9vOVXRNuAxzXJ11aDkXdrSAQNUKyP4hFzACbZneVaI9usZbveh6qvjxA+uKOMB0quWBQXWUXGsmIfIxrLkEIZYWyFbwJxB2cD1ZeTlaLnf48y4aR+JIwNvSnEbQbD7Vc6ULvPNnWtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787254234; c=relaxed/simple;
	bh=92/feBrGBEOniN80tTQMHkgQUKpUwxJ18aO6HOc1qlY=;
	h=To:Subject:From:Message-Id:Date; b=VF04052YU95St3c5L8gc3wR0YvYHIJj6jzRR+I5dQH+Xeyc8C5jw0olnIb//HtoHT2X4O/9ed0gWRpvKxM9i1GYTDeJVA3+Hzb2p9N/Igwrkv9kquuq+BRFdvT0gB+x3o6jPUrsOeKBI7QpYXh1o9L21kwQye9THkrxTuB895k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wqzq11sL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wqzq11sL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA878C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787254233;
	bh=92/feBrGBEOniN80tTQMHkgQUKpUwxJ18aO6HOc1qlY=;
	h=To:Subject:From:Date:From;
	b=Wqzq11sLkwOjZJOcmAf2wvbZarcNtO7gMyVc3jR/pjwVf8aVR5EhB9kGfUUDytdiy
	 DYwgv8AeuTTzbOvXxk7ag+PeY3SZfrQzeg/Bzu9fTt0yEJd9ORZaqPYpbCopwYHZlV
	 mi1Z7NTN1tkCS41lvo+3XcLHnBXrByWsJTmyTfcNcHEEKg98EnlqohiJM0mMxbgThw
	 d05sWrIMdiXmSFHn/5xLZQLpyVXMfZY4UxZqYPFehVXibAGXIojlyS5EhZkJx93kER
	 5MNztwhFkP98fvYi7ynIS9Xd1eCVghPpUV61gsijNzTj5NXGBgGXmR7jXH/q7WuvpA
	 8A1YQpNrvVW9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6110C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725423373.31026.13998119877538117289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc5a78adbdd96a641ee7a80e75631f6733148dcd7365d11ac6a66a0eb5c49a7
Date: Thu, 20 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787254233
