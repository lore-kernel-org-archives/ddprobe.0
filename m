Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5418433EE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716170543; cv=none; b=cxS0TqAztkwYfWCCwoMT4iuMbpopkQJ+P9HNPDybR4e+sA2e/ThCW2pYMNjrrMmRWN9AGJralz9viNuL94DEEbcEJ4O98SYN5ML28TnSbKgian/88KvI3MHSLklc3RNzBJOU1PdlSLbDrskJIhXU7iUkXmYkBJrpXK1R1l1zA44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716170543; c=relaxed/simple;
	bh=R5A8cekzr/LZCcH1mwDbeyDInARA1ts38/mcbGPZ290=;
	h=To:Subject:From:Message-Id:Date; b=ob2S+V1Zq+F4jxuZNkktk2MNY1mTmf9fZE9ntZbV0ECEbR96ggaiekKXOM984wHVPYTu5S80NjgS6NLi6sOTWO6Ue4aoftskiHmG9i7F4qII13umM/NrEdsOnsHF4oK56rHrMF2cc7fnjtqqk/QRe35urTLy7nLzN9lSlW+3eQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4lzBMlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4lzBMlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6925C32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716170542;
	bh=R5A8cekzr/LZCcH1mwDbeyDInARA1ts38/mcbGPZ290=;
	h=To:Subject:From:Date:From;
	b=B4lzBMlpsn8feyq2zqpG0wI0og2aEYIfgRBan6xVgSwqNhjAgULgoChIe0IseNBnQ
	 P0bkhQY+Q4r5nsYoGfLklVa2cS42S4o1+VKaF7HGhL1VxyL0WLdi2RHHNxMuZ55dZQ
	 gPwy5jo8k8yCi6B5s+yJQ5ZqjSuD/Nu7shD2wyHbKGr2raCIvfw6VT0SAQoHsG//QA
	 bCWBt+NTLAUDXgmqEfHfdwwS2AWBx1/2iY1b2obkx8QnGyDBau6J5yeNgPuKkmFg7g
	 birjPIX9wwhBPU1QHwyt/3z6KlEtQEIfW3Mm+vwwY23Zh8ocerRsAkthiO25SFHMfw
	 9Ovh5rcR+ajxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD004C25B75
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171617054275.22206.13215961409624336307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1d61b86172e7e4952b6fdd543b1d293beac22ef1f923bebadb60ecb39da999
Date: Mon, 20 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716170542
