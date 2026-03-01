Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8D11CEACB
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772377494; cv=none; b=ROn1Q2EgqE1agy06tIgyu5vQglkdoiPYyx6Vgc5GQp0tJzJMSj10aQ5pnVByJJ9TVR/EuDzMfx1cx+STIfcNpJHez/T3z291pl7TcOuXHLQDb2U32+sP/XQV+uG5Nx4gZkzMAYPTwrhnHc/AfFBOupbm+ThcEWUonT40wqm2ilY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772377494; c=relaxed/simple;
	bh=fZMkWKyhdtcuHSkE9cubLyRRWNghK1oCki5OEthZ7Zg=;
	h=To:Subject:From:Message-Id:Date; b=gu4zk42oVRkImPcdQdpFer+1Wvs5J+PcFhXgPXjJGRANWQ5GHcWSU162NAx12WXRy1j9pj+Wr6hQbdd/VVpvfEXqHDJi/aTPHcZmhYtCnVIa8Lt48vRBvsnjeVKkPxCqinVS/h152JNTQStK0Kq5FV1XpBPRuyIBNafybWZ+L5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7lG1Omv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7lG1Omv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B663DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772377493;
	bh=fZMkWKyhdtcuHSkE9cubLyRRWNghK1oCki5OEthZ7Zg=;
	h=To:Subject:From:Date:From;
	b=T7lG1OmvE0tRYiEx7IjxFFiqj2sj6jU05IJCjPgJsqkdhU2N1iBwp69uRCoG9Yxsu
	 xLLw+auHl+2VI2LRcApI3XPVzu8Zj7NeaPzddSWXIG9b0aC6l+C132lupyC5/mkA8g
	 Ws9cpySRPl+pNoKLy+OG8vf+1GkI20ncPrDRULlM1XCNqkBvyuC+QKtzfyRmraw5B7
	 hW6AfyerjoKjeQQ2YWgnSgrLXJF/trX/pmr/K9mPcrvibIKmd9OZBaxk96BL9pLX6q
	 /rPpfL3VATj5njg36U1K6v2gsw6OzCSByiJXgJnuD49sAqO+EWgv8tt/QThIPw2BO2
	 NEBvSVwAx/STg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD7FD006D
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237749359.30457.462356112779311778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab4c197f6d9d8c6e1d604c80cf329025dd5b8284146c5bb055bfd47fed74d8b
Date: Sun, 01 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772377493
