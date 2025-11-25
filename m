Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD1429B8D3
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764059574; cv=none; b=SE2VuJFJ3rfdU5I+6+WsaNoC4lyNk06CjTh798r6nY1Hd9t+rO0KZoiqEfUXxNOZT8BFj6MELFk4By3qOkDDcnQRzctWYnnaTEovJSQSC926S36jNGS0JqqImDOZ4xq4W3npJJG4jJuHcyzw3tDp//t8oEmV3uPcp3KRjz4zKpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764059574; c=relaxed/simple;
	bh=jse5Mu2zva2TA7KSa6DE80C/YcFf1AXPMjNHPwrqUkw=;
	h=To:Subject:From:Message-Id:Date; b=l4ROj9j8jF/wqhUCtYRsSRzNbcvqStnGqxVPB18rKUqb4n1IxyTh9cWuqYUrydjayEpkCGA5VPztoDikEjSeZWg1R1yX+NSlNkk3h2KerQjZEg0s8tsBrggu6kLFnxDq1VxJwycE3Ng5IfVFzGJ1kwBKhpDaW/K1uNIEAoZQAv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3ohN62Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3ohN62Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE8EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764059573;
	bh=jse5Mu2zva2TA7KSa6DE80C/YcFf1AXPMjNHPwrqUkw=;
	h=To:Subject:From:Date:From;
	b=V3ohN62QYC19lHTvBl6hEpAgBxCPjV5LrO7FPcA5RMGKIfdMz3MycvFyuO7Q8gh9v
	 ACs+3+Cw/f5+8D8QO1pj682gV3+FDPwwwDGDsBe+G3zDqg9k7WK4Q8pUE/ttjFuaMT
	 jB2hiq9Xn8vtOwNXsB8Ox7Eyxk3xv+xd/86QIzuTlRlv8uzFUcHxj7IEME0iwug2E4
	 bAGJcPub9Fh0D9Omovks535B0NXNsBhcQF/SMg3ld5vf6Das+rruTRhsk7cyWxsorU
	 lchvv0vOFcPGE9NPvJGSAO74+JnGQr9wqoVPPCgti/1/NDXjb4FWcZoA+T94KCFmPr
	 inLvbG8B571Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99973CFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405957359.16678.14746759222120900342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827cf75c957965d5be9e7c315ab419b86a9cc05e0a430247fc65414c23a15280
Date: Tue, 25 Nov 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764059573
