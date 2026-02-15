Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76BA38FA3
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771190094; cv=none; b=mPrNpt2hn0SzjOv2gpNJTVKDk8KfejNbft4oQaKqCa6jGPUPhxi8BOPj6Pazhth+Rdn0TCRRaNwVXxEEu6OFThrBegqo+z0404zz7Zl2rDqZkeqixlnUThF1DwaqMxU2HObFcyE3HSTIFaHgv6MbVSvF/H9hjciDucCDDKy3oB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771190094; c=relaxed/simple;
	bh=4yNJITUw1JqxfGnX/KhxzPeTyM6xtyTG9vCypwMc5Bo=;
	h=To:Subject:From:Message-Id:Date; b=m7HtkCbg+DupnSdBsRyt0kq8WWrWkzlWOj1S2+CUqqIv0ALdpgNdJQSLS13fqn+ZaUNXbEldU0mAxBSMFHZ2AUdp3oM7mow16h++A5CDxBRZOyDDiSfvKeV+GrEraQPUXUojbFsYStfHtuGcLHwZw4gtBaH/kQTShA+weRbLd20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eijhdn2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eijhdn2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EA0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771190093;
	bh=4yNJITUw1JqxfGnX/KhxzPeTyM6xtyTG9vCypwMc5Bo=;
	h=To:Subject:From:Date:From;
	b=eijhdn2fj3ww5/s7rMVXNOC8RQ8YCj79Ni8jojgBiCk2nH82aetMF+G8hERsyNfIm
	 YtgQxD5tzktalDEnAWXyv/8XZr9YlaX3LJYvDxXatBp72svtVMMOgsFRcpnrNvYI39
	 IQgdWVSBih9cLdHv4IJkPpo0A+kkKUbm4a3pvUvT9xW79xqb5JCaEmGeWOcNPhrUpo
	 fIEpWBf3ry7FdwcCdYrHJetG6wUNSYhYrLVg87e4+EN6l23a1gdOSd5Z3hVR0uJDjB
	 vhp2NU6Z3cizH/UNURQ3W7wPuPGUTi94pLJfQS7jJnADtFVv1zPfQkit96qwh7nYgB
	 hZwU/8mbh68yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A8BE63F14
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119009362.20120.3176510090764393749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567fb862b9132bd419ea11d824b079099e172187859d89242f096960c5d05841
Date: Sun, 15 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771190093
