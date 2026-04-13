Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A9C38237E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776074854; cv=none; b=k4PM9GaXlYuvm6tuswmfl1lYkpLmjhx8wuaZDTW5Aq2dURY/UsuGJ9FcapJ36SpLXIcQnVX/+VwXOZfU0YPTZXsDuhMGfiBQQSsA1SWM/IHZJ86/uTtx3ruszxv8ON3xtUlb4dpTx/raZTuBm9ktOvcsrkB0nFnG3+TXIR2wZws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776074854; c=relaxed/simple;
	bh=QoKlKNA2yrJGdWAFfv+/zqRbeD+rI3Kt/GRLq6Ap7aM=;
	h=To:Subject:From:Message-Id:Date; b=A7yD6pVYFqmYm95aMc52T5NLNEcJJLRO/Ir/KlyNSH1MVsFIFmp7LiZ+ikWuxGIO0pzGF3BYDgSVynjNpzTZoZ3e6Jl/qA+zTtgJTyOqBjFLOFUv7jHnMobZH7xBtBAv5y2JzGh0fCC5XYdR1ESal380Cwo7kONGfzF82Ih9r48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3FrC+oT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3FrC+oT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF3DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776074853;
	bh=QoKlKNA2yrJGdWAFfv+/zqRbeD+rI3Kt/GRLq6Ap7aM=;
	h=To:Subject:From:Date:From;
	b=A3FrC+oTVzIlauRc8veXPDbud/1rVOY0rOgyQagidqBAJwS1Uu0U7Z4nq03aTfZDu
	 WKLLwiuh2J9RBk4iUaFr2vt+nShXDC17+7+47cBwdEHB10UvN5Vwy5gBcWEDAJfI34
	 9DxXpTokQb7KVME+xYY7TAvyKXUCZF/IFLdiNrPtFiI3WD3x4q7VfEsT+bA4MlQs9y
	 CmeapgRXcokMCZdnYbYq3AjJVzpuVrMh3vtwp8D74LBvPYF70g1/foq45VfoDKSRd0
	 mpq1RTLucnHE0/TadmvG4DfSK0P9yrqazCpRb5nK36T04nGjzr7mTotZcGkjG7JwqX
	 uHVfBizs1vRBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10BEBFD30
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607485368.12681.17038600527162342451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672b3686b23548dc56a83e491dad6cfe9fe39c3fd6bd4b2d6c162d8a06c0bcef
Date: Mon, 13 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776074853
