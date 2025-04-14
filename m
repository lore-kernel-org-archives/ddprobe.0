Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE471FDA6A
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744673394; cv=none; b=EtbHAGkeYQzJN1smthBgaGrETae9kGAuM1bm3XBhJAQ7Ot2iOVZzCUeDPAT2+aYwNKjm8Cc1/xaIlhNdB1ZjxD+EG7hwIFQvtFJa6GfVIy28WrCDXPfwWumJoUY8xnV/oY4hO5WaJm2rZ14YGa/KwVNPNQD8CL2qhBzq6kcitDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744673394; c=relaxed/simple;
	bh=k/HPWTogUyCoTYqTezgXvPB7NPsME7fZhTx1SdqvVNM=;
	h=To:Subject:From:Message-Id:Date; b=TRxY3JDeA94d0BgzvDzJ6rmHsVH/yyYcA+8SeUH2L2ubf+sc53KCN08o4rW1FP6oI+xDSJcRSz97ZZPPqKHXD1rZSWwtTC0d3XMoKflOT+1HWSKCmVQPXtTsbDA40IivRHkVswnplfHcvercz/IsDxB7ps/j6o2HvmWlz19gK80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdsS1QYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdsS1QYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9EBC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744673393;
	bh=k/HPWTogUyCoTYqTezgXvPB7NPsME7fZhTx1SdqvVNM=;
	h=To:Subject:From:Date:From;
	b=tdsS1QYQRN0CuX8yRdOZ6Utk1GWmRCkNAJbItJdKP0BhPwKbyK5/MSU5cMvJcYry3
	 1t1m54l6+ZTbW55YZfNLDe7RxP8TCA2iWjSGljLctBocRYJvVzV64Xc6lgHXthlBZc
	 zg10G3pwIF6gOLpoeQewX6uzWHmbSYXZNlntPx+WiL7ENdafWL3Eu25Uq1N6hXINBb
	 puDSkMgoJ9LOyd3khQRgqKLlWX5oB4ZhpAqhLP9w8nYCOXS7UFkhAkoygbz416IC+D
	 jWyJjNTrrWSFXgvB3shelsAL1JeQ2yygrAcIqgDtugSjAXlLYGA/n5hbkzeRvF3tTl
	 /HhMrARBc7X5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79F3C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467339370.29195.1921934701875623874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c469f6314e394d806d09afd591cd1a4ad10a1b7baf07557069bfd278bcf06dab
Date: Mon, 14 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744673393
