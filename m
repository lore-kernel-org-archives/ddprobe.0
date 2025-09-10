Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EF5225760
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757469594; cv=none; b=NzquW3pwVDGUFbGVbhyUaHHnmfrJzsRtRF71tdFJsrvd+Q7AxvjUi2qjv6kriC8TBSQaNWPbbc6lEkRMffccV7d64xtjZNcakCYGIEi71fqUiPKDGj815EdVocveNNWJnWLqFPJfXiu8Lq1z+VFDAtXq0gLDWbBG7mVz4izQbUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757469594; c=relaxed/simple;
	bh=qPXWIe5BCq5BMWXf1dWjJ3zL7/hCCtwl+sJ4KlY+hU4=;
	h=To:Subject:From:Message-Id:Date; b=VZwNJaVPJdX1QXdfJwNwQCMmECxC8Kg00sQ7aFSBQ/ynanYRQSlW3okJ8m28UE+7zRvexmygkvuQKT0vAzFOz1oaya8pcW6MKC4UFbNXbKHxsK+/N5GdOe52/zy9OJdibZuTxKuYgoZZzEnZhuFMuUAC3VfLbFssfq4DbkSNgDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzZ8mD2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzZ8mD2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5E8C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757469593;
	bh=qPXWIe5BCq5BMWXf1dWjJ3zL7/hCCtwl+sJ4KlY+hU4=;
	h=To:Subject:From:Date:From;
	b=LzZ8mD2Lgk8O2ZFdnAqz1ArtghdmX8zz7ebVQ9BiHS/6UI/U6TJZynP1ZuKNK3J5R
	 pNtwX04LEaMpeI1rEU9CbMPdNNsm2CWFFLkn/YUX85Ipdss9lKgTtVO8XmHZh/naUk
	 mSy6pCrJwJgLm3bw+FspZIKtoTUet8i7a6gmqjEbz6mANwl8JiJHpoHmnBROX53cl0
	 nfEWiGUedBQ7og8nQbGxVSogRfHv+gCafVQXwMBp5zJ2zF5+RjxLOHkqnQqP7qt7/b
	 hufQ0ijcQGsWFD1E4zIm1/0uKQHPvFRJezDY1JNit8CP5YeyKVARmRFETa/XO0YRg+
	 FAIRZWA2sFYeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F535CAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746959357.12998.16807560104384430023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6867ab929911d6dd4753c3cef410cb23d24d62cbe0531566802c03c9ad9a1aa6
Date: Wed, 10 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757469593
