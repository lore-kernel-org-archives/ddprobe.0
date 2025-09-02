Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A992E972E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756802394; cv=none; b=FX/JCkVt/neBDD9OZVHJ2tb0f+Sha3vapZWtIxDYIxLgxwAAYx4IDd9/q+jp9gJ8W5uY3TBshUUh6vjxJadGicmfKXIHEFNUX2W8nk/ANedbClx5V9JxhkD6vOqhvXii26VLSdr0mg1OJN6dBGP6htSlUIkgvBEuPaZMWZtz3qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756802394; c=relaxed/simple;
	bh=4TrIJOryCLPIZ/mem/RTqNsYqMJU0nRrs1asQs41SRY=;
	h=To:Subject:From:Message-Id:Date; b=FQq2Zmhz+SSoPK3bIophVjj7iaRii98CXNog5RYYSLYntGPFXUBc3PPt2EFEM5b3jnjPHWxa6X2AIMhzkY7cvqTMt6Ly9LS5dY+mpo1KRte+zUiGvE2EJtR80wZ4JJAABpVFYzsz3/1eKV3Blm3IeSsHoKsu/8cFBHQub88OpW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSbO2cJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSbO2cJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A86C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756802393;
	bh=4TrIJOryCLPIZ/mem/RTqNsYqMJU0nRrs1asQs41SRY=;
	h=To:Subject:From:Date:From;
	b=fSbO2cJQN3G3ut+CBTMf/FNas2B7NP4WpJzYhXYdUVZ7zCNZO6oJWxAgix4ABQvEl
	 5oKeH0XKaXWc4zCu3T2n2crOqSunMdGAo3fDTwau0WsaCm8bKx+22q9g04cYsRjhAK
	 aia0Vwtnx8dr/0tWFDMRNBhjFrEjUI/mt93HGP1Lk6wtCQNg/lyNGJA+/bYI931IwE
	 Y4VbIQQQr/XiZ8h/CWFrOVMXXtue+Xvgq4i6PrtGrQaRBs48y90u5qKgt4GweqA5OS
	 R56OODWq4fhK/h/hx0Zf7/LzscgTNQ2q/ASptufM9Ccd1Gu2iaOH5ggjt3+AGxn+bQ
	 H4OS0Pai+lJ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91168CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680239358.21106.13255261549577858099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67033136d4cea057f41115582069c04198ecac3b3dfeb92764dbb3b9609f4cc1
Date: Tue, 02 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756802393
