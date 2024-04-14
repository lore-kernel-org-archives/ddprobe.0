Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707D3E57E
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713069563; cv=none; b=o7VPMrZDmncW6aypwV1oP845qE2D00UAsjFmyMTgr8inSTqHxNCLLedab9xvgJRUT5u73I3yrra2XdLak4X6xENxPrh2YNus6uDngW8W6f1fNAky3w/fZTLed6KpL5J6pGCt/09lmErABouV2RbDjwnfunnfkw76uq6smGJkqr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713069563; c=relaxed/simple;
	bh=8UztmxB5K3rLiQyb1X+cHlLdNbfuYYwyfgMBDcDJYt8=;
	h=To:Subject:From:Message-Id:Date; b=cBUB7O8sm3Y7a7dTQ7T3zbfxFSK153CTIhXg6fO7XxNC5x3VsjMncgDZhgJSUJlqx68hNBtJ7J5aQs7gRh8tP7QvJlJjJdFXp8yRkg5mrrUnd62LsjsPcN8vTvzbsUM0G2Gke/hG0SKG9yNGOEXAr0QqNdukbyn3tJNWavrs3bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wtv9f1TV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wtv9f1TV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F48C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713069562;
	bh=8UztmxB5K3rLiQyb1X+cHlLdNbfuYYwyfgMBDcDJYt8=;
	h=To:Subject:From:Date:From;
	b=Wtv9f1TVWubuc/uNphYsMyKt7Xy8kUUv46yowP1YUJyPaZX9zmTIS5v+HTwoIWxvT
	 wLZCVuppaE6CVAnPBmojkukTwlkEHh1kuEeWHSumyur/0fPsiVI39zqqJHt+dJLuyB
	 RGq9JYmArQubhpAT1BowalcJkARb4dlk373S9BblXRuwXiGWqUKAPgUT79SF4/HDOZ
	 xeucHEQhmacur02CbrLRjVoKU3K5uvHm0Ud4f9g3Ut6rDiZirz7jzFuhSCCNNRZozB
	 E/rTqmq+BboHoqmwITmh2hvjaTIF29LIgq0oGQixgR8ADLU+YGJRu1bkPuhCxCNnku
	 J8CGdAQYb01Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC2BC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306956275.11599.16318307717896426263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bdcd0e22036bcd35de6245b6b649f7c9e80070123114d5bb207451c0c342602
Date: Sun, 14 Apr 2024 04:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713069562
