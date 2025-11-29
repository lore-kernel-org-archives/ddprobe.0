Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D072206AC
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764447174; cv=none; b=T3P0sxX4hx4JHMd3zRIQ5WLJovIfDorEwhk9wB20Fdo35xXFmUsBN/qrizZPAr1JTyHW7SkWpscK/44KkgOFWHsogQ9zrXz3WF/obEFLvKm1yYWXuNIdpguYWQ2X8GvVZ3GSpbYOpoqvThmq4dKpgrk+fPggCNW5F7cphYtu/Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764447174; c=relaxed/simple;
	bh=PcbHQW5MW1qlR0/e4TZH8baNm8409DiCtGHke8+qc/A=;
	h=To:Subject:From:Message-Id:Date; b=ewvu9GejNWTv+T9r9fXgS7S7L8AwsXKO1q2J5p6q/uQ/+4KtuS3Cav5y8r9AfL6EV9Z0fm2rRTdQIVRifhJCKBKytxOnZKRx6a0XlU+evfEkS8gfwJAa10zhdIIH8G5g2o/6DKTV/pQou+VkT9c+LAeJb8bE+c9CdMAsFhks2IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7EwL+pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7EwL+pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD899C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764447173;
	bh=PcbHQW5MW1qlR0/e4TZH8baNm8409DiCtGHke8+qc/A=;
	h=To:Subject:From:Date:From;
	b=b7EwL+pBKhc+N3vUsIOz3HXTZCK2yhC04UCtuGxrRQaeMrvEoA9RXypsDrIW32jZE
	 K28GwZij1J37gw9VNYsetzz7qy9Mw88WXAwR0vZS1HUQFrCPeUadiDob36WCfn09n+
	 P1IFta3nUXtxjhWeISjAW4MPopBzF1YLJodV0fmAWBcYcU7gg0w8rYplnnq6XEI2l1
	 nLWWBftNdkFYM93qt2qR4JP/livgvXOMG7EWDxka6JBLB8lWL5Pcv35s/z90v4P2jC
	 CjmNzPg7mqKil1ZfxnAXEAap5IoG3gp6EzJHWHCVfiWepZJKRNZyfSiOMgT8Vau26q
	 XNWS6eSOdNu/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955D2D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444717358.3605.6986073557738217128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b3bfa568b63bb06b9fbbdb27903fd10f244a771affdbd02c459a1e1c5c98e3
Date: Sat, 29 Nov 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764447173
