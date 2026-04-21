Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184FF3859FA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776791254; cv=none; b=J3Pm2ZcrbVUSyCIw1P/FEWUQmlqfW+ZpPLLBbImFMKDvP4g9D2WZzLrOAw5TbMZVFZC0uY4oiRrMntuA6XiZn2OUAmosJJR+loHWAYvUkzGA3iPAtpOV9kQCIz09hMkxcOuY1Vw/fN/RX9vuKsLfiEslYCbMpLseyHjtOrEKGZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776791254; c=relaxed/simple;
	bh=tCK7S625DBXhdkLErdangCe77X6sKzXIdbPxLk28A2o=;
	h=To:Subject:From:Message-Id:Date; b=sXHeuTKcvreQw4z7CqSQ4r7a0UdNocYkJySohSTeuzTbpSCr4LkDSwiVGRkp3qIvVNyuJWmn1alicIv2Xpp4xbFKTgIZgNRqfpqvNtjn1KD/aDG8FxnIsR92D5hekHd2p5cvb9xKx7vKXNY+F5s1EQfM9mCFnVpa4QQNKJSmCr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mg0BqNKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mg0BqNKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CB9C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776791253;
	bh=tCK7S625DBXhdkLErdangCe77X6sKzXIdbPxLk28A2o=;
	h=To:Subject:From:Date:From;
	b=Mg0BqNKd7VbtkLbQR/MW+jLzqjzOK/ROLMHnG21T5xmRCcLDTUZFnrOK0gT/zVTUm
	 2weUshwONcuWqiBd4NFd1hOqL1oRE/V9cbZk0epkO3cZLkcEPDUBDNpQq6uUvpAU0h
	 15G70/7xgaRoAKWcrozEkTEPu+eAuFV6M/OnJK/enzKhyzlJxYl4PfgwGq5LvsnTnf
	 KuVMezawZUsSB4yfhHVrcq4RLTU+CuKDycDiEP1o56w8IifbAedd8Bg8ZshtPf52eU
	 0hmvzvbcAZUxGS3Tp8jS5lCMlZ/SoLyMcdm0W+gZwpksxn+vr7VVsop7FeiDnzNE/r
	 qeCQi6Y1OVrWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8FF8FA9E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679125368.10555.3854542215024999843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f7f5c20925f81e547a1645a48253b940af6844e825c3d6be609300bfb85f84
Date: Tue, 21 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776791253
