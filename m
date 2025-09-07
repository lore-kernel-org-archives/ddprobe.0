Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21147146A72
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757272194; cv=none; b=RNa9muTA8OA7qRPZ7e3dw+djcRULE2F4lmulyipL7dcTdnPYDigT7djv6mxrxch3Vfyxz1n0KNflb1Ek34ysHDBRIaZwlY8IoUJqmtS4o5I1WIH7eFRi5jxqhwXji5Q8u0ON1bBXHhJYgJhrL8obeuT0XvZB/ShgOCCsKjatsBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757272194; c=relaxed/simple;
	bh=9odc5ixjD1FOUBqgBJdV1y37qanThRsE20ZjVwOoe5w=;
	h=To:Subject:From:Message-Id:Date; b=PcoprZgMKnbYyPOeDrXV+YHWYM7xE9MZCHVEIhvbqwmUbIyPj4G9YO6ynGQpBVRXemt0wstqaeMB+mZZggt2w8GCzhwscGBMaztFaxey7KYl8A0fLnRDyyciBoJD0RF7Ii4/41A5AbNB8w1I8izddenLlo2N7UHyVGl7p+T0kGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgZJ6+lq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgZJ6+lq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBFEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757272193;
	bh=9odc5ixjD1FOUBqgBJdV1y37qanThRsE20ZjVwOoe5w=;
	h=To:Subject:From:Date:From;
	b=fgZJ6+lq12UkeTD6+aG/fuplIcVJfzNZMXpZlrqd1n9rVJ4q8UHB8LWYHR5xaZc2Q
	 2Wk9xw7JEXKKwY7/UZPuJCQbemtKBzxBMFbe8BkWoFeG0/XEmyUGBOjuOs6xAwQyzz
	 zRDGc7fAmvq0oS6UldpA6m9dl9dJiVIzeZ0pgb3FOHRfKPqlknxGFcw32/n3KNcc27
	 VBZ+bHaXofj/iG2dV6ZlkEuxoT4mGCa4w43hLzDm84l5FtvLYryeW1qvcSodEHHWBw
	 QK8oRiCPEnB3rgGJP7bmbzlCNqpPzX+IrqmnaJMiKAuwwqdvsOZWtdqIVluajh6ENb
	 6l4QwPZVxNyQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E547CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727219357.32082.14181206610542169380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce85e933ed0ebd324a1945c0284635580f38967600bf552fdf8edb42d811220b
Date: Sun, 07 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757272193
