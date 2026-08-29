Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA441D5146
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788045034; cv=none; b=sjxR/SYrHjPmeW/0j21baMLhRFdU8iRcWGBNM1Y3GCBvUWxm3XcXWmg6ZXt3u9kovugyRR+li4CLmThiumg8GBRfKPgXZLQudv43bv8aJQjplaKddZrFjMdGc8+x8d0n3kZF8SjVv4D8EK/gGU/NNNBA2sPsr7mf92ueKLpDMCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788045034; c=relaxed/simple;
	bh=EgErLcmrHRYpMzP64gshUK0QCCJNWOwMsR1amr5ac4w=;
	h=To:Subject:From:Message-Id:Date; b=ga+W8YForZn9rym35On7iVvni0DMi3Dt3bDrY1Deex2yx3aoRVZ4fKxfRkxpGY2RsfSKiCNNwytMq/p6kAMaMwhMi3lyB073pU7yMcZc7awtwT0mT7MwyQzs66JwOZXV0Je/v921LN4ozGgTTWObrJnxncb0g2g42oqBbeso85U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T89ufpt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T89ufpt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A5EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788045033;
	bh=EgErLcmrHRYpMzP64gshUK0QCCJNWOwMsR1amr5ac4w=;
	h=To:Subject:From:Date:From;
	b=T89ufpt+uII23tasKuTNYRKSLVc+le8k/C3ic67QWt3AgK4LhmZbsag02HH8AVGKS
	 fyM13xDQ9JCTmgox2Y1M2SRrYXoYiSShfUqiYP5rsGYAHGgVMIyJPrdv3jaTs6kV2a
	 xyiFC8xCPSvoObNpXAydrJZFr3lrbFWK1ca034LtD4NjFNNfnGu+IF8zIaK87TkZ1/
	 WgKCIwYSOQtW0TTMKq2rd0ypDdYJZMHf/f7RLyvpwLmPwfQL+2X6UEMjx6Tw26HsZK
	 b7v5x8jw1JriSUq8HdIFQGDgP8O8pJlJm3eVBXAr3YlGCqCeKsiRHLqb8i5hpOJVId
	 KP++eC0EJt2fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0EDC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804503368.3012.4335264407918957762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042a0130800c598e05e1b765e881d032115af48a37f6e317745ee933843bdde1
Date: Sat, 29 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788045033
