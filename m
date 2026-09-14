Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D15416871
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789421434; cv=none; b=KFzn8Arl08bKNhD2hVHlum+rNeC+dm0LdAyrXodIgvaf8q3nhnfo+6MaQmkTAPvsAHedpAH7WvFU22eT9z2sqxVC2APTwUmPlqgV5gDnsgmxhLYLzoMdxJIDEXCscDm5Hzdt8ZinY8HwXH6Ee5DvKS2EvzYS+i8LgDb9YNJkq0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789421434; c=relaxed/simple;
	bh=YhubfQpAaiAUO0l2hjW/0FJwc/Dp3PpBtSYAiOWt4WA=;
	h=To:Subject:From:Message-Id:Date; b=T6fljjXEdn83qBMm4UF1189pdPc2GN/QCquj/PG5PABkmBNhoQTkM3gpxrUNWN391v/0Bgg6yosL4bwfOi76mLWuVYQI0veav3nyhppfLn2LDQpqgbN1vkc5ESc0oLY+vN9Eki4P5opan+yapHVRyphm9HxiwD64LNsFlERZJO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI0XV8aQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI0XV8aQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A58C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789421433;
	bh=YhubfQpAaiAUO0l2hjW/0FJwc/Dp3PpBtSYAiOWt4WA=;
	h=To:Subject:From:Date:From;
	b=PI0XV8aQW/Jp/A4TL7GftSolquYfMMshF3a5biy5DeCU8s54vkVzXOiqxvOs4Uqe1
	 k7KIsvDCoi7cshzgkl9atVYOkrDI6GbWP4GqFlSwgXCtEvPjx2HtdzKJxMh4xsXSBM
	 OI15H+L0gJEYFyjGZTQqYriqF7leE4Two6XZgHcI3h0kqrVnE75+Wz/InK6Irp16cJ
	 JGoe2H3UfN3Ya9uXEGxOMccWJJ96L/4aEa1CO9U7V6ly3tlxNz0aGNrmnCS78rNnNO
	 ibBlTJY6UVRU40XxdX6L46gpWTmGw/r1t1I3n84qF5d8XDp7fcoYGMmnSfcROcj5z0
	 3hb3buoKhxlbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFE9C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942143369.27488.9808638515455240842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9e12634a74cee2d18f4bfa5177c259eb601eb35cb60e3524c644b65b39d913
Date: Mon, 14 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789421433
