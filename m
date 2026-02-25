Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2208D229B2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772001294; cv=none; b=oeI1jWoP5EWXwbvplmljsctApNavRAQz49lNWxEAx70vkgLC6Pqwh2FU6h4pBxT8CGSnWsqfy7vliyKYJ5JIUgctf8YsHYk4PEd5ne5xGkJ8WEDHsFyT9qDLGctjX6JSN6iAWtIM3joX6cNr8TVXEpy4owhvz15PAxtv+VaAjn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772001294; c=relaxed/simple;
	bh=3xyZzqJTP1QEXFo+EZz/wafLu0QRGOMle7Vt9jQdbVY=;
	h=To:Subject:From:Message-Id:Date; b=DkzpLkclymZAnDZae6dTvVwVxZhOGhC+9icraHwI8Q98bQrbH65xB2Cn3hoZI3FPxHwLUdaUoj51FaeG4KLLQCzGbVpUeRADO+P+El4Q/UgSYXP20PUCWjVQT6g1zHZGoaDist1gMp3QQMEhDPzl1L0XhIWR+4goiMgdHtvv3ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZJmByTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZJmByTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A5C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772001293;
	bh=3xyZzqJTP1QEXFo+EZz/wafLu0QRGOMle7Vt9jQdbVY=;
	h=To:Subject:From:Date:From;
	b=mZJmByTyTe27XeMcJ0nUytSsuT8i15m3l5qztGwRI+BxoE6+lmtAqQGap+5DGoOXH
	 InXI99vmvcIWEEJ6ct5hpz0Q4xaDqf/IRBw9qhE5/RhmDbf14x2JGSdG98Vc8HBDt7
	 owV58mZNQtzlrMEYpxikiVXTSgELHUse593ncIaXLNywYdoJwKjjv3A9G7/WZFaoiJ
	 vr3rW7HfAPR1Gmrec2Q7ZoPcg5T6NA/dwzxrd3JnOFiULnfkI5rDERtbdKy/Rupu+x
	 eBJIRjMR4Np4x7TV5QRTXCV8Jw5QpRyKE4LTltgnvcGCmtLzLzpGtO2QnaywNWcRd6
	 fnxolZ794tu8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9159EEF5862
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200129358.2809.10511837902312538604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a60e28ac1fc3e5434945c8a7e46f71f93919a6d29762d119b1139436f25e47
Date: Wed, 25 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772001293
