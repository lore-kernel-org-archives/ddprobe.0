Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0192F12AE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781642794; cv=none; b=NQSY0TTAsHa1qPIhh8HCqedsaZg7Gkg6XiYNBA3Zv7Qh/3E76AMWAuqAAJa3vA5we0qhdf5o74nrCviWq4GjaTdnOh5c2XSktHQILyPFfYhABbS3syyNXQLHrKIrJ8oGUZN7uHH9qE0fdL0OU/7r42cE3HDztlYm6ArndS61Y/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781642794; c=relaxed/simple;
	bh=mQc6JTZOalyB/qeX7JeTsBuGz11qhYNLASydRcBCB8A=;
	h=To:Subject:From:Message-Id:Date; b=enwjX7V2kUIsnbhmpceNsKwwdT17wuxpKDPZTQVH2wveZtu/6JRlLu/1JIcqKAUHGq3+pj1GsMMuPCuDc7TnNsRjl9y9hIfDip/C361WDTTVJywg+LHzn2pKkJd3YH7J8tGHsSHO+0e9vxe0F6GkK8QK94dDscmQIc4X/ic7C9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDIlYF2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDIlYF2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF8AC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781642793;
	bh=mQc6JTZOalyB/qeX7JeTsBuGz11qhYNLASydRcBCB8A=;
	h=To:Subject:From:Date:From;
	b=uDIlYF2l7nGVyrimcI0YlPGb02hWSOAvGGCGt3UnBoNR/j20T6KtowZsHMZQyePCz
	 nZOjbe2OMaSPGjAHgLquKV0o0Y6a2K6UUHzuxnirc5xB2rEbiyPpIL9ipzEuIErbzb
	 kYGlfxFxpUZBS7nN32JyhcwOiN9cmFpZu+9zwYEXwY+FAirHWYxZFygdQaWLO9ccTD
	 KiWi0j06kw5EMCZ6j1Trz12ZB2sGbrfNeGbOJeK9SOFS0OSvadRl0NIzgpa5fS2PkA
	 R3HjEhwQl2OCf9ofBuLAKCucn1y0alCU2ofSen7xet67dVheJOIZz3LXX70/w7yyWI
	 FNRddPHSWYKDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCAFCD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164279370.3936.6314721612670586943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6b90daede9f579df3b90e0ce4f536edb501a3ddafe8786fa816c94fe68d790
Date: Tue, 16 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781642793
