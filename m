Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE29B259C9C
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756760993; cv=none; b=oCUahnBm4K4rJNVKYOsZJbV5aR5q3gqVIWv6KmBWxKVllvBYpP/2eERVHJl7xGFYNLqWIwn9n9L8qZFQWQPys/ZE7kkFi+SiWJ1TAJLNVMe7ZKfN1hsqDaByYSyRzyu27pPfG+7QCi0i/ZSpQPb9L/TlnZud94uz1plqX4f7t0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756760993; c=relaxed/simple;
	bh=lBfItbgoxC/Tfy8QTVuMFdFGQeqkCLoqXKW2fYLZLB4=;
	h=To:Subject:From:Message-Id:Date; b=C38hX93eJ09x6fV13dztMKv/neEoTNLltygLbejthZSd5/LuS+vFzEZy0mdKdhrWC7lLg6GRlM3TGmb83ItH38bBIxh0ZkVDjLyr/Z8LTt1eY6tvifEb2yUGAGkHVahm7hwLrhukkmvWqdLtaJbrnnReUYf8WV7ClXhC2MR5c+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbsneSiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbsneSiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD73C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756760993;
	bh=lBfItbgoxC/Tfy8QTVuMFdFGQeqkCLoqXKW2fYLZLB4=;
	h=To:Subject:From:Date:From;
	b=FbsneSiQ5+rAJSC1P/zXG7f8F4QxypM/3hOEEkofTKVUZqZTBFx70QdDdR9suRZVc
	 E6IaSgns36//I511dkyhAz4s1JFHCibpY/uE3SYFZ6AuYTyAkEky5Mzys+liumXouA
	 MJZJgVPB1wnA0xVpQOsRhmSNMJbhpCMky+3V+c/L5wTg7ypVi7knm852QXgS5f+sXY
	 2OS1MNXsz/NpgA2Ksv1QUiC8SbxqdG4ug/DSCQf9K1Wm8zKy5pK+1h/cVJasPVq49n
	 /vlPSGyRutRaasSGMBoNoL+jmB6MR3lAyGP7Dmacho3uldFfAs5meK2uTUnoRPwWO7
	 OEj1dYEqwxp/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BB8CA1005
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676099358.10295.13958648712864152601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bca74e383c73d02dc172056e840dd11cff2d0ed3f2e48f24601b51a67470b7
Date: Mon, 01 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756760993
