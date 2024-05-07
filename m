Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076A9152516
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715082743; cv=none; b=XeMjrYYsNSmECoMrzmhoIzkexdpp0nNdra5GpgFm6mT+jP1QZEDlJECh8x/pZLnl1JSU8RX1GpAi0GdVe9nQqj5JDpwJhio2C3VIHLPd7P1IA2QBDicLsEcibEikx371po7icHJgT7Z1vUtDvM9t+V9zuZ11QdOgafWmhxqGk+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715082743; c=relaxed/simple;
	bh=WbECwNp+WuiN1y2VmJvKQ+nRLiZ65qqA6Q50eawGUFM=;
	h=To:Subject:From:Message-Id:Date; b=fvEmdQoq0vkRk+dcOX7lOnLm5JofpJXaQRUufFbVr5HH7fM3mz95WdqdZJD7fk04HxqwJGnaqTOdn2+MxxO5lhh7DpPY0ixmFuB1WnyEbXXpUhN3KQkwCzWQSP71ZP7/93bOVkOmNM1Lzd0Z/HPKK7YYabTQOpLNcoELBa3WjN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKg2EAh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKg2EAh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8DAC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715082742;
	bh=WbECwNp+WuiN1y2VmJvKQ+nRLiZ65qqA6Q50eawGUFM=;
	h=To:Subject:From:Date:From;
	b=aKg2EAh0HE4nuwN4MD8G0jAywDOl4lchN+AT2r2ljytL4WdlbmJDgyXtNnNz/ZJ6+
	 mxryME4pefugK53wfdFW5mt2Hj6Yv/zYy3Ubkkao48sRLvoDr51vRNU8f+s6hS0z2V
	 o+aXEaYEJPMrXQ2Bg8r4X2cfjUF50wHg2mzNET1M+/91eSu/HHvPqXpgyOaYoRBYzt
	 EkbvUN+QDfhonAOC2m+eX90E/rweZ3yQfuRfRophJK8yZxQnFjXkQDOl4bNHncxZlv
	 aUNRn56khq8UM+1JRwJb9yPcoYzUk3Q2fIkZ8Fhd/DebTp9rSKI0iRb9vb4kgvip/T
	 FVD263pb87Xvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70F8C25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171508274280.13795.345734375362493007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5075259d8826a47aaf3723c597f6e68541988f08c52239388a628e5f38210af2
Date: Tue, 07 May 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715082742
