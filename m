Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CCF8528F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721806554; cv=none; b=k3nYQ3WSbqZzHzjyE4ZyLNAyRmu2VcLyp358UHuW0olT6uggNffWKOMTC1OpXpAT+7kyBkd8xgQMXnmX5B1UYg1I2uNkdld86LNfEZYi5lvLnH2vY/du6hfgKjV1d/kS0DzEqhI3zFifOOX/7pabAX6AufHCYJJFPnCE8EZR6z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721806554; c=relaxed/simple;
	bh=BVxwHcM11a+XpM9zp+jDxAApdtC6aIaHADH0q0QPquo=;
	h=To:Subject:From:Message-Id:Date; b=A4hiyPK67sVZCiNrmOYm428DTMVpdNXPEpXhiLQE9my8xL3bO9FOPN13uChycGFSC0rDP95C11VKQ7/XHf2A5uWpOYYwYWeyl7B5KlEL3xaRCGl08Rgimo1AsIPbMm2sDTKSLELSsauOTd8O/hMr1NVQxElAd4F1N1WOauAY9IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml7hgjlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml7hgjlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A698BC4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721806553;
	bh=BVxwHcM11a+XpM9zp+jDxAApdtC6aIaHADH0q0QPquo=;
	h=To:Subject:From:Date:From;
	b=ml7hgjlc0fdnCDknN6EYzVrIMcUytg1r81zpmTNJ6kSSbxCc0CGSuldnJCgHPJ0vB
	 FZStWelQmFq39cAKVNFR7ctOp0aJ7JJX5+LuAwiR5cc4M95bOfVK9J55Fh0rONF9KE
	 ssFmkXz016dKhPMWd1AUs66EWuIR2X2Mck4QnDYFQFYa3nv65u5VuKnixaZ3umlNb2
	 ubnewInFXjqaPN1dvaS+5EGplnbWylBKRn1Nw0l2++6t1RKkGqI0jzHjdWJd9nJGWT
	 4U+sEMJmlrwSlH3Ahy3fCaqp27j8MNd670B4YKtYCPlHTLUayj2wZOu47KgS0b1DP+
	 iijWnG5MP4MTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B24C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180655360.17391.2815276910323849489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdebfbbfa42d869488a920a3455beefb87246ac0ce12c634b74f8236d7577cdc
Date: Wed, 24 Jul 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721806553
