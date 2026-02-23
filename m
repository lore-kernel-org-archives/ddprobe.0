Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07722156661
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771853694; cv=none; b=Z7TI68QpjS7qJyHgBteEQxDo+924GUyiZcmIh1beJUKRnCq9x0dtvkkuXRP0dU+X7o6+LMcxSHZovo6r6L2bvoR9YJj3gTLdIZZhzhmDhddilIj4/az4QrTVMIjI7XIrdLOkqaVeCq9/K7rozlI9D18fXUDyA/SsO0kFxEGYNjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771853694; c=relaxed/simple;
	bh=kScQYXBqB8YrAGAvHntFhiUaTpXRPlkuGW4DCF8z6N0=;
	h=To:Subject:From:Message-Id:Date; b=XRPoDnAWcT2qoYrBq20rO3H3VSuaeDg47/bgVekfqW2d8vygXxmP50nCz0WbD/mRJEFgCk9NJJ6rgnYrFMISnNAg6ONx+J7Dn/GTBu1iwDzXQXCDxXJ/7YEiidvGz/EF/iGotxeSwOWxzkPklRTkGlxthyX+B8/cqY38xCAeXIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRzZFf/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRzZFf/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3874C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771853693;
	bh=kScQYXBqB8YrAGAvHntFhiUaTpXRPlkuGW4DCF8z6N0=;
	h=To:Subject:From:Date:From;
	b=HRzZFf/bN6wIoNWyDBGiqmISvFGJzvuxAveD927HBdD0n0gmH0OUkufaZEvzhXhwd
	 At4Ren9u75sqjzJI/D4EpZ2+rWFbtHzgtRFmb8IEfq2G16lGDNA7/Vg6VAWx1WVlgq
	 EWzzGUlHPVvbwdy3Qmt49WcTGkbEgWoiYd6oxhv3MhDiLDS4ItQ55EjhMcsY4IkS5b
	 6XwkH+Tu3S2vxwF011QNkmmi9iO74ORlnhBfu/W1Rq2PeEiMDM83OOgbvt8sZFziki
	 D+4E1JSsux7Y67S3qFQ/AaZubnuf8Z6u+AHGoCxfzw3C1kxeJYNrADV0WGr9/aV6Md
	 tcrgJHk8BAYFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931F3EA4FBA
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185369359.9662.8291941138852779766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b615757ee6b81f9b35b289f0d2303a093702035a81d609ec2df9b122122477fb
Date: Mon, 23 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771853693
