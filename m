Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482DD3B14A4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786993234; cv=none; b=CSEvu8jBZQPdN+M4xGR6q/B+mRALOY7EcF1hQafSTSfvjqhPqxxdq7LULTCfBIhHmTupByS1w/HTOVmMbiZzI++xPtYt1Yj5KOrMEjkIYaN9SRbuesxgCai1UKiNa2N9f+vXZB/gR1bq2TEn46IZRRVOMbpZOiZwtMPjI+Ombv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786993234; c=relaxed/simple;
	bh=ltZo8G/3nFweIn73N2Sqxo2My/Wx3IsVLZklPVzZSHY=;
	h=To:Subject:From:Message-Id:Date; b=Ndzkj3yyMaBiz5J4mc6OJ59uVtSbA9D8Aqd3RUWSIdwPrWK4BaJBm3t/pBG2Hp9rIExvi4bkEtLfG98K/w6k7M/vRAIt7G5h8Tw6v33ILv5J7VjnXMRoB0lEepJcKP2JgCx7guV2Xhx4qCJhwjmnSofjcgADkXxzy+tqB5xCiBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2cma0Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2cma0Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FC0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786993233;
	bh=ltZo8G/3nFweIn73N2Sqxo2My/Wx3IsVLZklPVzZSHY=;
	h=To:Subject:From:Date:From;
	b=u2cma0CwbGRzs9/XWs3fFrrk/NV1ckUmr0cAaQYpBeo/MWhudCeaVypjkPEMBK7Sv
	 PSzK/SaXfBNw44l0StxXJXBn/OayVwpERFFSksAIpnpxDQ673yx0LRDIvVn8IAB5be
	 qhyrdWkP6VUGKO7wRiRofbnPFoPebOkyuDzd/Plaw9MdiwmBQp6qZE8xjUflbdu33M
	 MgiLhwTK6KrnmsgQJHUDhKfo3biE3jCMBV/UfCC8J411M59h2XBTwufDRKoknZYYsD
	 VLP7xx6KT7Iw1DYbIw6+gxCuubzUcBfXzPsxa7RIa60N7VfEWk0VqZUwDW+gbxqGlG
	 CY0TTGwA3ta8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5DEC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699323369.1485.2499377492242843248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79ced31888a3fb9991d49f0a853c1c9a8b4124698da00a9335494d965221bb7
Date: Mon, 17 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786993233
