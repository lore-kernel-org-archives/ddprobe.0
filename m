Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277B43D3B3
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758506994; cv=none; b=EbBG3DrDu/sxx3XaigQ4Egj9wmdqFsuX/dYk+j4oLjmg29aqOazm9k5ueoXmKluogAtfuU+XsZ/azLqxdX/F3rYZP+REWYq313dE1C8O1bjBTBGzBw3iz5U0XGbA4+C+TCtbBx05d74UPX3JHOeEsVySYz70sV1+bifn4lyin5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758506994; c=relaxed/simple;
	bh=xAb4CLNQtJQbRagL6LrWXTYtcOp0rXIVNLlHHY8CdJE=;
	h=To:Subject:From:Message-Id:Date; b=XvHB/rmPhIyfE2CE3TB78LBbKvlx3mQ4MFiaSqccJ4Hr7ocH341uCmyYiKpz2fyz1YzxfwdBmx3/1XquVUyIwbSekjyJjfV8b6GrqB+dJqi3BCXc32h/p7FcsoQru4sNcOALRRxp5TmTziBo0eSphGWifj10j/qJzpvs5pSlHqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKZyhHAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKZyhHAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49C8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758506993;
	bh=xAb4CLNQtJQbRagL6LrWXTYtcOp0rXIVNLlHHY8CdJE=;
	h=To:Subject:From:Date:From;
	b=fKZyhHAYQO3Pp2Wx1DKFbAIkUhXck+bG2v1hqNgqGA6X5sblciTEC+kS5OUxccvjL
	 xmGauL/yZ9JJlpQY/B1eDFcinZsI8AxpABTJls5113p+SGVmF0wrIMVEJllOhXnKUW
	 mWC9gC/dt1BVjQBuorFe5cDpchcktPQF1Yc9X5NuvdMSvFTPN9e3XkEbKo6eM2cMZy
	 6+BdPHvENpLp7j1HQMfMA5yOn/sQnBTeYA6psiJMnnt+hjw8KGwOd1MSxRiqt5PKPj
	 pdX45acsF+1AXVo3l5DOKMCJgKgJuMTCUAgUhwhxDtbqcxRkw+kox32AaZWwsPsjfg
	 V9iH5CdGcCReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92148CAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850699357.25388.616691000303304443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d0ef6f7ba1ed806681f456263f44cd0b6fb0aa26459bfaf914a2121b4290e1
Date: Mon, 22 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758506993
