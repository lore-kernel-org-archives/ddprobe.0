Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553B7138C
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 16:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714322543; cv=none; b=EuWh7J2SdovpABbGqWr79q+iqvk090vebyoPxx6gYjvk0rh9CbAfgm0z1CxGiHeD9jLhtQYXVTNj/fDaMZwAmb5QfCI1FXo9HTtlU/k8r6VPUCk5WdupLJq+dyIAdpbzfemwMjD8tqCp4wZ5Bom4zqmEJDay3TdzriFCZu8lh38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714322543; c=relaxed/simple;
	bh=6nhVmi9fyTx/3hT3a5H/Lji7bZNL7BPm8GIoFJS7z24=;
	h=To:Subject:From:Message-Id:Date; b=iZ8u/zIQnZRltJF7ei+AriVMUzzz/EY0nDcsePBaWHjyZGkz1f+W9d5s7mVX6OCTFs3jNlYxIqMzaxJc2xzFrruQhERtxgCKCpbie1qY20+r3cWynAJdjgFGVQ3iCDvrKzAqME2YWpIEDnX1cUgWZxXgTY9ZeL026+cP7YM2qF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbVfsgUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbVfsgUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF1FC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714322542;
	bh=6nhVmi9fyTx/3hT3a5H/Lji7bZNL7BPm8GIoFJS7z24=;
	h=To:Subject:From:Date:From;
	b=XbVfsgUlSQMAQ1KdCpvdRa/bYqNvdh7wfERvA0iTVFtV+brahZQRL2Y8shU4Z5c+0
	 D3ACnAxgFdAcvbSkpUH5iSckcL7/Awj4cwDzVw1PR+pyTBG6+SAgCd7bjdP6Fgl53m
	 sGIARNoDvOkOXh2O1siaomMChd8Lkk2mWDR3uXtTXFH9ajYKM7pFyHZB3BOVrhg8f/
	 QNzK32z0vFeDCi8nIwqo26Oz4i0EDDqm/C1YsywS4ZJzisolvaqQezni95fpoLI28i
	 4Hi6yxh3MYw3MoltpTVNy/7GKJDZZIlNT7gscaA2XtshNdu29P8xAD2xy6NKatDYes
	 NimJRLzc4wSSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF903C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432254276.3265.2215114345362415324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0b1742ccbe59325c88222aba2c4d68254f04dcbc87d41f21461f1b570e3cb8
Date: Sun, 28 Apr 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714322542
