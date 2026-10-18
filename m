Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5755832B13E
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792324234; cv=none; b=gsw2VhEcpApVjCw8M0ArkgtnsYe3euhl24M2uMYbYs35E93n2SBZJYWFMm+RaT2OWN1MKdbgh0KtjVpkKQPo/bW70jbW4cL/SQs40HFkPqqzIWWYbfgy5FuqJztz9Az8Arv9p5xyfYovAdV0jntWzTlQIAjVxDI62Aa+Pc3xIQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792324234; c=relaxed/simple;
	bh=Nu/8SkOsYS44WLoXyILbJsyPfRWFL1n0nx0sIMp0GBk=;
	h=To:Subject:From:Message-Id:Date; b=iUdwA0qCWyGk9UnvM4WhgdOcbA2wzgA55oaofNDb1UyzScsFqKMkn5N7lot2Sn+zfa9VEkoejleOoptA5psQajgRT1QnDwepFgBFP8CRErbZ719dlaPrxOpxsujHuMQM8/JGqfXiKIGXhM07wlJgohyeYY3csDfJqIt9rhYxw4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsQxb73C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsQxb73C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63ADC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792324233;
	bh=Nu/8SkOsYS44WLoXyILbJsyPfRWFL1n0nx0sIMp0GBk=;
	h=To:Subject:From:Date:From;
	b=AsQxb73CMvvtWYs039vGWmWNzB8PWB6qehEdXXRlndTKCaCnhHld+3pdn1Yt3HhNb
	 /RT++20/YRrumNJOdMxXtKVuvCKgxMXK/QBXXNRV3WOhD9EuVXk9LjZdMOc9Hvn5FI
	 34xI7TcyZG0gziJz/ZDeYxwFFQACnQUmywqoINCovMJl8X1wntFUQu0A5ZHBs6EunS
	 gKZ+lq54yrWD6v0vV0pYXSpUoL1ZDhz8LeqdAj/ZlxyI6dfC3scQ4a4XMy4VUqrNE5
	 c6Ep2bvBHvk9KCFWIPjBMBDiFM1uC6TCldt/vw4bHWaQo41W+Nox+wLVvHSkXfTtOT
	 zedTSlIIyS3iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF564CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232423369.19385.4802872856821132391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566870c32379f29b66df7630848bd05c3c445ee3eaf5874f85285af1c1254755
Date: Sun, 18 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792324233
