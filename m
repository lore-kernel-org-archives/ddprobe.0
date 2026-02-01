Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2243D3FC9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769957034; cv=none; b=ixqjcRbbPUj0iHP5jMz8ctg5ogDVHxiyCMTF6OP4YqFErV7FcxyZ95Fm3+iV7xeaD8yCeQuUzC7OPvI2ky0LyKGjBzy/dUtz/zG/vOPd7QEe44DtcaluIPfpHl3etquBK6UFhEHQiGRWb9aOhj9aFT+XzjsjfMQshnPCybyCqPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769957034; c=relaxed/simple;
	bh=WoS54IXOamRzDOupfOlG+FBhqqcwnLHQGN3YArRh8ls=;
	h=To:Subject:From:Message-Id:Date; b=ock68KbfojIMYZwFUOYU2eMv9eA9LAkiKgLcswdqPufy2dIfEe3BvDG2ppsaRxX6vJkY916bJpEHYBYcY9TQZj+Dr6B4IVQdh6/WaZKQBdTypBnoW/J507PcPtvVhtlqm4vOM19CvF5TSfoolQ53EexhmP+BrbImK2c48zerheQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPWOP44B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPWOP44B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C2EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769957033;
	bh=WoS54IXOamRzDOupfOlG+FBhqqcwnLHQGN3YArRh8ls=;
	h=To:Subject:From:Date:From;
	b=gPWOP44BNEG6c4eJA8cHjOwiZGh5/XD8yL5F3vYwKRsQNPZH+1U+UzzEatXxNS1Vd
	 WOMvnoMPZ0Rder5PJMAESnMqEcnez18QJANONbWYf2qm7xh4axh2Osmf4DeN/FlARn
	 U3uRlb+qyd+ees8dHu1VlmB5UxcFT62/LQI3D9U8epRoTipx1g5Ngtd5lqJnHge370
	 zHPAh+kmXIv9STHqACT2j730uyBH3Uxf6jo/zBScng5p/5bDpZa7EmFld0HA6kVmOw
	 ObFglvQZMmT5TwgzvBNpek3WJ5PyrwqKEWARLvo7WTFFSPiFmmDVnKX3R3WZWVRx+r
	 iStF40YRCgx6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0705E65284
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995703364.17297.5281648585223913883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d21f7a481b0b1f8370258d8c286a922609d6a980f6972a49ddcca9109c9816d
Date: Sun, 01 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769957033
