Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7DA2750E9
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750072795; cv=none; b=pVm0GE51GTGIv+iaW8FbKLZcv4SPdjZHdskDIyu3KqENTxZsNpZcIEXOi0WkmiI879HcQv3jxQ8IqV5OWdrQMBa6r5a4PHcj5Ew1vO0xS6NIWfLrAgCDSEdD0dEdzKEGqRyaLP5fUaN9v35r20ObKkXtJJk1vecG6YN6KDjoHrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750072795; c=relaxed/simple;
	bh=nI4BdABJFFHw/tpS/qxwi1OG3n4m9cslm8lYuGkgIXY=;
	h=To:Subject:From:Message-Id:Date; b=PzC2EMSIA/YHtzR/yT79CJ8T/N061VqmB98Pjsh+7VT5bzsZXeit82bxdSWtg4w4gjfI/VGFW/mmbepl6WD2SnXWjyTWL2r9OmEjtM+21wPWNmjTi9mky90ZK2xHkEIDdVysn11xzIEvogCOhF3pTWxRTy6X3VapPjCzsnjPGHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mi+EeItY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mi+EeItY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1561C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750072793;
	bh=nI4BdABJFFHw/tpS/qxwi1OG3n4m9cslm8lYuGkgIXY=;
	h=To:Subject:From:Date:From;
	b=mi+EeItYEoZX3uwVwJVL5OebcqjB/kU2TERwXSlzTrHv/rBEnAeO2H5fdAj13JgBT
	 vUutTmrhDDDc5KZZuz9Ejg9QxSk/74uk+HrBuaiCzh/HnK5QB4bV5npqAx++f0BgwK
	 Sbn6V4YJ7OFaJ6Y6RgeMR5fp5tJC+iWhhMewJYQ9isiDRpgULyma3/C3G32EGORmTH
	 uhVIw9pgmNgtNtEmyIr3PpdSYz+YmJVbEt6syYxRQHICqb+fQyezXEK5oKVzSr1Vcz
	 gWyyt3Ma8C35dt5qMGHFegjoiAdZCtjIo7amoAIhV4FYMCmGsf30D1lnGAtkGE7zJ3
	 hvpRZ1HARJguA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F580C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007279357.8423.2624082641863086046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bc183efa854f95b09a3c9e5da010bf945abf6e360ce592669ce0c5bcfbdad4
Date: Mon, 16 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750072793
