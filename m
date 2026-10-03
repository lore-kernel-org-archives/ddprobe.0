Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41556CA4E
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791054634; cv=none; b=lkPyq1AGKYQr294L94DBvFLcMa6bwsV76HR9M/skL6yVas+PgKPaQczoLkkfVQnrxoTxUod09vXMe/tn52P3PepmQSJZfzGEeMftRZYsp7/i4d131h/vvbKu6UNBv0s5jHGw8C+uGWVQCIvFDeDSWwTM1jCqKvtPjn5squSL75w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791054634; c=relaxed/simple;
	bh=5NZgFe0ABjLboY4IqE/egVI2I1NZGa9/lPotugssZmo=;
	h=To:Subject:From:Message-Id:Date; b=Z/8LevXNjoIVbttx1XVyKmhfoTBDTzCM+G0qOg5AZWjdtpMPv9mXlw4wU4VcQDec/F3JIXtdlA5yg7Jiqq2eEp/UWC1xgrKE8jiy391ZMWKb/WmiRSfYiqYh+hrL24MKdrJAD4vK4Ao35H/wRQMjlnhyOixqAeiARde1dVh3yyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKivlKpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKivlKpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE291C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791054633;
	bh=5NZgFe0ABjLboY4IqE/egVI2I1NZGa9/lPotugssZmo=;
	h=To:Subject:From:Date:From;
	b=oKivlKpnuFawuxgmmAd1xOy9Kp4mYUVxnsL8qQ8oj8I0YFP1kDkYQc4DBmaJb4oZ0
	 94+xhH0Ro58ivaNLvdYIiak7HNZc1rrxtRGvGEpipwlZFvR4T4HrbMqdcznSmDp50o
	 ETLxJApo2wOksVeCOubvssGdPOcsI9b1eI7QzKSbrjEMmsAY8WV9exWrewpRpCglsK
	 SLTI8gOlCawQdxHmdrylxkEproVUZEwTVxUzmIPaPNsSzKq7cza2qzVWIhCI6vAYSu
	 5gPvNHwS3+j7Sxuohzw5/8v1TmVy+ZoUAUzFqy+C98AZq9sWfALsw5Q6RSMES52tVm
	 VF0NGBpwoUG7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D3CA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105463368.26495.5370653009373108993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0e6f05f8fb3cb4ec1385c75e3646b47fa9cd888b5160f67ee9913af9fb5992
Date: Sat, 03 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791054633
