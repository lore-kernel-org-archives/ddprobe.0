Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087FB3BD228
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774454094; cv=none; b=rCwe80s/36UiaRWECooleOazoXmmF2Xkti8aJwblShgVOYUuFzh9w8jXVBq0GiVqtaiW98ueBr/D2IwP9McAyeb+0Bs5QgntD70JdCG+FLv9uIy4CcZTU/HME69cngOoM51uw7CgmB2c0PcqeTH6At0kpECOb9kEHPvmMWu+gzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774454094; c=relaxed/simple;
	bh=FZh101iEAAH52tIE/4HpM/vr0/PK4Bb+uKWEnMiXRxI=;
	h=To:Subject:From:Message-Id:Date; b=JhjYZf/vjujiF1+3wvNBkPyKvyMjRNHBB1LmBGo+vT124FjguKyJvHjCdR128tb27yet698lJFpoE/quI4B36V5OS93XroZJ4HbeeecDv5NW+zxDAnQ8uLREglBA8pYODrPVyqtyILtbOnnVdo7djQBLQTmYs8JGTN/2auM1TKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsA6/hKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsA6/hKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A510DC116C6
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774454093;
	bh=FZh101iEAAH52tIE/4HpM/vr0/PK4Bb+uKWEnMiXRxI=;
	h=To:Subject:From:Date:From;
	b=YsA6/hKDLGYANEJ4aBP/x0+rWWqu/Ck2V/lBd4uIMTmo1ny+7iU8TI906oiMwRRD5
	 DfsvewfP+qZA+w2j/4LAQ3xO7iITZYVxLDfDJeYuVAuJIGPJtivlT6zMnzPcvfmD98
	 hpOL/PC3yz/MFfPz7zk9JRzztT0mofIHDBRUFa30bcqu5JhzD7hWVxxPC2nUUsx0Qm
	 qBmbwiaJFdSeDGcHuff7YoTgYrB1LBBTjJ8qpvYDdKJWw1cjpTYUR1jg56r+NFMMVz
	 VxkplW8hCh2ClS0HAnvhaa6e/R5S+pod9XMGlk2cA66uKEJCTZa8lqjhNRN/QTLmRh
	 MEbuNbVSMV5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459D109C02F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445409359.31070.16494981492493899197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2299c03b9014ee2846f98aa591470defdf5da65e0071b6fd7c13387f0890e14
Date: Wed, 25 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774454093
