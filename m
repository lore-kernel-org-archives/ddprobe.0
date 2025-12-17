Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C5F2C3248
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765998834; cv=none; b=NRq1NC1oEP0cCSSMRjc4guYpR1pzC59HG+YgpczG2aq/gs/j3UwGHp18EQki1ibvDDwhbdVilKktRTvojF/IhxqE39WVmP4+kYkR7Q/oMniZKa6gtULoFTZXuEekOg1arzImYlzEMUX1mNdNCRqyWWCrXj9+hslxujbGlo3QnTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765998834; c=relaxed/simple;
	bh=jkZLe8bpEJ58ic1szuDCccySXorFxpMji1P+j5kxW4k=;
	h=To:Subject:From:Message-Id:Date; b=pPcFsQVA0DMSJWxeihjWYzFIE2fCwEc4663tbwSEsZZoF6vBwbqbVhG0LdO2t1EzeZpem+NJb3yvEGMM418mwQAQeYtacnyi8NFEwMxBW0Wd5TvvJVR8Lnyb36IR3ElAFYdt8ziRISfJkMxjSiBt8CfBOpwNK3T5rNk8s7gtlRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ4qaIxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ4qaIxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765998833;
	bh=jkZLe8bpEJ58ic1szuDCccySXorFxpMji1P+j5kxW4k=;
	h=To:Subject:From:Date:From;
	b=tZ4qaIxnfoYFUbP4A/50Jryl+E2MHviAMhVYIQ1gMTxxkNOM8jmQfMQ4YrJaTXMbq
	 7GoLNWbKVYAQsCWwXRJNXPMO6Fc3ptRio/5fYPTX10mTTyDJGLNk4C/vvLAziibq/J
	 LYPoovn+XN12Unh5fd/pZi661F8VcCx4Z+hYKMWcomLFSKwUEBVnR+zbBxD2mcsLsg
	 LrTtwAcHejb/Y9ugf3QYcHV0AL0/jSpuX6X4hf4nXBXQzGnx6ANxiYTD28QFp/NnLT
	 hCPQXBSxnT4eT+qB7TdNEuwhKqIZ5DnFCiZZ3DA7Bh02EJLRqk1oSQVYSFqhCS6Nlw
	 wU6BLktIM3U6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C7BD66B9A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599883360.10185.6744337487444791095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b834d2ff4a65e6d0047929d158b1326654ff5974bf20b1a2ab943f7c0b1b345
Date: Wed, 17 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765998833
