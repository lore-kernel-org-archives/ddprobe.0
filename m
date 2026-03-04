Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04015314B9A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772588694; cv=none; b=OKkX9iZUt/Kj53rgEZ6cTeT+BphZT4sJg93gQXwOwv9NDHn+QcqE0IljKL2P/ZEtt3bFR549IDyZrcAZvcPRlwGN5/vtDA7x6WJWluF4Uri3pdYEH02ETT5Bi+FqOL6vhtaVaILqXy6L/9ImNQwJgrEzyIc2u4SGI78UKnzE784=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772588694; c=relaxed/simple;
	bh=fwn9upQWXgww71SepRMgRodq3Q+rtQh6wHK41L/oUAo=;
	h=To:Subject:From:Message-Id:Date; b=e9/hHBCF1kPD4xUSRkVLt8Fmw/H9nUZV9mrj0vQQc7f0Hu369BN7xSnV2tjt53sMQch6KkSpWs5W+s0eYbzmKj/481QPVgSvIrdy5sXY1862AcK0F4EhhRcawQLxDk6/FNHJEEu/lmME2/6jxIJ19rzISuL9VRh4PZQ1CozVNNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9o/687R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9o/687R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF91C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772588693;
	bh=fwn9upQWXgww71SepRMgRodq3Q+rtQh6wHK41L/oUAo=;
	h=To:Subject:From:Date:From;
	b=g9o/687RhY+CWGrYvHBV1FIy/8MD9bwsKLM5OGIXZ6BdR3lp6/bicrp/CScos2Ry3
	 h13RqCQWs/8UOXCj6At+mkyCPzYPfXQXJ9SDaNcGdeLswddj1/wTXoYqciTYm8R1E4
	 FQwUMepDR4w2Pv4GacHz2rDSV9Qu9Kc2Gll4TzSipQ1DK2OuwszxpqfUEiFTYV62o+
	 MwsHN+5hJipvK1+t9+bQNJ/Ll7U5v4fgTfWc/oULp1KUfcBJHqQ81+RGJJO3DBy/Po
	 DSlEWipF3goUh+8jzzXhwMTQkk7kW9whS4vDD+zEcByo7eOtz4K0H8cqEKdC1VkgLx
	 CCSITtULOx+0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9937DEDEBE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258869361.20065.7644761275694962697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446b309cc22b0b0ab1929ccfe256361d2689e2949f0814862281f6e040e22da9
Date: Wed, 04 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772588693
