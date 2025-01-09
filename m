Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB63215045
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736418354; cv=none; b=cy3LRNQeA7oHsIY1TOC+ZdzSqTUXe2+h1x9Xal52xE8qynu/OKz1SYOIWc/bTdvskF8mV8hlXuqDFwj+wyDVCxq3ZrrbWb/O0iXgEyPsmQAQMJoCnWaeyomcOD+lyyVt1CI81TaVjUK+ChAY4/xTGAydtvOtt2QPiHCbg5axh3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736418354; c=relaxed/simple;
	bh=ZBJvybS9l796lMT1jbuqwYDB5/Nu/hBmiHiwOMRqwbs=;
	h=To:Subject:From:Message-Id:Date; b=nb+EhYa1VVaTcJNT1+NyilzvDP4vENAoPNImEJG5hVqgeRtUdWvX08uGZoDLRYhRUr4RbaxQhuLTbsXpQaAugVBcWQIa28VZNbZch1toDjoHnDVWKclvfGxujHk0OPii0LJinwbs0BhXg5jJE/4Y/O4eEllEnbX3U/RERs2mJPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dw8jr7Nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dw8jr7Nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A927DC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736418353;
	bh=ZBJvybS9l796lMT1jbuqwYDB5/Nu/hBmiHiwOMRqwbs=;
	h=To:Subject:From:Date:From;
	b=Dw8jr7NdLSY1XE9HbTnqcAK6FdWwTs7/Xn9UJ35ReNHL15FcOIQEVdTjG3tsvWFaT
	 sHesQ8WzHsWhs/PEliK3aO8nwBaJCXKfkWcaOWOhmYmzxDNOfTEXtW3UER31kusFPs
	 50HsS1mCVLKOzdujgwFsKnZ005O19LVVmKpzbVCR+4uQhRChyb/LSohQ76WecgJcTQ
	 Dmg8TUWNE8X7s+0sYXaRSsNWDcY4kuHb7ZTHv4ETbcwInNDkR93qJ63TZbMycogjop
	 FPq6EEwhFII5Od+i9EB6t+YKw6v29T5SiCRLdCVeMNU0Eb4+5dckDs+PIPu2j/mYhW
	 62RMW74w3KIyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92820E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641835358.13532.18293940443367840970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3108db7460f5d436153e7284a3456c93a54e106a5617c957f433c35d3ce29b0f
Date: Thu, 09 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736418353
