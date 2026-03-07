Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2053D25A2C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772884494; cv=none; b=CeGvfSii6We2yZu3xIDRxKREcxJw+f3CYNJw+wWBGlTMSB8h9EW+TgGmRPPbMvYPBSFPVFKHTQLYmHMjXXgWHwxvVrGU033QNbVpM8d1/GArpLNwYlACveIXySFMCcD1VM48YWCEs0pcITr0/8bcfoks8DokcZIZJ8928YfS+ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772884494; c=relaxed/simple;
	bh=THEdYg+UaTr9oGyvtZsa7N9Arme/qv/cD74JlJZX1Sw=;
	h=To:Subject:From:Message-Id:Date; b=u26Zxev+T3oUQr06eCy/JGJqzP+DMrd+vpozgMO/XPReZ+MW5oGzLT2tYz1OZZwfb21o5wbJyyH7YWd/A4cQG/27tHBmumNzuv1R9qqFjen7iOC/2xCEPA5O5iqtzf1oM1xW5c/Pi+pTEcsZvVynx6Z3VPlDFxFlb4vAZELkgdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRtj0E4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRtj0E4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C38C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772884493;
	bh=THEdYg+UaTr9oGyvtZsa7N9Arme/qv/cD74JlJZX1Sw=;
	h=To:Subject:From:Date:From;
	b=kRtj0E4PUS4F9NqB+nKT2pPQDvgo6f4LM6WB61HOTSbmsNqbQxDQVcR1DODjPEdOp
	 6fFeBkSOnFuVURnknXr1BFTIJ8E2LCAvPjOFVWkeDIJqn54O8/nEUhMMzImbN9/BDm
	 Jdyw3l6GNklsz1lDV1C9S8WH8Th5RkNv67BeFDWk/bgmQM+tFwhABVt7uO1VjfnFxc
	 2j+EU1rQRuSjvImyBFzpMG7S7M5WH+RHOTt7G8XoHcEdzj+sYa2dKe14QqhaZM/MeD
	 bT5GDifeFfE+iK/cqNRb9kKJzDEDOyZ7xdJ9o8LmrhWKwgUgj5DfpmS6YyGGcpkagA
	 AYGPVkRGOsOuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CBDFC9EF9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288449361.30605.9826455865693882036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc12d593c04d11d7ba0bfbe3201ae7a041537fcd8cc7ee99a2f53302a7968bb4
Date: Sat, 07 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772884493
