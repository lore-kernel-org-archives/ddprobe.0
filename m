Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D44523B612
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769361234; cv=none; b=PzScf3IHuMSMyuaZKBXz1db1XzSBlwVw5VbYdJ+CfjarGxaNfJJQVGfOSU6GxsTt0mzZp+kxF8YXbDux1cT/3KA+pk5lJlzyAQjwjm/oKuOwmnTn0sRzqNfYmtz21qIDcRSaE+qd9dKPdhVYRMBsVBYg8p0LcKBEoiLwh6maGK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769361234; c=relaxed/simple;
	bh=yTVuuhNtzTuu8W0lUsxAx3sAsU1qFDBSZDXZpY2Wb7s=;
	h=To:Subject:From:Message-Id:Date; b=QqpBooni5rpg/pDCuyJBNv99du92eqa8KPmcllnCOn55CfrO/nSVotGp/LgGngc19cV5ZMkqk89knXOWTVFG8W1g2FZWBg5wAoTjVMg1VNBu/r19OcnRLLOCJDgIfF9HKlr8V8ZRHzt85UGoy4XsMMG1CNHM8k360FFdQgWMNzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5xoNcBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5xoNcBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FCEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769361233;
	bh=yTVuuhNtzTuu8W0lUsxAx3sAsU1qFDBSZDXZpY2Wb7s=;
	h=To:Subject:From:Date:From;
	b=i5xoNcBgVG4qYNfmtFLK3JLg2fxvjiVuJMZlMZiBSbiLVsohQvF6+3LXXPImjKYWc
	 lThRSC3kUYUptzVhq7RIGXMr4UYccEjq5wxOSMyobAJmbs6+C8MKBbbw09mHXVSin4
	 tMmbHue6hdKrE0PCObMgTMG32w8CgY/b3LBm6u0pudPTdEbAaIpUdY5dDrFfoB6WzK
	 SY7+E/n10ydzDocSGA/ig5DW2WKgYIiljh5CRsCF6NXFPBNuUrhdQhY2nMF8QlLl9O
	 nRh+KzvoBmQQwOHBr1zVndPKjwH+B1CtrndoC9EMpZ4LEXn9qUK+dZfoAiQT/9NNVk
	 u/q8tRe2OtOHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99477E63CAC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936123357.31234.18401916441651991570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbef3006c4498d2919bd610af5f3b02de7d73294d84edc1884b9e5dce6e454b4
Date: Sun, 25 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769361233
