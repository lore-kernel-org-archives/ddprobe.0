Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA032FF14C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770014634; cv=none; b=rc3sNYE2j/qtYSCrPDQgGSGd/doaexKTqmzYHwCWEKS/36O/DugDCl/XXPMKH78GGFSyx8u1u6FedS79c6TGc4yx2wCeKxTLqDIXUpgzgPHl8A9BXMGWxUGEsTtG2c0GFJJRgBmgpoHQ4eJjjRCA+dcbB3Zr0g2WZOxzYNPBvX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770014634; c=relaxed/simple;
	bh=vnO9orqZA4ltEQLJqdQ0+HoQhx/OOGEo9PJEUXCbxVY=;
	h=To:Subject:From:Message-Id:Date; b=Mn2ICiKSgDwLpCFkNCwHWdEBz9Cl0gcuT368u3F27WWKzOUmgbuwDiRTSCMW84Y9+5gm4F3RaMIDstMkltrKS6xyWonWkij8eB9PGclNIxq+mP5xjKjEXnCBs67Ef3pRiL5xXauk0Gg3xpDpaiPP2Pj0ZO2WnXODkPKLbw5f6ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbA84slp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbA84slp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BF1C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770014633;
	bh=vnO9orqZA4ltEQLJqdQ0+HoQhx/OOGEo9PJEUXCbxVY=;
	h=To:Subject:From:Date:From;
	b=BbA84slpzy55QblG7E1vdVzE93R1wMexTkEWrckFBHxnzxa3b1TPlxuq5mHHSu0fq
	 S2QW9qBkQ3XcKtVJd6ajy6D2yAYoVQRwezsGQRwxZ8U3RToPpXKuf/lBEyiTzvUqsU
	 ZeOda99t7gLOSWojzm6rJAze/ZOXCcyJ0JwzwiH//f87fKcvWs+/jgnQAF716JYoWH
	 MWy/iStaj+sF+2SBHQY2e0hElrswEyydQzWNSVweDKQVhjGQLos4Jxtdjc9MhENUrS
	 iv99IVt9+YofvvWAVheYhRocxO8LyTztubgHFTUz6iX4HBXGeqsxqTD9C+swKRMAU2
	 hDyC9FeTxEHpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B5FD172CC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001463364.13106.99235464326087388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9503776953c8f2a0f4dbb672908e6ca3f2e8715781aeff539636955b495b71f
Date: Mon, 02 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770014633
