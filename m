Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BD721D00A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768056234; cv=none; b=Q4gOn9GUqjXXYHyKPvks0hdlkTXCyQAq52Ggpn12mB8WVPZ1bnSDloqDnyf7iKUUHLLopGc4kaB8kNZroqM4ROo1QHf/+lo9mTvmAchCZFcbsl3WJJ7hHk83It55s2nnaTe8q+ambwjhqHbh5SBaPmHS6kSyQ8+vXVryhw5VcN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768056234; c=relaxed/simple;
	bh=8IyBQozW1PyMuXWPMbFjoBOd1NRcT5CniQcpTEAdlTI=;
	h=To:Subject:From:Message-Id:Date; b=uJi5iQBoZJ3k5CY/f5oRoD+e3bcz+IGIVie9PsjLHvYDcz314vOKpNFkF1J0zIR39fcPzhq/1XZrl8MoGm9QTLwCK9OcgIreoIBt7ND6kG3SNpbxV4JmU1U3wFd13Br6/yBwYAvRiyaqv80oBN/IxGcS7FjZHSuLdnWML3a8URY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks8TWE+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks8TWE+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A18C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768056233;
	bh=8IyBQozW1PyMuXWPMbFjoBOd1NRcT5CniQcpTEAdlTI=;
	h=To:Subject:From:Date:From;
	b=ks8TWE+0FALrscnZQfK3Q7FxDHAf1CnKJxYwDi5wGQA/hbBOv7UceoXWD8BgwttEc
	 kszPtjtMvZENkCdBUROVhL+cuI2pzvFlvEp2ccNJu5X06eJ7lfMoKxSNN34RQRDMh9
	 M8gJJ61/DMVdYMIjCT/SDmVRqeW26v50w1malkFxenPU+JmuDbOIK6rLKV9j2LJy9d
	 SVuO05CjykVpREEqHSp0/gPhJahCCHe1JabzZdWa5bGsyodjbJIIWRSxXzeExMiIvR
	 N402ARjvkDVY0DCPgeMvkkbNnPqTaehT+7V3ZJ2wHdjM5fZM+A0H+vmxPd4HpABF4B
	 Lfz0367JduflQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954CAD277EC
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805623358.6077.5230858692805335743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba5055e64f8f0111450a01988fedc13d2692e77138dc46ddd2c9a299f818000
Date: Sat, 10 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768056233
