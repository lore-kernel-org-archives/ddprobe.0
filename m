Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E64221DB1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758158994; cv=none; b=V37+vcM7Rsb+kUO26Z1xXY2pJvWK2Zmbr+KF6G1URgQmbl1MltQDCErBDcik4p7SAC5TTSo1KRNa0ZAql6+jLUhadXSkS1Okd3sfnD4MCKLV02K/vLV4i7rLx1mHjofoPFDGJxb3XhOabbY5vadvX/wxU0RhheUzuEs+d1gQj8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758158994; c=relaxed/simple;
	bh=oEWwEYtyn6IkPP6Oj3oBZKV+cnStK6m6yV84lYxk92g=;
	h=To:Subject:From:Message-Id:Date; b=c6BDWUQbg+tfNKvcNM3BVrP19D9FIoKWfx5wRfdOZHP+pXRB+b9+w6NbfKj1XTbqRMZiJYmU7vZfrykeDuv4YD3S4W1ZpHyLziU2tYYd2+4dH4XuIlRntsreBBLYhd2W7UWpbnDI5gcxoBTggYWVodEeSZno0LlOiFXCworskjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLFW22Ta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLFW22Ta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9026C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758158993;
	bh=oEWwEYtyn6IkPP6Oj3oBZKV+cnStK6m6yV84lYxk92g=;
	h=To:Subject:From:Date:From;
	b=gLFW22TaaPQoMAMpK+FaHjMv/1wlDbBIyObeOXfUxxpSpVAZHkqxoWOUgQ6lm9AXn
	 /v6dQnziB2VlH70Ys7jrCzHQoXSaznzV/2X1glCxsZb7d1nPbSjo8728M4vzDbKFZB
	 VQ+3gPcLidyRHCDjNS8ODZEH9sDFWIHfVfwFLrqwzvq3bLN0sA2WlxMuQU/aXm+b/f
	 Th88YYLr3t6Ajeig4ivnYJW6QT8qFNGj4hgA8XUYUVRD8g/3P/z8rGl2ay+Ui4hp40
	 Q5WtSDu7ATJYjYqOi4nk9R6QWM06g2CIMM4b2b6GnPiq1k8JMIM5hjXwWbXF7AGvWP
	 UxuAClSo3i3aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA377CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815899358.27816.1661562712503866666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29eb274ae0b11359153719ad98f93cd249ef1476e1cd1d6597996ea5c0708158
Date: Thu, 18 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758158993
