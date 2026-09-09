Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC49330328
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788937234; cv=none; b=qbqc6KroN40CArmQo6gU/MhuXzP+goa+/y7pcBIzSTr1lXZorW8duouqZuTLdV+qcpSt+ZBFLBIZ+avzkS+4bbp3uNNlmue4z66R1WVcFmGmrYe5rW/BVL1g46CUH2rm+gHnvJWULgls7MF4dC35a8uJgCWxRHNamiuvEVu89GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788937234; c=relaxed/simple;
	bh=8O1XkFheDjymH1VnwwBjve0juEWXbdmm6v/rIAroCH8=;
	h=To:Subject:From:Message-Id:Date; b=AXD3gtAb1ZzUwyuUQzTa8xapjVvJlR9YOOCX0sLcD4cuZNTn1e+Dm6dVRbr9Jy7S+uhjInm1fUOp/aXBN91vL6QS2YJgslzhTAkzxdlV8XZQ04qjU/tq8ca8nwqd0mJLoOqZNUAubZYm37dl9fzcksxp8+TKRL0ISjk5CYwu1vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XM97xwJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XM97xwJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10BCC2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788937233;
	bh=8O1XkFheDjymH1VnwwBjve0juEWXbdmm6v/rIAroCH8=;
	h=To:Subject:From:Date:From;
	b=XM97xwJU4UNpoTJPr81HLSep/sUebT1U39IcKz5ACBOp3UkXxGOn5Wa9kPt8q9byJ
	 CWGXC68V4gJ79fUPC8gbR48AmugL0hn0iTJ65VvXJ4klQatWaS/HFl9xKOnPH6n+1T
	 B2Sr3QDV29OJdNUhzX4mcsymTqa4ON2vkp8BlFRP75l1ToS3hL0vq+gZiG/oT7JMxu
	 HQWaFIBj68u66kRhPDvQA8DgscvHapJusDd/mtjAo5frePhokzQPNWjX8K8UI7FR7B
	 4XNg28RjCCuy0w07vT5Cf71mb59sEf1DCa1CEUMI5ZieFGIR0kGOBYE7eyaW1cqLvM
	 MbVojyXiyn9cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF727C79FAA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893723368.3660.5227452827172973825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d524a0c5448dac1c00b4350251fafaf70422af11de4e426820f177f76746afef
Date: Wed, 09 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788937233
