Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E7B2773EC
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790106034; cv=none; b=hS+wS+pZiV54nvqmxzhAygGaxnpJx+KO2zkH+glhHwNezZvE6nwyag46J0xBncFtA8M4okUUNBK/bniy3eAqlE+/Is4NJDTE1pf/opFdfZW3urTQ4py6bXA14BPuhpEFBKW1uHdmvaspe6uBwkGp4px1KMGSUMwOivSWnckAR8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790106034; c=relaxed/simple;
	bh=ilezy0/ilLH6c55mjdUP9FHozpm2DV2YN3jxVmszkpg=;
	h=To:Subject:From:Message-Id:Date; b=HbysHWEyXQmqUPzIFXTy/11IXwE87iSXMINmJjRwmg0nNaZOt1CQ6IhP8aIzaSm+8G9jGYdz4MkzxCHs/p0RH4Xna6TxF7HSgzn9ko860PWYYO4OMf1srH3S2+G80J0Hje6mwm27PrHn7PanmD6zY3iyAHWNM2I6eNh0+MwWws4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq9+j+jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq9+j+jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC34C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790106033;
	bh=ilezy0/ilLH6c55mjdUP9FHozpm2DV2YN3jxVmszkpg=;
	h=To:Subject:From:Date:From;
	b=Zq9+j+jrexFDWuWIZvZYm92o1qWeTEWGdTb6+rM3Qn2BtGM9MpLc4C+qThBURZs5+
	 RnfCR4amRe3t8DlieuazFZiEWkvcVgsIuhkQ7Pi5rUJudMdiJy77IYrwAhBu7mvClB
	 P49VxPOnYN+X/l6voMfykwCM2RP5rlwErvaP2Xkkcxr1Bcr319j3XPayzLCgwdSc1k
	 OQwd7ZhDIBSKczYZAxFMzq5XsNWjRZqTO+9CNc3/lQcrOc6ibg3sW3D9MayEesGlie
	 n1WFprW6mj36Z8pQJcg6VHG/wq45ikszihi4tGGRUgxl3aLRhsqfrbcf6iCAkzZDcW
	 5wuGcCfxPK+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36A0C98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010603372.30384.7986602411963827134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bebe18604e34eb872e1f514e58742f671703200f11fd2f9f02438a767f9bac84
Date: Tue, 22 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790106033
