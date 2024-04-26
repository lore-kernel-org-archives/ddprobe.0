Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B0E7E573
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714140743; cv=none; b=Lke+kfz8CfSI+a9jVkXSylYs7bpLlO8VKY03zO6nktUS1eASwzioEYyiAdthi2oDTfWqZaQ9G6UvPOQTKk7VVRz0Czxgi4UjHw1Xpr8JV9G7Jfd0bTUp8YIxFyATDPcfYG6GOJ6ShFy8UALd1fFuvJs1jDD2r5GgEzxgN5XyL9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714140743; c=relaxed/simple;
	bh=SK7xEf2ZN6fjW2dYHyJDnCaHg0ekCzOekzfkA/t4na4=;
	h=To:Subject:From:Message-Id:Date; b=Ig/8MOaV8uv/xXMt6wCZQpfBfcNndEB+j+FG44fK+mVcRv15O6jH+WnrDSI+UwRKFvpjIKnhZmezZ5YGIaBKhv57mJMcyvzLZiNfynHYsDRSNqUW0H/XyFOoClz6rKDRFuHyvk+h+j8jgsVm/kSx8UsMa1cBgel0CgYkgjLXQq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bb9oosfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bb9oosfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED59EC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714140743;
	bh=SK7xEf2ZN6fjW2dYHyJDnCaHg0ekCzOekzfkA/t4na4=;
	h=To:Subject:From:Date:From;
	b=Bb9oosfbPzt0XlIbGV0oNS1phYIg2M2NQb58rV6IGZr8mqdu7GDOvdGIg6UFktc+l
	 QWDr+SEqYQnXW7PcYGuwzsSPC5E6huAth5AWchy5rXjXVeJpzyhwfs1FjT2yF14dlh
	 6f86kczj9b387SCpMk4NF1zaogViP5H8GcsgUxa7ikZHNcHE3wS0L17Yxc7N1wcshy
	 2+0xtd8AQDtfkKz3mqWv/rv4kvPtZlNFFwOPAm4P236YkV3nmQ3BG4OMmojQako8jR
	 Q4hetyh8CG3CfQuydlrntG41IvGvws1hcmTEhEdtR5eYjNN+NbbUslrwtUt1j8RAcA
	 g7FDaC4dwotdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D85B7C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414074287.17098.15802394907710362324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee22289ad7321ce4d8b58ee621bfee26eac0a44fb5bf468332129e59924cf8e
Date: Fri, 26 Apr 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714140742
