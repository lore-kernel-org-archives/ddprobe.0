Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF501D7995
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757110795; cv=none; b=enCHZPoVNQzNOqmwV2koQxozgocRwGYKthbxMT3lbjm82xP3lrBt0fBTXSW74DNyVJECUUdse5X3BRQT2m16czJJhTOb1lefamLCrzAmZdfaPPRRddJZxvPaa+hsB0v0fImD0HnPbrTWxDzHQ8Ly+ugpdBeTg/ivD+dpnQ2EvIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757110795; c=relaxed/simple;
	bh=swBHNpepuujcbZDPLGh5UR9iHodzbB3vH/bP/16WEc4=;
	h=To:Subject:From:Message-Id:Date; b=WzWQC19aXTlOu9PasE+sUgbWCCPFsSlPwXIMf1fkwc9KYXBjWaPb2zKqim+m2JCf55KGiabENMHi16b4eXOmvD9hvpPtK7JrpoayM6fym5vypgR0Apr8bNb8Mx4z/PlA4PLkd/rBLJJRKzK2GlSsuQ1HnsovRmFYL2QRviMmabE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G243h/e6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G243h/e6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E6AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757110793;
	bh=swBHNpepuujcbZDPLGh5UR9iHodzbB3vH/bP/16WEc4=;
	h=To:Subject:From:Date:From;
	b=G243h/e69Yo3ZlMH2EkRbhl8Eop0OwxgPcjHaBeMF8R8icTPkkhhY9Fhz5jsLs508
	 AbbMEw4DUkW10b7ejX9GTnJmVs8E0TS6m6xdUXxJQRb8JgigrTIa+UkvZyKC5w8GIe
	 GNCsGRQY8SxIkeFrpDFlaBoqWgaSmS6fK5GcRUtDG6ri7oExMNNDtleBofOoempk+2
	 yt34u9C/ksCwpZFe3x2/xZiJRSrHpSdayr0yOIjZB0z+iE9RmjCP6//61qa2XRlsRX
	 2rXMBPbHk89YL8GkjR1MFgq0fBajbAFrVXQUKHv9vwJDoEKKJ4DV7CcM9mPRrFuG3w
	 FegaM0M/c8nLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96362CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711079358.4010.2470660801106641185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea05eda8f42d79625c46ddf32f16430e513d61eecfd3381ab2c5b6e82c71ae5e
Date: Fri, 05 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757110793
