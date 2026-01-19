Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B29D24BBF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768790634; cv=none; b=Bhiu1NtajIfFaRLGQedXJsN4ZADmj9nCzqYaHrDIaO73v2DJCYeEQyTOxh//CZx+vtvDH4ridylRqAMoZ+f19zTyI1S4+l1csOQ5sk4JGR7t7XtmR6rdflnVZLiqBAxBHab9CpGZVtstYx+uF21i/lFHfLHBq7V10ewsmqsKC3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768790634; c=relaxed/simple;
	bh=p2UVi0joDXc/Aa3UlvezwLeFt9SIVC+/dD8/7MA8dfM=;
	h=To:Subject:From:Message-Id:Date; b=KEtDs0ix3n53oTDLcbF2hpj10Kv41CV7J4OFGccrtoWRkJU0obsyAjCeRhMhfbD4bKfUZBmb/VMh6DTTW4tD3X6mvVWB0rEfaYGjssHiFjoLp9w/xRxGpBMbynLLWo0FS+2JAHhMIAihr2FgqszzuwVyrkBlvBmQeJze7c2yr/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAnxn0yn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAnxn0yn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C61C19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768790633;
	bh=p2UVi0joDXc/Aa3UlvezwLeFt9SIVC+/dD8/7MA8dfM=;
	h=To:Subject:From:Date:From;
	b=sAnxn0ynEy5K6LdWPpAG4yCg8LZdKeSjMvnCFmoAEJIyuh4/tlEA38chdlQkq1d5+
	 p/X1Zv4/dD/I7rXEEQ2C286ckH+air9nU2niYnxNwtFgL7Mi0bFnGQ6dQdWBlAGy/0
	 dYzWKGyAyMLbM8h0/m32+a8Kw8/1QDT5r1qzI53gDqlPCWQKgBVEKq3o9bG32fsbKN
	 BPHg8sWJSMMnusM2zA8grR4VxoFboTX5PwVJ4fedZHcr2hfGtfF59BeR5gGkew1tyS
	 bmn1qcsIIMlwqCPktp0c2CfafoOgQyjZ0GTkwjWKfreKY8ZvgUBLiLg39e5NR9MoeJ
	 X/FGyw7FqtQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A2C9830C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879063358.12470.105617905807204527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebd8a5a6ca8b22a2ad0e4ed2cea402ab3ce42ba895235b132afd5528f8cc0d7
Date: Mon, 19 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768790633
