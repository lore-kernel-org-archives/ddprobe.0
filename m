Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A47E2C325A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748849394; cv=none; b=BnIUZ6v6jh/8GtGlgC8n7YnKQxsDWXOG9E2ebMyjpEHR5b0fMtLOlPlMu8qKVmveRpYDFO1auDcJn5cygNirRUyqiTNV7voAn9ynUmnLr6izkhqecsbsuWQuJRTBjL3VfCI7fnLwNrAmNIkaMLNj6eyjfQNzbqSD1rlUnPUlrzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748849394; c=relaxed/simple;
	bh=7QEl9GEHeMeAqTbvfBtkaFGtfnP6LRrr0rN5wCHr1pw=;
	h=To:Subject:From:Message-Id:Date; b=iCnww1bUl2j5AKiW8fQMNpJxs0lixfTzYkBfD7DGkYlf6+LqodwMkI/UBaPjkYZlCmEffyl3FMQqKlMS9B6s42P6jg6Uoh95A/24KApXIFhBIZVumCcIyJ2nmmd+fC5ZpfY803fsyBhOM3kq+KG+j3nzr1HuHYFi5PQwH6cZyb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQOwgVGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQOwgVGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3966C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748849393;
	bh=7QEl9GEHeMeAqTbvfBtkaFGtfnP6LRrr0rN5wCHr1pw=;
	h=To:Subject:From:Date:From;
	b=nQOwgVGmwZDQHE6tmK+80ByuP/tMg4Yx/DIf72kGuAFB7/fjhfEZ5dVMYVoxY6wWJ
	 dQ1gaD7ftJ+ELTrP1JqpcSsPtSWrtC29VTxk4tbzWnKQIIlSaGY65zYUyFq/5OIgpO
	 foWUP/bAz+fl/FxgbFIYrilON4ziWsfYA4JBZ5EmPOcLxIMJ7VtvJHRCdheOcnR7w+
	 7txbXaq25FX9AHa7N0ev+1/YAoQgvNZvKmjb18MEVJjR0DpjotRC3f2Bj//m46o/sw
	 IHuei2TTJJYp9pmZ3kwxOGsp1bEbaV9++gHcMAg+4JXdFdO9lJGv1FI9Fa0Cy106gN
	 0uHg2IGBtIByQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902FAC5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884939358.26702.15045444837543771763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92168ef89f5ad15b377f327d48dc95e6efbde2f04ff7c78bf4b8f66dd05f852
Date: Mon, 02 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748849393
