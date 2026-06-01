Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429BC39D3D9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780311874; cv=none; b=LTLcTqSzpEg3Czwx0WrRosQ3epbqrrp9ZzspoNyBEY9ALM1kuExg6TydMdIwV9vW1FweGGHLisJkj8ZK/YeDxpWBf81tGWgEhO3lhcuV0cTuHhHrnNdLe0oEsHI4QEW726VBGbZAV7AbvrxxhutRBEIBfrLRPapfwcXEG24eAug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780311874; c=relaxed/simple;
	bh=aKPBMXdbj2mmNDsyrVm8rhBxCFxFTBjAqE5yMF8ygjs=;
	h=To:Subject:From:Message-Id:Date; b=oZxVzc1qmAuHMcvHj5ZLurn9M0VqC3rOiahtBm9GFEa/WFjseOD3gS2lyi9XRigSZe6FX31sYzFtnNC4G4AsfT8/oBSWSmyY80HaIpOY0coddqnTxawk0emnGgZQxhAFk6oxFWpU36e+B/7CJ2VbNjrW9rbWZ0+HTHAK/JLnWc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdRSKUth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdRSKUth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3E1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780311873;
	bh=aKPBMXdbj2mmNDsyrVm8rhBxCFxFTBjAqE5yMF8ygjs=;
	h=To:Subject:From:Date:From;
	b=jdRSKUthroNUQ/UKUaLKO7A/QYDF3R/59nCqZkBF/Hx3ltL57NgVcbVjG2NztGcai
	 hhg5q6H5gVODvC6zDGk5024wCSiNnPhdp45gP1Tlk917XgzyYMm9l8L596flLDgyqW
	 B5EVY/iNq4Epa9Lpaj8J1daCG26NmwTtqWgMhjolYK4K1hy72ipdcCl9ayzIXaAOjO
	 5Rh6/29xUBckFG7WzmrgjmM0nqIx52dwIH/4L3Okmfx1Rlf3JW5emU90hLTJCs3iPQ
	 T4+FhB2nzUfFn4YJlMq7EqsfCr81d3LbIKcBYJXqdcYuVRF/YIQyQlImXModF4qJgm
	 p6gfs4Xvl+EnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6596CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031187373.18469.17771375354494190848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18225a214571e90d9921b82b11a926d39dbdc808966849ff77653fcb29bd1f4
Date: Mon, 01 Jun 2026 11:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780311873
