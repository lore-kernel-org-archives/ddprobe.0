Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B7A1AAA2F
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747028394; cv=none; b=QAA47PAVcxku8IlrDQd+HeeLxJxotCQGI4ACjgT/+DXM6sg27XRJ/5Wuj1Zft1iwea+l68lF+HohaKmd8DviVoPPORcjur6Qc/7ELcNSJknv22M7u+Uo/LyqeWoEZIY6/tB2TiprNYXUv1EfotF/QMuShxCIFr/lMLYQMYsiwhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747028394; c=relaxed/simple;
	bh=yMi8EvgkTV2mXiwsezx5H1hScKxHL9iHlovFmgm7Oj4=;
	h=To:Subject:From:Message-Id:Date; b=P9KMPG+Mt5BlA54BWiwMPlkaKSqIsiXVFStBVxIIeiv3RL6sgZfelYrmK5CWqXlqTxMniDxxRRWNr4wyDIdgwhfM5CT10TzXDltqIx9E3PXn96iLirfo39YFl0xB5XYzC3V7W3+IYTMIRRNUV3j+kTwx4E8LplhGdo1kViz8Brk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3oO/gV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3oO/gV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA048C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747028393;
	bh=yMi8EvgkTV2mXiwsezx5H1hScKxHL9iHlovFmgm7Oj4=;
	h=To:Subject:From:Date:From;
	b=t3oO/gV68glsF9XNCudDlTle2xmrlGlsKdghcf0DHiE1MdyoI7xMP9QVCzIHC9chL
	 f04KMGfD3DNOPGr9sOBUocdlU5O9Bqrbw1+2LMmi+QRUpB+EzpM2YHDssFKFNtu/p8
	 8UhTl17l89zBxz08MXHbroAuGqYRM1aAJUCCe+0pr7f+9+uHtFy4k3q4nBCOu5oVBP
	 ANL5f5je7IHsEqOT2/d+TZrm+S7xoWZLf4NeWlB9afS/2+Zydcv4piDygKDpiyy7KC
	 7qPXjHBoSgBTZBDM+VGeasVQIj0BbKGQSTP9t01LPRFBfKmWXX8rrROeT10S47GfpB
	 i6slHjy8WOB1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94760C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702839358.7535.11959660479180999886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d58e407bd429ad3bfd1fdd599ca0603ff1cb04fed1e1d78ac15cff5c4f4c24
Date: Mon, 12 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747028393
