Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052442D94A3
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768184634; cv=none; b=s30/lwQ3rXHvh23PNSRbKsHeV6VrJn47EyXuj4i77FsuoPxO40PmwI+a3YJn7EuVgO+e9/EDAv71XOEPZRHg2mpuzX2fm/6SMA6MII6gbSEDmgcSlseRrxY4yCIfz1gng2K/3xRV4RuKvSOcAwqrI/aqKsAPJzNYROE5zlIcJ6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768184634; c=relaxed/simple;
	bh=uGMLCBh53s8o5a+RlfmMvpT9L6Sz1vm2lUwr0Jxblc4=;
	h=To:Subject:From:Message-Id:Date; b=PbnZFUWQBe37hBaa0KsfPapuB+6hsqJ5AEbSZUh2+2lIC6mxNpFckmBqvzwkjZhIn4UOcg7wYQDdXgn/cnvGdEnuWtEj/xTtCTyJhxvNsCVAfOb2qVduAGiLiSOuoibwyOvWBeRdGcS2epsVkaHfjuKFZ96ZkUTOGJOuQYTK8CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZYvnMIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZYvnMIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768184633;
	bh=uGMLCBh53s8o5a+RlfmMvpT9L6Sz1vm2lUwr0Jxblc4=;
	h=To:Subject:From:Date:From;
	b=CZYvnMIvEL4v3x/zQ0rSXqHQ3LM143Adj+bmvkHcJhyNREL76NheZK3IAJIkWvN9J
	 T9pYPzLrjpldaaK69zXUTp49o/eqrtrhh6K0eKfSri4vVUOQ8jGXPtDuhewHxKR05T
	 lQrE0C0RoDkUXXAo5Rq/9++NtA53Z/Tm0vmU7/5SFNpF7+zUVz0j1I/Ws+K2TxzPvR
	 2ZrsChSB7fnS7Uly1dLgq4x8RnzzMeOfYYgFeOg4NdYUdU6rz+kOLZdnEVGVd3BCm+
	 yOxJE79nvxiUYxEbNt9H15oszlbiL5vFoBKtMrFhlhCnE6h7yMA81wkTfxkyuw8LyQ
	 TeLeNDMNj311Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91381D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818463358.19881.15916451914119177166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607c28834a1913d480511f2f45ae474433d76900575c4a648e537b25bed62813
Date: Mon, 12 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768184633
