Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D8D246762
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761032394; cv=none; b=khH8v9oeYb6rjmnoCTCw0G2oaTCg9U075qs2aD/W5716U27yYgeEnmjULpcMBWxXaqeTjMkal4ENHQbraU0CmCygGeGOzagFrgviC0n03wVVtVqGIu+7Iu+xftjvEPZangSOuLgv7LUfsWEpc2Xwh/zscymeQwNJCQJ6KbCbzA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761032394; c=relaxed/simple;
	bh=Z+Jk5qN4lztxLREGyXaoVn8tzLpKZE1LmOtUbrGbNYI=;
	h=To:Subject:From:Message-Id:Date; b=Mj0QZHpaDat7Qz8x5gvC1Ti3MEh8yPdugVAe2mQ6yCv+DLxhRpOUy7XFAjazMArED8ewECFUMMi70BpEG/oPjNHqJLg60wumpc5Qn6W9IAVovdPGuTRpcnxvHp229iCESZ60F3MnKfVjiE0gbYSIjXHHlfcKIvMDJSwZxHYW/RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7qah0fc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7qah0fc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71ACC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761032393;
	bh=Z+Jk5qN4lztxLREGyXaoVn8tzLpKZE1LmOtUbrGbNYI=;
	h=To:Subject:From:Date:From;
	b=A7qah0fcX30OyCFQgbI+Nb5FgOLcYuC2l322co9kfXwT56m2zlBCTWQ/CBATd0NBX
	 YUtPSnckR61StH+/QLgZPokfPPnqyhMAI1UnQP/L0N7xgJAX9WqfSjzn/5z45XheZV
	 kRax7NiLiUCgWFV4EBBqBRiU2dtTh5LXwJWpGxAmt8CaQTJ17EIcXHfZMkwpITeGX1
	 B17wlUbhWWvRwiIRVDhiVjQTY2+f56XRFm6sqRAR5FigeychOp5WQBJd0Do6GHs08l
	 b5Q3hfaqrUhXZbSuzUdO9ZODkbiulahiLK7EP8GZpBpwtC+7PUhXnzcx/XH/buHllw
	 yqIdvksuncaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D02CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103239358.29253.16528587522434488518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54202b95231fb2c4a9327330d1209d98bb424ed22cb3e7fe27f631b35c12c08b
Date: Tue, 21 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761032393
