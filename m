Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF40512CD96
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747248593; cv=none; b=f+VA8USKIbrutzDdwRONYBFl5/dlTQP5dJlvPs/INFScrWI9QyUgaapeibohV50NgqyLkUARcgBrzEBRwxHNrdXy2fVFUOXpi/VfPWPKkuqWvwlb1kC9rZWIczrmmxpFz4t7cyv5FxotccRAqEQeZVLZCrcBGi7Vo3ZdwnRZgtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747248593; c=relaxed/simple;
	bh=oOMR4SK0R04AiOenOOjmh0Eo14pk7QA518T37mbhwl4=;
	h=To:Subject:From:Message-Id:Date; b=iyc1Upubl77F+Xjdjr6kaQxNjk1P4vNRiH1VsOy9Yhe01pTQSyBkWZ8sRrIvr2KhpJYun1WXb/X8mU45bj0BzshuqE51E+A3vT0yPcJ4hkKEKVg5he4viLWy+v0YHETqCmfjIYh2/8eEhD7D64zBvmUmiXJMp93U0U4dImU/eHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=As6lh7Vi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="As6lh7Vi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0EFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747248593;
	bh=oOMR4SK0R04AiOenOOjmh0Eo14pk7QA518T37mbhwl4=;
	h=To:Subject:From:Date:From;
	b=As6lh7ViVcy8O9dgEtwl6fHvFm7TsxY7e1g8la7/I61uF45JSyw2Svkk7lOrZ4hQ0
	 8Zn8BLvmbRDLxWj6uWYmX8mhQUM9m+7+XGHu2jMxykkPWeoT6V+fHAlLXfFt5sy89r
	 qzacU2b7N1DFtf1vypdF3xUQ2EirPW9UImruUQO0JI5C4/0S7Qpg7sbUJZZYRn2OK9
	 NRkKq+MWbTlNHLnGp+Hzg1/KnRzGyqgWgp4GZhi22wk+QaY3j0OK3WJE/siGe41Q63
	 wdR3vUmI78fTvKl5XHqOEGQylDeBm28M6l2uMGqBdq8KdxE/JvjWlKVdY9GBEzfMCs
	 /c59rPfYGJN4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E6C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724859357.8730.11906807561393813020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e0b9462d5cc2b3f51187a92eefbb08cbbdeabd5117486ebec8f2e30b057d0d
Date: Wed, 14 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747248593
