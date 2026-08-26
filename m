Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497B519F40B
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787708434; cv=none; b=jLxzzKzuPd7u6GCk73MoZDdL7Dri7lK8wA2527dcFuRicMULyAG0cMpPHhp9PkLvB7rV3CX894DLMBOLLsgk2FMmz8xjt1a1x0/nZwGGbF2cPRQyNEPwoAM4uiAcok4MxfND2dDTM3jzJFt2zqHDSTiOKtTfVdXL2aeQ8rSfRRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787708434; c=relaxed/simple;
	bh=5g/FJ/BKFw6k49O466NbeWr8MUb73o2AzoPGdDsn2CQ=;
	h=To:Subject:From:Message-Id:Date; b=SO/1rFaZStIvNNcfCu12W2mHx4pKnQiqJ3hO02yVXGD9rCcLRqRLDBQAeG4IHgswUAy2yWznlsBzUHAEYPoKnKz2BmGufIAvLMe7rObC0CGcHb1c8/lzry4WTkNW22Hp47kMk+xXG4OlFZsH9HVFmUxoZu1EYK5Ogw4u3HG7vTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFMu/N23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFMu/N23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D1C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787708433;
	bh=5g/FJ/BKFw6k49O466NbeWr8MUb73o2AzoPGdDsn2CQ=;
	h=To:Subject:From:Date:From;
	b=PFMu/N23RNKx57csAK7Xfk2D7nUaRzJdm+VxfHRQGha5CHJkghulMWsTqEiVOvk/Q
	 plw6G0ql5eZMdKRO4u/E79gA11w8oPQFvy5BQkg1+DDM2ITPRLnajEmroKp4SvYRMl
	 +18d1D5Tuo1CJ9km69f3FVp7nJW3qf1thQW7sSJqsMz5dDuxqS+/e2Ew5yUjcw3obx
	 YGbQaeb6lz/VLvs/8BwgwQtFS7/kY/aAJgqa72vzb9K+BDqTbFJmU9YFiNDmpQiQ0B
	 1UlaAIqLWmns7mSay1r8BSvBjHs/dk7fucMtETqkmIbUsJ9WmOqvaQ8DNrRjCivsZY
	 ORtVBrddjfJZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B097FC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770843371.7827.12013866936330881295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac42090a29941622ef176f4f9615b0063247cd531909745d936417813ad78d6c
Date: Wed, 26 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787708433
