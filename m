Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A41522F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749767994; cv=none; b=skau65Ae6Nz+xph4h3A7KQm+gadnNI06OTGVHdnx1Xm+1lW7SCnbfoCVeHfOKXjRJbXGOMoc/Uv/ifwfaj6nWAd33uIKJW+7lFqbb/Ug5nzpqrP40y45VomDpBhwnHJluEldMqQHXSXNuNsFQgwBUjsYiFxMVmZDlYP2jZMx4AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749767994; c=relaxed/simple;
	bh=cNm+u1Ne978rdH8E1mBSR3F10O4pZcbZMxxpdxHzsac=;
	h=To:Subject:From:Message-Id:Date; b=Ge5I2rAOar/VfyecxYSvo+EpPSZUBtFNkzyf+Yy7BqkivKtSkZt7O6ots+Ih28gQtg25Sy+ap9EqEMIpyuPYni/B16PXx0yJoXvjGkizfu7bPNCjsRpW93LD66DgbH3uIrBlfsRXRJRBOmpD4WoQGkfMf4oZY8RQn5f5NezW+tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcMt0eee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcMt0eee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBDBC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749767993;
	bh=cNm+u1Ne978rdH8E1mBSR3F10O4pZcbZMxxpdxHzsac=;
	h=To:Subject:From:Date:From;
	b=mcMt0eeeYMGiAI9gRNmNi+VmAoHpBWcL8BTLXry5sskznpr4fyg2tqMQ61TaQhF6M
	 DacSqyIdgDY/BXWBR+tjhVeaYPpeIcxEvaBG/Wp1IezVafNNlyXBGsf4nZSaNmm8g5
	 81R3xcsSAqr/J9vKL81DWv8htl7LuN03fMkjqo7GC16bsd2t7iEsytn6sYnOmxWpp1
	 xKMMnydsUspSD57TccQfgpRkiaO7W8W2g69SxVXy5EK5EOllZ7QRkn4CO1I7KYMEwN
	 wqzo9+Obu3O0W8HsMUt3JealptHrcbf3MkkjqHtBOydP5n2FxH8eJy2lbHs4nt+OoR
	 /TBvL+F7qSzpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3AC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976799358.12365.12832707233926921605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de42b39906a41c56e52ed01d1c9ff3b97810e00d9786e01a73b5b49898b0aed
Date: Thu, 12 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749767993
