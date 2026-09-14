Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5404C2FD696
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789350634; cv=none; b=lOtWvlDvsVvTxAvL54Gr/jdsKoMBOzllAO1zEHJIWyzR0sIyvXFO8ECeua7XhgUqZqeYjYH+9JZ8KalQDfQYfDds9ONFVZgIFrfY+IBLx/TK+cOSkgUE7Zn+mVA2TYmwm4Pe22eMyCdWsadzYudd3OeLy8fodYq2BhLYnCmPgNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789350634; c=relaxed/simple;
	bh=vcoO5Ru9exqox/j2O+yWXiicoh2mDGp0/q7xYTpvKSU=;
	h=To:Subject:From:Message-Id:Date; b=OKFwRzZ2kc1v/raOql5Yj8V4pH70K24GiRH13q+Gkq79mg1e1xvWQ2X+WwGMEsRuUJao5QaT/mGcrV1gzkNo8MflPrQLkG5OHFwQb4ans4DKffnesVEttHufeMOgaW4367Shs/i2UbGPlDbX558u9yO3hXfBqNYPAvYPnF+/aTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o78oySnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o78oySnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B82C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789350633;
	bh=vcoO5Ru9exqox/j2O+yWXiicoh2mDGp0/q7xYTpvKSU=;
	h=To:Subject:From:Date:From;
	b=o78oySnfPGKJK3ch61vo6KMN1ekkLB6IgECIY1hLHvgUanX/IThG1tPysUyPPnuQ/
	 kTozfh/+MPlpoF2udlv4jWDnlAg6APjUb2uFLZW8GAgV/B41WiSKcSrzN9G7rLr+lj
	 l4vtCKcG/CqjImGIAk5/OInYMWlwXDzZSK3CikueSaUb3GRQHUt3i5ITsgECMb+PQi
	 1KR9I2DomUIJpRbdXT5ph+L8jr4er9kZbLWEFh8Qr0CclC4T9WVpgYGw3hMUhlevsH
	 NNihO4aIQ3IPlWZtWuLmsHfgE3y0mhLkXgfYp2Ee/Qg0Shbe/4RPnW4wwLRhZmZ+6J
	 TGEPvN8NZefdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC966C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935063368.21765.11193769341554795719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d268699e591a6a773f62469f9e6b94c8086cbb224084b8088989db7090b7bf67
Date: Mon, 14 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789350633
