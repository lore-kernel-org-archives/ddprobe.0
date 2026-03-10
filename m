Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171CC1EF0B0
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773108294; cv=none; b=f2316amCvTJMPkmf0dItAC4tdVlRgg86Foxkat+5Anl1cQtgeNhHnrGI4vPFlFzOtBXZuiWNOMyeZ8WMLf7Y6p8WhU1zFYbbGLdqBU35xjix1Z/3Z0D7aMd+kKhwuR305xUFkkpfOXvNQi2LQ7og9P5zbHbb8p134TDpnKn1/nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773108294; c=relaxed/simple;
	bh=kJfdkrUFDPMFhik4o9YmFcareEl8HVaE7tiu3Wquw7M=;
	h=To:Subject:From:Message-Id:Date; b=cqgRc5BAUXE2//fnp4cGlUzlbyUQcV6e7aly4Gvt2bxRnh1Oogu4X/xIv8KqvnSbPc2k01TKrtWgpPRFdD433IUjDKLzHPOGmZlqj6fmH8QqW+fIV8s5XIwVvdJu4GyItnbJxhMDGlEX1OxitnTTmfyfLjRXe83mc+q2HPMhfp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1nm+p7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1nm+p7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BA7C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773108293;
	bh=kJfdkrUFDPMFhik4o9YmFcareEl8HVaE7tiu3Wquw7M=;
	h=To:Subject:From:Date:From;
	b=j1nm+p7AKLhhWzVfgqvUh9WyM4C6RPKEq57XYj9/cvz4P4Q8kDq3yNNL/wAe/Wzf8
	 Ty/Qt555MZF5U51g3UxBkKRabvkkmWYktcjngYV59Lz3Vy6wdqNdCLYUCjsc9kOxHJ
	 kbXWTJi2ge7A/5Fu+ZIVuXzncB9EqK8Ma11hrh2LXPpku6T0eofwzvAFlFfCSb7qFm
	 km+YDgTC7jsj1gK0TxWFGdRoYQXfPHk/a1drp+k7RQzyiL3b3572fTpzNIkSWdZJRy
	 lwB1O5GedBSxT/F94d6+Yt6015HCDXXmiBYP/tS4TsXu79mF2qsj3nYMxDeFMi9Nev
	 hfI307zHSSbcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC21FCC9A8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310829357.26897.10007125725138146344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94bbe2bcc892aca69c286b00b08c96fa7d386b7205be44259d3ef5d94972b56d
Date: Tue, 10 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773108293
