Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E50018C03F
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759042194; cv=none; b=ORH3enbx4XMotLWpJkT/lUB5ibWxM5Z7Yv051dobSNKtBN7GDWpyI5WklZHqm9YMXC/+ydDS9wIGRaMtd/fRoc0uQdNW1D10ga9mCiWItdFjthddODP/XWtOk81VmsTzD83qisUf2799ryPWXXKUcHliXXxvGVf/F4fFaAS+W4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759042194; c=relaxed/simple;
	bh=i43ddDfkXgf/NxevtY0BKuM9SdTd5CFBselxRgGcMt0=;
	h=To:Subject:From:Message-Id:Date; b=Ne5oLwqCNkyuQyGVjsrzB0LDBZZ0qZ9PshjL8qVN6EjPDX3oY+804TCzmhC/W0Zz1MmL3oLgU9C2q5vL5vdpNQhUf+0dO6erOJHoogi4PYaRAEDmZqJrgPSj2mIzcUOhk8Ij94Wln7HtTfvEOG+Bnly8h5aT54u/TVa7sY1/NCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cc4Hc3LV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cc4Hc3LV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E35AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759042193;
	bh=i43ddDfkXgf/NxevtY0BKuM9SdTd5CFBselxRgGcMt0=;
	h=To:Subject:From:Date:From;
	b=cc4Hc3LVweRJKZm2VwT7ya/YC3G66r7a9/rJM+gaCB9CM5pYXHwObtZ43T0kbg5eO
	 I2jr+4xF1/IPtUqFLivNNVJctxugojlgjDuTJIgCi+4T1o6rWivQjuicciP3lCAcVe
	 Af95/XatP9GYCqDcarr19mvceCc1Px8KTNc6bJrFBs4TQiwdIH2bjgnFvkaeDgXpBB
	 3zAAZ1FqSYqYrlQxS9cvOBSE/Jzdp0S5Hgr7uZwSRPQBjgg4+wgax7pbKjR/xL0ELq
	 pa2c878htaQR//0VD/S3xTm70RtgmeMN8ypZ0ULrUqDM5N8GjhvQPoTd7dcci3On9w
	 1gePzUGW0cZ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F151CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904219357.29019.8259608744373765147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201f49d7e172cb0cd6fd86af106787ac6257967b6ddc1a3dc6566036eb119de8
Date: Sun, 28 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759042193
