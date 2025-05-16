Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334BD23644F
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747439394; cv=none; b=ptOJ3ob49C7ck/fEZcs+vIfVS8VRAg513vMOqtpxTSsfdA4nUPhhUmXqPot4ZVg9ePw7/j8K64RjxLJAK0KkA28/BAHju6ODTlqClMyYx1YNwQxHOlz89cbf8EYUrByZhTHhxMgUhtLxPzK082usEjysiWyY1YY1y32u97ICGH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747439394; c=relaxed/simple;
	bh=17MH5HkCBGsI5z/0pDZz8an4Yqgy3LL2VPZP3vv+hfg=;
	h=To:Subject:From:Message-Id:Date; b=dDoKZC+Ak+KX1rU8VQd1rD5zSLOnSHgtGBMzP81Mah3Uov+ZGGaTOMIrEKm4jzwhDB05C033ArPDxCAHYvyrlGrowD2M/sCJBsIrrzRsYQTtS5x4fk/wKd3r+3T7wS8qfcqKkTeZjt3bkoA4N16MVeCHLSsjIp9ZklBVdg3Hd50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0Awkz14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0Awkz14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A93C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747439393;
	bh=17MH5HkCBGsI5z/0pDZz8an4Yqgy3LL2VPZP3vv+hfg=;
	h=To:Subject:From:Date:From;
	b=n0Awkz14d/qvILz+1PqRHJFiOkYXpEUVWOuyst8rOM7z0XNu0Ksj9Z4F1yu4CLfzr
	 Tj3bxtD35/p1Jx614Hv0yxLBqi4zmR8LXy/PPo6liQRazIr3nLulAx/jcu6vBia43s
	 BjXXwrbKOS2hkktmuZV619zVO+oeRbPywZ3r2ruKhKaSGZcvdqcuxg2goakkLkcNIg
	 ss2YeDmTx+qWpwCvwolLwfp0nPfgSCCnsZoJWqeq7eER50WdONIMutPiB44gsPhW7+
	 yBPFz+gAisQPY2Md8PyfSfeRzZA3s7xleTfEXjZHHexs55iUQvE9tpf8z6Vmi9EzbY
	 L+KwIldqFWfvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BBAC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743939358.7408.317262187415818538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20fd0a9f3182b4cab616d0a90a164bd61caeedda65328ebaa5b999a9f5ffee4f
Date: Fri, 16 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747439393
