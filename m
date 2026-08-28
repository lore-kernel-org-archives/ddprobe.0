Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9523E0C4A
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787920234; cv=none; b=pLkYO7NZcLnXaHIe50HghvvhrH5YlCXM72dmA4m7VmCNEV2dGgPPuN+WPUV6WUWqp6kkYHD+0UaNyHth4AsKI9QYsy9duSvL0QicNg7CGOdagJo0sDTZqrMXvqYL0PJ71no+VFWJI3tV6C8RTD2e74hTpTTIkV9lBnmPosDPtDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787920234; c=relaxed/simple;
	bh=Ioaiaj32pfLUWXqDCoew/ApskZ5/hkGU6YIYf1hEFXs=;
	h=To:Subject:From:Message-Id:Date; b=bx1sfXC0jan/+bVbdOKxB5TPr9Pfhz3AP3pUALNoBhqaZKVgnrfXIkpp1qYVY5U1g93/px/8jYN+TrnvpFtWxY+XUCD7Q7P07uDVmSXlyRLqh3Fx48KuDPvUxPFHHglu/zrIyNXU6vEudLGP4ZPbfs0gzPdwfGxB5GWcS1bKaSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+ERXqNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+ERXqNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE12BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787920233;
	bh=Ioaiaj32pfLUWXqDCoew/ApskZ5/hkGU6YIYf1hEFXs=;
	h=To:Subject:From:Date:From;
	b=T+ERXqNbbReBvU24L+syoqHeoBRdSOY20x3erkuHOdfqHRCXRiNKJQOeax3PsqmaP
	 L+7Qn2E0ziA76ioROVB3/LERnewcB9BHdEnSn03xFwvA2UlOiYMLyboieMiYBqUJP3
	 nuhdyUhgs5F55Idz3fS1JCKPhgUlbHQJKvuGjsyUuSQqjlRVnlr7TZHy1Et8AgmYFE
	 km5vY4xLfWdDjEnU666dal4MMthyuKgSIvQHLHPXt+RUrMaq+AdJISFv6dY+79n0oy
	 4UnJ6h0Wn9qoinecAvgsu4PzQ5TFFi6p2hN0PMQRMHDL4fm1xaHwBhYxrXxursmwoU
	 5ZhBZFiT/g2iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB7AC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792023369.25072.9236784562544699966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1674f84ca90b4df43caa9ad3a40c009c14ffcaed7bac2b01ef3ae476fcc6a6a9
Date: Fri, 28 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787920233
