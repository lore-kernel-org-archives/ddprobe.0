Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D66A12BF27
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 10:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715683943; cv=none; b=AAExnHKrbSMI0t2rBVzMgflMzj3xoLPtVyT+2KWSDKGpAPjBIFtv0VqTEJvvXwZ8ZG3SkVirSaFr42DQws53xrL6vuPNFGTo9wWnJYo8Lell7WMqM1qyM9cEbCS72FpeF5JQqmfhJs3OTkzUjuiAG9gZgy/Ak6ENxS3fRNF97IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715683943; c=relaxed/simple;
	bh=b5nT0SAIQk82+yFq8oLkP+uAP18MsB0PjGVV5tF6G2k=;
	h=To:Subject:From:Message-Id:Date; b=GFVJKdEDl0qCcDVBqfHY/iP8jpeSJrghBcTQQ5RQ+wlbMxihODqPet5afh3nNkGGkWBP59sD54YookTT2YvLSRMyLis+rCgYMnj/FdHsPVoADvYB7hs0g0+84mdU+WLoPBQKjootEZP69OtE/iF2mgu82ZTFsxFr0au6tqHG/m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+5/klZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+5/klZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFE7C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715683942;
	bh=b5nT0SAIQk82+yFq8oLkP+uAP18MsB0PjGVV5tF6G2k=;
	h=To:Subject:From:Date:From;
	b=e+5/klZBdqS77X6zw0+bZsyhRxlM/Ew3RWV3Cmp/PDEP//NLTjLmjeqvnl5HK1xtt
	 THfpGsdg2+9rtttMXRyh5PIXt87bmaUNNWZlNH/25tdQELP9/xLllWPw2zQJhcSST8
	 ynekhK/V0SxxoQHLzzX8x9AOcp20Rug+EwY75rY1OzzcTYZvN6V8t/TXNYnfUqvWj6
	 eLCXx8yWzlA6CBVHlwYRABNvyajFeRNYpdv3ZihCDMu/o8SxTunVS2rP5QiGHv5usY
	 GNL8LTTigYgqXIcYVo5kwZ40woAGsPKCPePAYQXN6p8myWup7HWwYhUItR6vRnhoGH
	 V4mc8s76xOafw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F41C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171568394278.2379.6924193403180323145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb89df32745374e64a56173ec06c0a2c10d85246a39f91d51d3bc6de4dc1248d
Date: Tue, 14 May 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715683942
