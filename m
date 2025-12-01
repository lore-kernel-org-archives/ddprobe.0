Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E81531A572
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764599574; cv=none; b=TwUNPQPRQilIcz4fUPlKbY0mkLfbNUnwIq0AjFS4PM8zrnhQ+1N6g7kTHzELuzKLUNWhFs3WFwUa/ytsM+pO6+udJCANmhXML26vRmNft4XNTb1ygf/ynXDABkszYXAQUiBR6KOuda57MDAjyMTPGQe4AY6VShYsu3FpiTl7Bc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764599574; c=relaxed/simple;
	bh=8KLKhNoVHACUD+iTBrKt4ADpyxEW8RIrNgR4diK26PU=;
	h=To:Subject:From:Message-Id:Date; b=h2O48ZBu6bh3Du972ris1hxAIDZRgSZNIpdOVZoKreCMaDc7tcNdm0Rg77c8o48fu06L1UvuQsXz34X0xrtWjiqPa12sjZ6U39AwQG6U7qt2DR0N5Fm60KSzO6mv8iiaYnGX7CCj4dmNRYBGdaysj9NmeKfbDXSEHByX0VD69Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGJQEZMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGJQEZMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A848CC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764599573;
	bh=8KLKhNoVHACUD+iTBrKt4ADpyxEW8RIrNgR4diK26PU=;
	h=To:Subject:From:Date:From;
	b=SGJQEZMjJPSkL4yQF1TwMBdydR0Gggn6PePDknycB6dbqcruulETFaF1eMaZumwos
	 16GUJYwcvnkRYbwQooHsLe1DE5bI/IygAgYGGzkoJLdbsYCo31QgWh+WYTG0TZAUqp
	 fjEWlD1Wn0BHHkaY0jC0G0pTeexR6/xSOusl9ZjVk1U2zRNc/Fdw6Sw04yt/bDY8ne
	 R207FxKTwtCy9fXWV0sb5/y1qR7iftya2+8nS2E8R+I0A+djep+Pkgc1ASIz4aaJEG
	 J1RZrFBUDE0xXB5SspsQY0qHJ6Zjq3RWzseMml2SNxJrePWRFHS9K/Zw1FcLBtWdrn
	 5pm5mSsstgUGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985D2D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459957361.2970.3713750534701174248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8640c57799050b7a843516f7d67e555b44fa2d8a28bdfd713e370f5b571161b8
Date: Mon, 01 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764599573
