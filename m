Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328A234D3B9
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789369834; cv=none; b=ZzkqBut65R7gO6CIPJP7BxpYHtW9/ZMg/1qn/Q7/wjp/aL/oqL3wH9iRNKiv3Mh5aPnNwEmJolDIXLrN1nDrhQf9utTwMk0XbJI5wF/Cs4Y44HKgJQbUscnqp9fPkK5zejQcbIi5wOaqhkxI+vxoVJNyF15ATK2OAmBagxkW8UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789369834; c=relaxed/simple;
	bh=WyRVefgV5/UiiPRAxZCHUNOp6nplfT5N+NJY5yuNk/4=;
	h=To:Subject:From:Message-Id:Date; b=WjOSCBiqJvHorpYtzXem7+24yP0uL3lEp1ifv7EW6zuuT7YI5TFUeacWW1eIFSkgmNrFkdriL5Rj4qt9LYEj38H23CV4n/c8MpAGLlnK7hIkvyWJEhbOCUbRoOmP19jJ7Od4gr/JauQ/9WFgrV8XHZoIb29AEBi2KETi3l1QzD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkS6VQSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkS6VQSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62A2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789369833;
	bh=WyRVefgV5/UiiPRAxZCHUNOp6nplfT5N+NJY5yuNk/4=;
	h=To:Subject:From:Date:From;
	b=WkS6VQStOPYH0cNkoLdCzw/RNYmgr2CulDk2DmNqAXOTQZBEqPPri0ZE7xgpIrkf1
	 CB4nknsy2jq7gEfkWEXEttKYPIQ0O8fpXfbn39dY0/RYZUdlrVwiLCpG/wdIU1J7I+
	 Feqdcrxb/5m+QC5q4Tw4qy8USSYXrg71VwAnYj3XjHBgRN13Kkl++/KWH3d2XNlc+9
	 YjOk4t4MHougH5GjlUsXjrdbg99Ms8s1FIh75tATEW+ws3m+K1UiqwtShxonXg67w9
	 8FdWqT+RijDiA3oenHPczS0nIdrkjZ/L3yI4FY3SUWzhsmMWfBfzQrStscYFSJnx92
	 9v81oYhY8BobQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF191C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936983370.11706.10956919632737345384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355f608fad459ccce8d1ecc09c7496ec8f0f0f29910a73a0eba8c654b29ea40c
Date: Mon, 14 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789369833
