Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A5D7489
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724639154; cv=none; b=SDTgbvD/u69Yz+WH/rIdq2kGJ8kRizXd8AesPPDYGKj3t50+hXM2/snbaMyqEnw9OQWRVuFxIHZYJmPbCGgXOwV3zgtqli/aUBeahoSGCGfct8onohWzbc+DKAWMo4B0a8s5B/aF0vG+pBBhW5V4xfpVMekowSR6rude4f2QTio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724639154; c=relaxed/simple;
	bh=jPtDed5w+ejwpn7bjcUHzm6vAuNVaQsWQp5xhPP0Uns=;
	h=To:Subject:From:Message-Id:Date; b=fRsg5W6TMmnor2ZYETNeRFwY1nZQgASp2lbEMr+8sV3V6p88h0LPM3Rx84vuOvlueaa8Bb5qZk1T4o7QABLV2N/fdX3ptNltnOTLHi990Mc/onWrTIRM1MT1HoHRm0pLyAKvF+mbCVN8WVEiGMr65uxk0L+OFD68BAYQZotfbcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOir9TQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOir9TQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1995C4DDF2
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724639153;
	bh=jPtDed5w+ejwpn7bjcUHzm6vAuNVaQsWQp5xhPP0Uns=;
	h=To:Subject:From:Date:From;
	b=nOir9TQ955k74ri8bfprGjDaE2U/nLWS5RIdFDPI0Di+1RWdYImAoSxqs8guXZwRr
	 shFedRZkBJvJ9GLATDwo8Dl89hLmbbvU2QRuUHSHvdCoA8uf84HUjgmpandinU3G+k
	 sSFblQP+8VqTRVhEu6dV64lYItcSKyCrfwd3/GHqe+QrSmqxei/l2iAyx+BUErf1sX
	 tTyQIjih8EcH6nHAuBwLDNrX+e10ijiA3z3OD87tLQVhkVllqUInb2JnH1M5E6wuHk
	 66R2s5O37CNGo/Kf3cmLSAU1PFgB5WkRH8DMXHyX+IT0zoAxMUDOTs3Tzxx3f4HvUB
	 4NyqUKtjQ5w0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9B9C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463915360.14073.5960632367392265901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63de3a5b22a6a279a19849edf5ed074c8753f834e80916fd59bdf511ec062083
Date: Mon, 26 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724639153
