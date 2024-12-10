Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A6722CBE1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733864154; cv=none; b=k0NNnG6Tkvbvk0Snd7Mq382jqzL4PaowmDhB9dWBLsKUFf6YTkpRljEEblaBQgYoh+5Ylu5x5xDD+/wnwLgYX6oPU5JtOi0VTmCrEKgfALrGbv6KRYxYlkbPWtOB/q9FYaN/54VHiwevPZtcUhqS/jIry4ddUpE6U6Z2t6xLMQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733864154; c=relaxed/simple;
	bh=8O27Wq59n7nhOo09vS/TODvKnfqsL3yGssagmpvv1Pw=;
	h=To:Subject:From:Message-Id:Date; b=a6dU3N57QdAIcGEk5nGd/HavP4DG8tzxDAd3nmRnPlyed54uYVtwLvLmPwyFE22WoBajhU7ck0mmNapHtnXMP35BpSUlQEnmi1+Ir7Na5UZO8dI9RAPj9iu66RgAiLh9WaV5jwhDI9p35MmrMdTXErH5Z62tvC2WoJ8BP8PnAWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHpTn+LV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHpTn+LV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FA6C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733864153;
	bh=8O27Wq59n7nhOo09vS/TODvKnfqsL3yGssagmpvv1Pw=;
	h=To:Subject:From:Date:From;
	b=iHpTn+LVzDPIgSKXHSpuWzVzW9VNXjKWrvhoaUYYNFGUFVvxTy817vhovhInepWfz
	 +gczVrBUHpac6Y1e4UOGMb/Xrz9UwKRXHNOSy+8bf3MXSK8x6VIRMkQF+ZFejr/eFi
	 pTZxjTTJNUdfYf/SXOC+tUxcTzUEVhMyy2/fe0i33lI05ofmTlgdR4UHDQOEM6pQuB
	 WmThQpQ2yH/l1d4pixWYrhU3qZUYVAZ8WQBLecSQPu2Fho3ALckHebPybeTqg9ISYf
	 JJR414vqVd2ye4xcm3EM4JEgqZjUemsvC7pfMUvBMS2rHE/wz3Dy/WtTi1yOdcVtek
	 oa20qL1B6NLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B54E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173386415366.26713.8721564999729473775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6717a3a5c1affd02268b685d33da47d008ea944e41b17a29a284260a8e4eb45
Date: Tue, 10 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733864153
