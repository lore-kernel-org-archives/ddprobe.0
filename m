Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CBD3B42EC
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783488514; cv=none; b=L3uJk+CtWD6SZiatzeN+Z2EnsRbMHnxb/LcR4med22y7AO3+mOjx3+B1SFoNxlJzX4X9+NGMHzK90tvsyGTA9At5yl9iEdPYT2G/FslZlbDb7t4OVbgUszd4KnZuRRige+9w1KRcbJi0yJ5D63V4HcTMKaRumJGee2AWH0qm9GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783488514; c=relaxed/simple;
	bh=xRQqJXu1jeb/sueuTAwdvi/K9cZ0u/1vbc7EDaj0X9g=;
	h=To:Subject:From:Message-Id:Date; b=Kh0hfU+CtegWHGyEcIgtAXqQf/jK35+wwIiJED6UiEYRTh8yuac8hSSUaus9YYFd5FJiHrqM8EPukXJGCoChI46c86TOQ2sknYAzWZ3hJFf0UbOyZw36aa72VQA3y6k9XvRQrqyaCCueZRMrBT7/yapcMOTWEOVUd4elS16lrRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udy5uA0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udy5uA0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF30C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783488513;
	bh=xRQqJXu1jeb/sueuTAwdvi/K9cZ0u/1vbc7EDaj0X9g=;
	h=To:Subject:From:Date:From;
	b=udy5uA0sHXTsJwk66K8UmViiHqX5qU4dOMZwx7vjN3uADZs262MVNAgGVppxuOEOj
	 +JN1YLH77sdQw6GOKLZ4qE97T+I8gKWtM0S24CJjtTLDGykqUQ3j5XAgVpfMGOawDY
	 mtFBcY1XIRKd3lRW5Uu/nsJhcLoMrpZOgwxiWWhFzygQ07N2LAI2FI+72hHE8IXITo
	 04ImF6lADT3zjkVc1q6BIxQ2zYb4Lr1EIt8z/G6B6hOtqBvjYl4DnueaX1/PnrNx/O
	 dua+T0wCbbfavStFDagniCjxZE3e9W/n9lgN7meE8vJkvAuPUDe3Ksq3flWQuSXqnC
	 Wa6fEeImOF3ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD77C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348851369.13643.7718904083348727911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f67716ea3796cbd6d75c0f21e3cfd79a265f2e97dbeb8fcdc19161efa7f188
Date: Wed, 08 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783488513
