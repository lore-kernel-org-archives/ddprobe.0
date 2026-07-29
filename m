Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1AE33D6DD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785345634; cv=none; b=ryM+UL2Kd7vjU0frCWD2gh9XAQVlbK0646dAJmQ846E1tXQv+V66zO/k57tnMn8DIjaOht9/CXgZAxaM/jwVGqsJoYQ5Lm0I3BZmQJgR5UvYgQSZim2OjaFFCi1mvPFYjyIiCX1nh81tAVRwUOiBSv608wCuCN0yinWs0CVwyCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785345634; c=relaxed/simple;
	bh=xdEHDt9GCT8t86Z1n3hI0O6zg1KyK6pz3SG+utrx7R8=;
	h=To:Subject:From:Message-Id:Date; b=VyTd0650OJHyn3jSLhqM3InuIFQW6Wu2+sTc54M1KgB9T08MabHyboIjSVHef641c/Pe1SkwDW+8LjxJPW5hkKfZ33zWWZK4I6hlZHedTVcIUPhT/kGad44qDPspBbYtakwF9nftXckI8RX7Eqllp05goumLkvFDH89N9gndrBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWejyruG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWejyruG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FC0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785345633;
	bh=xdEHDt9GCT8t86Z1n3hI0O6zg1KyK6pz3SG+utrx7R8=;
	h=To:Subject:From:Date:From;
	b=NWejyruGEn5ooYLpYzCSlxJ0ToQEn2tsn8WXCc4GGUEmMvR241Kgvj5j2ZitS2Xa5
	 gEJKDtxNdDjqqWidwtIneV6UxLHXt97pGXQYhrhJ5O2D/WvbYzlnLH49+OhULzdCQ/
	 V86mHaCuhOZV0fY4/C/wIb75Eu6qj8N7kR4nam76EEPB2cFgMmfPeMYxPvD3ALj2JY
	 xAr2NfHXhfiyPT8Q39O651LaR5ZLBSyvxw8c83s5XlnqV/KwN5ZZOKAhHUo3vDWGzi
	 EtU7q6yMna2v1Lr+lgLavyNtii5w+mQpI09VRavJ6a7/gJchZct3TbQGfPDKH8kUz4
	 7a0WMx3e7kLGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D56C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534563368.7642.16214193243012017241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f227b16f7345ec5439181a1bb6b0e316a182903336e6c7154be7a4f3278fe08d
Date: Wed, 29 Jul 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785345633
