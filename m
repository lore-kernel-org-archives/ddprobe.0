Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29949215191
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746170994; cv=none; b=tQxTfnvCx2LlFPkneTecnojS9EJUkYNrlAJZAfahb5fE7t1PGMTFbWEN8qEiWHYXByXvupJiLtHu/zeLdY8l29sFdjaYva5Js0xajW4UN1pP2HLYhLuJfLi/OiXVHyRHjVMxMBJrw9A1yN7VKIsLvfLplqxikzw4nD/hW7/1Siw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746170994; c=relaxed/simple;
	bh=hB62ol2Bqg8j9EmR/GOIfW5eJvAXJYDYkp27dP2ccho=;
	h=To:Subject:From:Message-Id:Date; b=V328JAyueXcj+NyNESPLAlJR3Sy2K9usdz3/ktYM35WqBFwBK28a+fcRh8pEmyait+JN6ixzhZ7RnwkXorFSB3Kwc7iPEkXUseF5h2XH4d2kCHFxfsCjt1Q7MYvbzxCEEWC/jGqniSOivUfO7jLZSR7eW+Llisl+N5hAcb5dRcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckCekGtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckCekGtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECE1C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746170993;
	bh=hB62ol2Bqg8j9EmR/GOIfW5eJvAXJYDYkp27dP2ccho=;
	h=To:Subject:From:Date:From;
	b=ckCekGtrKCv83AeEgmWjt4cXcXv3l42UzfDwQb0AcR72ZBB+3NBOXMnq+nXMgK8Z8
	 Uadvp7hLfZ9ssrIIaTc59lJPP4AYnvQ1TTDgtikQsgHG9JbyrZR+MYHYL9UAUjjQzz
	 ws9da7+sBgR/De+G+0jnFprwI/W/z4OxAD0cRTiLHN3He8gauCsfD03pLNVWjZi/zh
	 T27Fzj+968ycC891OGUmGSLQXZpJlKaKfGwdNvg8gkoLRM2fTwbYXyJ1QpR15eaaSl
	 uBMy9Sd0AwoocloQIegZKmUO+4UEvxwEcZKxBRzy6yOREUzVYKvBDBLTTOa51qjmpN
	 LRl/L6K/6HZfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF39C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617099357.2353.2588831800918721726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f99400fe2f7d856ba6dc913b67d3adce64d8c93dcdc5af0a7a2789b4d8df54
Date: Fri, 02 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746170993
