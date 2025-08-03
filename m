Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D37C8834
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754182795; cv=none; b=OfvOxeEgBHOb3x2s9gfx2bhcPxpXC5pALHbQ7Cg9O3p6re1taUdUP8IVVpsFdTK7MOvMtw1WDsZ85na9Z7lhrCWhIqveGOYJlD3l4nRhVazP/bH9H6lqCsluk6ns/TGyxv3Lg5zln/wTQARoc16+RoeinNk4Z+gp/Xegjh5xV70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754182795; c=relaxed/simple;
	bh=4mTqMhvCEV1KrXXeHMtJFDU6f+h6USh3gNesh/tfSD8=;
	h=To:Subject:From:Message-Id:Date; b=GGGP45mmhgBlpt7EP4BAowoAlozFki1Uja7rKZS3/Ic1dyyLbDE0bkZnyNVxiWFKK3Y5UCpVCmM0FAYYjgw15mZxDTMtz/mSrpzi+RP4URfXj8m0zEdB9cfMoNmff7kHhNuZ0dJQAeQtTtSXGaAT5RLKRjIIxkCF+fsffLCiJMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJ/563cN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJ/563cN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A57C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754182793;
	bh=4mTqMhvCEV1KrXXeHMtJFDU6f+h6USh3gNesh/tfSD8=;
	h=To:Subject:From:Date:From;
	b=qJ/563cN1QUezh88PdVERhSZbKhSnsrNa5D4ZT5E6MPZvdw1/LdIWxgQDlRMylFqy
	 7Yb3H3w3DYAF2pFra1rVDVx8pnBGjyZLZSUPA6hRuIydPRPLm46ew40pH6WAY7/0Xy
	 pfboEG7DcCbOpjINe7hRQXNVGtKiIo4oOI1ee9fw4jbrnr1d2xVoH2/GhEo79VW78S
	 A8gF8WNafthG7Tx2c0a0a4Yj1tWzxx8J5ne6OVYGv2q7frxhcQk4oJpa39HL4BykGs
	 hANWnrl/k/vmVVIOf9EvuvXFzIG+1wfgEGqeHX2NM8+RGieBQxCdRLQcYMQF2riwNY
	 sPbDS5OjPn4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED09C87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418279357.12775.10464951544573474841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360e5ad143d2560a36a59592a6a492db796fa2da0d3db3e21819951d1b384b90
Date: Sun, 03 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754182793
