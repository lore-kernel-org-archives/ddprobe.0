Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608433BBF1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714836743; cv=none; b=ATnE4I0s1oP5ko0AHGpEHr2SHBNZWP2dbGiyS059HHMNt01RRaHJmIX4g/xpUAHm6bIat1pupv0fdQaAqImfUl/b8gxko4/8BdYjiYTweho3ZLzBQUXrYnIe5jH+eDqZUuhUWwV8TSIz3v80D5zxdnoIvKr5cbEpDO0nirx4O1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714836743; c=relaxed/simple;
	bh=rRc9xkW61NNK5C8xysJi+OkO3zuJCgTiucIQpmlyUpk=;
	h=To:Subject:From:Message-Id:Date; b=iwLqv8F2EutTnzjSLIEHNuIjJ5KIeG3FTMSvD9nXokkYC8Quetz9jH6awTPhLnBt+axFT6mSPvNo3eK4v2dDvXs2YDMTSV5QNao1jN5fk3S9Rfh5wlo0/05o9YrbZrMiebAQqVqEv0oHqe4GUc0x3nvw+xjG7MPeQeHC5Qk3HYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ms913l5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ms913l5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DA0C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714836742;
	bh=rRc9xkW61NNK5C8xysJi+OkO3zuJCgTiucIQpmlyUpk=;
	h=To:Subject:From:Date:From;
	b=Ms913l5SzWJ9DRbZy51UXr6JRaqNORYe0XUUdbAfbzumlRqQgrGXWZQ/eLVY93w2b
	 uTMW9DZnzrOQpVw5VA1VVzkDS/ZKZIEfGoiiLF1erZfvAi5nGXiZ2MPleD/SQ19+ET
	 frv4G/nFp7Q38NNMsAh5aQv0OPapZbU1F95SCOw3nVtME497ySjSVLVkGDQ0qXjvsC
	 DyWB6dBorAuH7u6TZcbsCHtwBaa78WrcQ6X1BFOJIxr8C2Raf6rHDFUXklshhPbM2y
	 IwuSsZqm0W3bN/OmuphWq9iwqu1m/1CF5/NjrLcWavv0ALx6AANsKYq/xPvkCos8D9
	 jhtINb1aEoCIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7300C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171483674277.14065.12796025349274288526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5884af8e0fe2a4425a3caef1a14a40f8d9cbc497a012829fe2e111010f7e6b
Date: Sat, 04 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714836742
