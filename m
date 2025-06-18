Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1391021C166
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750283994; cv=none; b=S4Wl7OJx7KHur8u4wrB7yapbqA7Z+b3iqtGJchZNORcyb9LSu2ZRnDWzesweSgiVox/l59hvu2ya3zCeoKDxgup+BZi0cgODGrge51gT+ZZTvRD4TD7bjG1RZbIdWSJbylFIROG9nsG6Xr1SJMhhNV5Cd54oQZKH9xy64Z8eZlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750283994; c=relaxed/simple;
	bh=kVkwzyuhJZyTEbcRjp6WtSOJ6Uy+MSeH+cPKcsYQhvI=;
	h=To:Subject:From:Message-Id:Date; b=RGkkVB+NjdalDUVXi1zYXGl2UaqbPD5kbDjVybxRvR+e6gyScMQhu+h5vyM2e5xTHK/SipnrYzLwTU90w2GMUH3GMKAnOkVJ4Z4uhaNfumQ6ACSKM3b6VazhPXdbyvFfCRQQd8uAYAV9PqwzuOs/LwdOykc61/3XVEZu5eTOozk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERj1F8ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERj1F8ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0459C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750283993;
	bh=kVkwzyuhJZyTEbcRjp6WtSOJ6Uy+MSeH+cPKcsYQhvI=;
	h=To:Subject:From:Date:From;
	b=ERj1F8phCCnvk5TLFAYTUKEpbYuA9lCwDYdbgPnOdma8T4toPvoq8LuM2n7fkkPqL
	 5wqgB4Iw30uC2vOF3NOYUFyP6lGBVQKwMwEQXZeF2r4SABjfj25FrMiz7DvgQ7WmZb
	 z1oeiknTG0p07sw2zA7GwGI3x8DayyEr4bTxdEmlcqFQ0AKOrTQB0kB++vzDxOH4Ut
	 ljWc4Vm2BFidDIPgeNnO6QBD4jrN/jwpsLR1i5J6SE02yl+P9QLDaas/gMVN4qkXj1
	 qQ9UTzv5MzEmABmUCnWn1SThyxWzWRB84Oeg3jwV9rtOEbdlLLl6AXrw07clfA4B/v
	 sy/I8WlmFoeEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED78C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028399357.5818.11096668549906187928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159266b4bbd31b26fda954dae76ddab14e54540a5ad5aa2dbba01de6c1b1f255
Date: Wed, 18 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750283993
