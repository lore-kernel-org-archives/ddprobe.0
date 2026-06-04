Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1210E23D7E6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780571674; cv=none; b=iW24OeCi94zOaNOmpfpWFNLUph9FXqhQp3Bzq9XSS5Q6yQpX8B+2JKLmG0TxsvQB4kAG5TKDkwkRQJZlr/K2EWDuEUYhaAJfN4QswVs+3ORZBnsjEUFt6vRa9Nosd3ske7SPIrNaj/eYs/Q9G8gJ4pjunITN9lF36GvWer46994=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780571674; c=relaxed/simple;
	bh=rn5BzdghHzwy97T71OWyzoysodtmLnjE12y4I/BAWwI=;
	h=To:Subject:From:Message-Id:Date; b=UdRF76Zrtj4Jx6HjgjLiVlbvPt20ACyEV9hBKEzmf4BeYdH32ZOHgOIuCT498kPPTJMLIfB5bHIsYG21765C+u+LOz9LlYNQhSdXi5SmU5ptkbMLMyVE2BIQxb4XlNIkRiMh1YofyyGJdhPJAUSgyHpc3ZeLR868ILmZiRSfb20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t435PbEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t435PbEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51A2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780571673;
	bh=rn5BzdghHzwy97T71OWyzoysodtmLnjE12y4I/BAWwI=;
	h=To:Subject:From:Date:From;
	b=t435PbEVY9wH1viN372ylmVhFCrHExA2o3afAsGgfFzvHU/WykBrF+e2DzoEbyuni
	 v+NFeof3k5yzRM3K6JkbK926B5vyccdS0wrtevjYuNIMq+OlL5qNWQPTwwEVWdWBwO
	 WFUZ2TXkEBlSBcXkP3vHzrvtpGMTkAD8GUBRieFvLZny/XhwodMTbizw2qw1pfF2L7
	 4FIQgJqcIPZXmiAmfqaZf7QntK7B/swmeCsdNHgSKiMi/K/Pf00vmJly6bLrl6T0W6
	 GKAtg8bWWPY2zu9GlIW3z9SZCuH7CVanIXO+fNdByB0WMCBvfPxV4/yHrZfT+uDKgZ
	 4ieJ2PbKC2+eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9672CD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057167368.8311.17044207810351109383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacefbe05b7180160ef530dafdb2cb1b77c263711fb8d9194f0cbe151f6602ed
Date: Thu, 04 Jun 2026 11:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780571673
