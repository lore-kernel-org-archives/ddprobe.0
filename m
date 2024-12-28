Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3431118C939
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735407354; cv=none; b=GI6r+DIGr897NPoNMwz/xJSJonMtv14Bz5fJndLlGyJcn2cUzdrZf0w0ppVENcxKG271bPyrvhomFrc3adLKPhhRtd8hAXvre5p7K6tGvteBrGUAQS/Sl6ts16rYcI2b/IyMKV4bQkfuBIjr2z3VnfsgBY11faLaeoTmnLlZKM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735407354; c=relaxed/simple;
	bh=HJ//K2XUfJFFFcfWwcv6BR2sXEj6dCMMfgPH9iYNkBY=;
	h=To:Subject:From:Message-Id:Date; b=shZWIcw1WWs4ynnDC5LgHUw55xxgbRt15w3PBvPKFxqiTyn+sNKJXZ8pNnT/0zgurBt/Whzz+Ivkd+4yVrM/PMa3uXAt2f2uhfjuqdMgDFv9MmtfCuiOqxNHTgdZDGGEa9KXz4LRVEixIRGPra3abfXkdwzOkCK4bbRBLxOZxz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pH2F9tRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pH2F9tRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF7EC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735407353;
	bh=HJ//K2XUfJFFFcfWwcv6BR2sXEj6dCMMfgPH9iYNkBY=;
	h=To:Subject:From:Date:From;
	b=pH2F9tRxoq41rSJNaOGZWB1h5rKu1md305roy1ieEmUBFUZBRUqX9cC+w3BXruMI+
	 VCl1FsBclFxWYRViDo2wDgMUR4pYynzpDjnnn1sOVb4ilkjvu6Bk6XD3HyML0SaySr
	 eDp9yeAbYBUSqK8TTR2BPVYXqH8Mc2PmnZjEa6vRa6aGjgw76JhsG+dCFumFCsHiih
	 WWgzekdLkLYzVpo9gvMIZ+1rngqCNRjS1p6r8npGEV2edv7CSRGktMn6diNG+DN7VG
	 S5I+JatcUjjEh8zBb4DDwLGdlWQOS+4CVYXqbeHmKWp8/7TG7OESvAJY+Ub4fAo3i5
	 jWSpKvEt+rV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FFEE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540735362.19718.5525749402191096434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714cf9097856454a3db4b6fd5f7d19ab637c3eef425fa7b536a79a09f773d035
Date: Sat, 28 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735407353
