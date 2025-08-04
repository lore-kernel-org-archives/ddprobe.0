Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36916220F25
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754327994; cv=none; b=IuU49cS/sqYdrE6M4TFP87hmjeMANVbp8deMqFR2ptJdSER//pI8ZqtrUEAG5f+3jatRe0JAlrqa+NM3z7yzHgZnvVOdSgBiT1cSW55BXzM8K13lN4H1AkY0seKB+eUc997929W7D4X87Ok9h172Of/mw0bI9LnA4BnFFvHcmDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754327994; c=relaxed/simple;
	bh=A4K0PJGTtdaqIA/8y59K6M4aojnirMmXHajewRNOa/8=;
	h=To:Subject:From:Message-Id:Date; b=nheo9kM1tYhTTEVEEK7iCxY/LFNhH2JZcwAFCyo/hVCE303gDbVsR+gQBg84emJunQ/ioUDqHPe3TRXgyblYFTAQN39bADRSyhrI8WQjPYl1b1iL05yJdfAeSn9NYsAeCPk7Qe44jh44PAR5oOPfONOy1Luk7AkZKoIGe2CkhPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPuRWhn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPuRWhn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC7FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754327993;
	bh=A4K0PJGTtdaqIA/8y59K6M4aojnirMmXHajewRNOa/8=;
	h=To:Subject:From:Date:From;
	b=qPuRWhn/8Vkh8m6+6L6Y2XGu7TMrkR/ELsVO/cjDcT0ZXe2GlDRLBYheGveTeVw0O
	 4I7derdccspUCh2IoGRbupxe1WRxP/900beu8Vi2+5X1QO+ube2VA8gfJk7q84RSYV
	 fRNz2EaQtRCJE8QHtDf4UEuYEFg1hKxrWevP8xjYjOxixQw7blleJRl8YDVQYCUyYr
	 3mNEnWkC7UxtlNYdnRq4DDrS9jNmlwRRkNHV3uiq2GpTmuwZo3WlGG4RsJ3owqJ8X+
	 gaDZfFlCLqzD8KMPg/w49KVHF4djfP1DiUyZFQcpBjxhvGCN+u3DvEzh6CHr6sxsmQ
	 GeLxISqbjm0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F91FC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432799358.13280.18354694114110902307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b651d33f4ecccfbc5353f568496d185bb3c48ffb612b33f3d6b3a83d835eb5f7
Date: Mon, 04 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754327993
