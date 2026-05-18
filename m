Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3427410D0C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779108034; cv=none; b=Fn5OkipUeHMFdBu1Cn7S6tkmqr41eVcUg9XdKQVNcMz93cqOMQ8CtB2nGVtPuqoeoP6ZRynT/k+RCSQce2eWjo9asBf/gfYVjAz3QywlZfV2bP390QKs0qAnPpLPG2ueeSr3RssVS4+GFt09SrMJsF9aFpar3L/3el5ICsKKJ9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779108034; c=relaxed/simple;
	bh=EUzHp93xJIeAVMlyfFlpZHYmM98zimWzxYqb+c5fhlk=;
	h=To:Subject:From:Message-Id:Date; b=GfuhouyAfMk86XxfcEfT1vzaJBbP+4xy0ysseX7lsSILlvFa7EZKxyGzrEA0RGnLPDpaCXc0dtEHU6h6rbfHrmw9EMBwMJu2x37gt99WwuYO+JrJUp717zGC2+4EZ1hjNR+QBxDj8OVsrgocNZqg5HK0n0h+jip9PfqjWQSMYF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wn/85Y03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wn/85Y03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA161C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779108033;
	bh=EUzHp93xJIeAVMlyfFlpZHYmM98zimWzxYqb+c5fhlk=;
	h=To:Subject:From:Date:From;
	b=Wn/85Y03xB21bPBDfn/5641QnipV0ST8v0RHOPInlAEsAXaIrHpQPiQOQn6z6XHOU
	 pqmKxjBd6A1HipVsfc1BUIawXfs8PtXJg6cnsVppkKS3i3w2wQ3W6pSI6jTpKUcxkf
	 u9lEev3griSDVUy9HrWqvBkCDKEXl7ZtiCjWt67WxP6CdaZDh1QNE+n6hFy2trY+/V
	 HUZfOajt2b/B9ilRIViVvFWW5gCVxmOgKCxuHsRF1gfTUmuM+zsvfHYAzY6ZHWuunE
	 pl2bSuRB3YmXP8R9S2WapWwzwl+JDddb5+GvlcWbIC60l8fi55tXHEh+g/0FKtbC1/
	 NfTWNOrIjo6ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE5DCD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910803369.12895.11379168180634874374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d19c47bee0e2bf093108a139ee9d710f799d6af4dd872e22c6213e10f959b0
Date: Mon, 18 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779108033
