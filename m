Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6A22FDC22
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768601634; cv=none; b=CD9wkRvlKyAz6yH7Lc8xipkPhNFX7SIUJ1ORfs00EqyeBwzSJW6IOUoYuKYafChhYsat08WcLhPltpiz1vuH5odJY6SnYj0CQe3pYumxutMrndhMnBGMhz5FXfTraVZvMG32FhIsiy+B6B9AtIPXuA6VtAuMY3kjdAnu0prtuc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768601634; c=relaxed/simple;
	bh=P4wS0yZJ+frxyJ6zq8PKBRkxFnGzxmty4ZhohQ395P8=;
	h=To:Subject:From:Message-Id:Date; b=qZxWlSsNysXz5w8EK6AzBeO3vUAx4r0weUX/xQN4DcqFojQJifN77RHYuyLyY4i2a17dG3wmNUKhEcitsoMDRLfU6uLTL9ncTiNPZLFnaz4m0CcEJYyY24rDIKFjvjJ30dXTTJHMY/QO0DXRKhQS9/14eiJCVIwu7u1TKqeKASM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/b3+Zx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/b3+Zx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00FEC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768601633;
	bh=P4wS0yZJ+frxyJ6zq8PKBRkxFnGzxmty4ZhohQ395P8=;
	h=To:Subject:From:Date:From;
	b=i/b3+Zx0EkYb+5dQ8nTZAY8WYDo8ANaQUZZuBO7uzjSu5DePqSIMNHJcYkfjDEX/n
	 PxVud881b/BTwBdu2dEFlkr4J3NXMqVTILtb3v8qmcvcsiTZZf7KKBl3/akFYpmDKK
	 tEwIzlFqEeZl33fHn88IQkmVnMqeEXRJZG3r3eUs7XdB6VtTiMY0nl50K8BwWscodT
	 Cymjl8wpApBzO0FPKCcRaZT/trUyyVZoYPyEx6PSrhVB8lkp0rm69hL12gJwOd04Os
	 C29JOMjiDIV2YcXYebiS0ruWfslbJ3jdgpk3L7GxQ+mvvf6hmRKo/mgrVu/l23rFAC
	 Wqae9mdP8O0jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FEC98302
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860163357.31173.8044482027613915488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8dcd2e02775a7fad86049f1276af5de2615faf7699f0c0da7ef608af1791de
Date: Fri, 16 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768601633
