Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCD2383
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734915354; cv=none; b=XcFrKIowGscQLGg1hra1n6fD1qR5rExP/DsLZUN6yqN5LZcivtrqLh/U/zG/GxylZGZewAp+QYGiqeDn+GLdxiLkuPzwE59MXHvTxk7mNthOWKalZljlJ9gBu7/szyHO8ky4MoSIW5LqtEszgptwJEI4/5aDQl1lNyigUREkIXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734915354; c=relaxed/simple;
	bh=jvTlmvCtY+vScrQ0RWbDquQE1gLskW5wUAAKytOlVjI=;
	h=To:Subject:From:Message-Id:Date; b=c16192E5toIAmPhXZGybaHM9rvMwIsvLM80kEkeDxtR8fYtWvjPjbOStmpT+Tyrl9utFxWlxa0k/DbMvSfeYZGdHpGEjBw/6tuDM9Yz2Iv4TC8zoPgsZjgV9dcIa6+/33uQavhxymCVYBzCc/vTgIk9IDHIYG+WTIHHBH7CLjhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0y6hqKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0y6hqKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE711C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734915353;
	bh=jvTlmvCtY+vScrQ0RWbDquQE1gLskW5wUAAKytOlVjI=;
	h=To:Subject:From:Date:From;
	b=h0y6hqKWNbd+ChX6WXMvgkREJmwGQeQXCj38ZZFpXq5mg9Z8YzZmQMFS/703Vu+I9
	 /NYYxWxkHeJ7hCZoqpcekVAtC4PFkxlhJ1TwHjAX9VaEaha5hr/455ZpuaL4MYn5gL
	 dSEVn5u3S5wnmwfK+uHgySjyaFGciMMqurniiivjr5VQGoy7GjckIv+mvLL3/x8Ree
	 UClCutoMy6xSGCYjFg6BF4kPMQuX+9C65wx6Mwa5Ge2Ln8gUNiyrovQQ2CzFQv68Va
	 fMMzC7idyBwsDhyEbxHGAp6wkoCgsbbWl9y5P4X6AURtzOA+LgDYgsRDPUTkhD5bKx
	 2Hw6X6mXkNAuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FC2E77188
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173491535364.6689.17281605455187440770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a288cca843a102b6531fdcc656775ac6d5f178aed0000164597ea4e2adc461f5
Date: Mon, 23 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734915353
