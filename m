Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA9A3FFD
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753183794; cv=none; b=WoGpuwAzqcbaP8+3+HfQ6ZW1tHjSfkfVP6ubK3+CeJCSVFOHZx3Mbx7PD8y2M06t3Qw2rGKX1jYchiRfh3xzwacKghWhrgeisVx6BTPP7GbiGfbv4mI9g8KnRfTNcQWc51yzyEbhsOmnNweVnd78knTM3LT4QXUmQDTLg7b7YdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753183794; c=relaxed/simple;
	bh=nyJBVZxTPizEpWq5dVuzPBx5+yQ+iV4JIzDosJEalfA=;
	h=To:Subject:From:Message-Id:Date; b=Hz+MpBOmpTAolS45VQleiXPjhSRf8RHj2Frc0JFQ95Z1WCQDu3T4+AAm18pOC5Ubub1ju1PXbjgixkFRSiZnlCDh+DouaZmQgB8C03vKcSM90hRbAwPI4w444izuLnRYfvsVygmFLOgnwnJHLRCf4htrq2DCVJj4muuBvi36cI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFmsj8Y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFmsj8Y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A101CC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753183793;
	bh=nyJBVZxTPizEpWq5dVuzPBx5+yQ+iV4JIzDosJEalfA=;
	h=To:Subject:From:Date:From;
	b=HFmsj8Y5tMleGQqMOlOIyfzozrq5e2visZvjuZZmIPFpdO57IiKqiOWre+GAg7jVn
	 lLmfrMs4KCUojmnwvhw3Z3YFGCb4GVjI56MtM8/5AKrSPUbQQKZUolUl+hnoCM9+kI
	 /n/cj/4w/gfqU7+hs9JGrEGy5bK9GJUQ2QERbmOUX8Xw0/NADtglliv9qOs0bVxv3d
	 cLjFXASakRE79amixaMXmGZbIHr4bvBS36rMceSI/17GURm3Qqyg2n+His4ihiidi1
	 S+t/s5bSKSuTEhQBpTRLW0ML2IHPa2nQNJaBbfEEblMuAGteUrCAnkkmZgfkW5Me39
	 B7WuDV5RjN1iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF35C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318379358.21724.5888031435100765456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441a2193f405e93b223c5432dce94b883b091ec6c8d3d1a400f29a0927b9023e
Date: Tue, 22 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753183793
