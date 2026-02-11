Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2845C2F84F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770833094; cv=none; b=D4iY7xNGf+JrgcGrLtm4MEumXkrTIkgelGUatQ5APSmOk6qknHZGB8XwwxmuckI0Hh4B5VGmTmd5IB8As5U+eeFUv0xsTeyt4bJn5JXaYabG+dfRQWKLtaUibuxuRa06gi6OEGbnAlAf+pVzo85bsKMhuS0Wd5d88YM9eG5CqaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770833094; c=relaxed/simple;
	bh=XBm3H7coo6Bhs1bcTGvvDgiGgzh1wTPo4MwVO7Z9pqI=;
	h=To:Subject:From:Message-Id:Date; b=mEocDAh8Ty3evIjF7Ze7TK8cGaD0plOSS9/XkPF68r6+caW+7lSD6I42Rc6wIM/SuL5332AxHZ9GmG1K+bybQ4+aZGEn6DPGW5LlgGVmdFzgwonoDPUbz7MWFLPtqQ3TcSIzzgi5MkYvBC5XbcY5zuG68p4lJPBYleMhW3zJavk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kntWGbtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kntWGbtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE297C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770833093;
	bh=XBm3H7coo6Bhs1bcTGvvDgiGgzh1wTPo4MwVO7Z9pqI=;
	h=To:Subject:From:Date:From;
	b=kntWGbtKKnVUWB4KO8QmU0mMQZ1vIZ/q4wiCbRcMLQ1GlZjUJzBVOGkPpDBcStI5D
	 dxx/qqt91tBAjEXjKScvXSOUQZaE12G7k8eGARSR//ymGbXNgBUzN8uFhOwrwRlKhk
	 jZePFql1cvASHvDaQIXoaZymslrVPJXtEX2riuVtabBnkDgthACYzl2v5s+IhmV6o7
	 zX3w+F+OKwEwnqugfz05xWLtzmGHd+pmORGwlf8/S1s44mg8DRRTXJsMLrO+MkGOF3
	 AcLTx9jx7/8fHKG9ncvahYR/BF908A6TY8G7BntcFRnLx1pWJGgEzTmLoQobxILr9U
	 q0p2hNtBKa+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5161ECD6D1
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083309362.27157.11955435569697145426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f626cec0785728305c09323a0198c908c1742f33e4f9146a25e47892763f2ded
Date: Wed, 11 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770833093
