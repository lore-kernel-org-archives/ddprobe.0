Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426C93594B
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748224194; cv=none; b=er/hVOTUwEnAMmFVlow1C7VtSIkWi6Z35O0BNhsTCuH9C7ezcMoij3pUP2/rbPJtqpC7GY7/6rZap39g1+jmysM3d9GRsDOyIc4nV8+c79+jj6nXNgCJDyY0mpMA2jOHaxL8TcqMPALAUcTZLo7dqIW88TEbkjgMQMTFlIRQrsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748224194; c=relaxed/simple;
	bh=DxHLP+0s1FtfCsuO96sY0Ozyei9ULNwWgNkuPVKsFgc=;
	h=To:Subject:From:Message-Id:Date; b=tpLZjdo4q4elqJfZirLEzmfaeZvtsWO3IX+5nQGJpODQ0EhA9N2Qz9egEIKAHdGz/VmAuqQpokV2O52MX5LwaP9WNNe6nYv84AEIRgT1beNP2rtNXi6RCLi8pxGSryR1eM8dejpVQkq/N3AHXpGvTTGTR1ohIJGIv5jOWx8TzNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfrLj4Hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfrLj4Hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA82EC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748224193;
	bh=DxHLP+0s1FtfCsuO96sY0Ozyei9ULNwWgNkuPVKsFgc=;
	h=To:Subject:From:Date:From;
	b=BfrLj4Hvc8IYJug9hYi45zby22pwO55xkYbgnohzCpWgwJYkApmwv+1bRFVg7hUU4
	 Vz7vKkGJ8quHpVwQbRb6CY6NPHxyBBiLD1ngkgJZyR3BS8AvLiwcv5CRtLsubcNzq8
	 MMzZ6/rA0+KRWjrnKHUJkLwoBun1AqkHgtOl7Uuhy8vtyGWH4ZMhrfGpnFoCfpHcT5
	 LZZU55XJPjNUI65A20TSKlxuyVMsq0UWUnl08zHEm02j/ZVCV0WHa+psQG9h9QlxJW
	 Vx+JTq908cCc73gGf1TWi3GzTC4wn2oz/oxlGfeVCiZwN0GFXHXyppbypL+HLo0duC
	 HcmAN8dj16Cpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96032C54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822419358.23978.7660250391060016265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0a577dba4d3bd9ea70e69a3c1f72c209dd4619713385d47fd70f4fb6b42339
Date: Mon, 26 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748224193
