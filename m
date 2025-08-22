Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578782836B5
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755836394; cv=none; b=YXeVvPDYkOxVdRm98wzMwL0w44V9AS2w04MEHcuBf7XCw93Y52Q1fqT9AG3N+Qr3k3nKFXqBjpf9DvvL2BQT6e3z1XyJUHnibwb0fri97mCUzaz9xze2+wyPDcEf0aYphxXSA7V1Lj2YzjWgmf5/jrtbsh3NIlE/MUCfaGxEAB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755836394; c=relaxed/simple;
	bh=iT6adPol2DWR9YG6MKRKJwzHyPRrXlPpP4iJgN6ap30=;
	h=To:Subject:From:Message-Id:Date; b=hY1mgnRridxhHxVd9xLWYC2ETfeltxP9M2ccNSda29+yYz5SKLpbtf0/LDZ73j1pWKOUIesPfbg56g/WQnAm0ATehvTuCYhMcauF48ls9Aptv8G1JPt/p9HJ5/bZXgptk0LD0pkL3CudxYb/K/MNR0QHK9Zi6D8G80tc2gXMXAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8+kSA1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8+kSA1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1439C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755836393;
	bh=iT6adPol2DWR9YG6MKRKJwzHyPRrXlPpP4iJgN6ap30=;
	h=To:Subject:From:Date:From;
	b=c8+kSA1oOsAdAuzwKIssELe5mRN2ICBd8+G0IJX2uC58BZe6owPjbUKxGuRaWuQPE
	 HbO9r12PNWYApGRVOWCHLJyFDy5G3p7MXSuWBg5X2V0PEYvxGDgUHDKxF+WftBrMYU
	 FG65Ax9KO4v/YkH0ad6N79myslr3fidQCiW2Qulm1mo0+pvydZCCknog063q2IWmwt
	 MoGDhLP9aGfM0qC/kkehAouAqFmosfim8QuA49+UFuy+xgeMa68O4OP4wjkWBvpyJx
	 AC5l12QGKRsFTHaqhNkwLJ0616d4OUb4+Wr952gev2JG0+F+EVFB65nVUoITM7cIkt
	 HGFzgcBR7hvhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD1CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583639357.21458.17971175765430079168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b9b46ce0111da154e35e16192638bf20a686ea6a4cecde293de78a50adc4e5
Date: Fri, 22 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755836393
