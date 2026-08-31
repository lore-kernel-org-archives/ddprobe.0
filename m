Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A18A3C8182
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788163234; cv=none; b=Bbi8iWU+7SBbFqOuCBCjDoEY2pcCHEoFGpYKuwt1UY/KGKiJK8mgHvFU5nQIXXTV42QHtvdcJMG/D3XyNejiuVElh+yh4oIXDdwuGai2Ge9BhzTW0Hr0M2e6hF25rbxNBypjVwRLLn4szeTNK6934eC7HGy06vhol8UWEvO6Byo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788163234; c=relaxed/simple;
	bh=3GHX/LoM/ktT617rVnQNKul14PH/wBs0PKqPVBkQQJU=;
	h=To:Subject:From:Message-Id:Date; b=BKRnvCfCU7LRItHaVc0AMlhYRmMjvTrShgyOHSsKwuM0gAFP9h+fy4Q6Vsfbw934/Cy90O/jmP8BQvaYPGcJzRpVvzn3y99N76KlRM1+3ScBcdVzIpDk85c1RUwNdo6bz4vy3zsSVaxElJrWR7wT80rSKZIZ14VkGT92mWDukc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFDB2PpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFDB2PpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFD9C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788163233;
	bh=3GHX/LoM/ktT617rVnQNKul14PH/wBs0PKqPVBkQQJU=;
	h=To:Subject:From:Date:From;
	b=IFDB2PpVWgISsZnh3s2u7W8+F/5NmblKkKkyYX8IrTctD7DHnaMsL4F3uNmS7EXie
	 TC+/x4UYkAdioVivncZ9vTnUWRiLCltAPCv0xZcHORzy/1dRm8ga2w35btqHLW6pKN
	 DHmvGJcJaTTFa/97mO+nobEJVI/Q+Q12F+Nxx8X4IqZYAmGEXAscACs3+GL1LdSIsw
	 59Rr5HMDh62eg7PFg4jBB8XIgapFJ+UqdDaShQBCGFSMJAHKHdiNi6DxY9yklUASWi
	 GuVPM++afHfDpTeSikb6qK2quXJ+GzZRxjlOLRAPKNopMbv5euWUypusY2iDSDyQun
	 7kC5FgPKe1OFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC393C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816323369.23917.400848420874453487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a46bc5cc590c5e3680b9fd84fabebe51cdb0b499f46e53575c3e43284fc4e95
Date: Mon, 31 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788163233
