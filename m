Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3F121348
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753540795; cv=none; b=fm6FdX9cV3r7WH0+Ke41nQyb+iqvcEUC3Rb4wVpndPjAdD1ga/GNIeaXc/L0ZkkgLdH6Uvkpq8o+RiTv8z8ly1LXYzBleSMO9xOipMrGHc3KVEckmJJdNWvyMN4SkfrGvZ9EXJaATFKgbnG1PKRz3m8XIio/bm3e2w+ioWcGRbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753540795; c=relaxed/simple;
	bh=TpnMjfol+NktrSWRmGkh5XqlUI0ovFYhFciP2+W8Bt4=;
	h=To:Subject:From:Message-Id:Date; b=SSWV89hfN7oQ2D1WVjv0ZBgV8crxDyeohiig7q52Em6d4JLV4zLLos6o9o/O4BPGlzivDqRhSo9eqeMrs0jkU9oZT/2KtsIPWz4EmuCKeU8v0cLOpZLWm6s/QxVVxYvSAEUUQjbdIcd+T1qLi5G6ekczElM/SkYWC8NvTa7V9/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTxuoYpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTxuoYpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A148FC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753540793;
	bh=TpnMjfol+NktrSWRmGkh5XqlUI0ovFYhFciP2+W8Bt4=;
	h=To:Subject:From:Date:From;
	b=gTxuoYpmfc8bLegt10kHPcVfgiin2E8Chic/y2+bRdBq5ER4ucvuiLqiFIytARvTb
	 cCXDvhR1QOHcIM68DHDXtKuv2XTfbl8PJg3vfWPa/H4jSk5ZoW/nWJCJ6YWqgGl69t
	 diqnOHlL3Rsm8U3s7V3kCSpqfd46AeowfNm3KXdxofIkUpOi20N5oUmaX2BH74Fecu
	 +LxrL+VAUTlUN3OgskcdMqu1yOyj4GK4xMfiGhD8/BAWNlfP786T/mCqPsb9fQbCnr
	 4hKp+aydxM37B6s9mxYpXoRpwti2+u62OcvwJvppuGH6Ar70pFf9zJKSbRsFLJGqQ3
	 Vsc0TapSjxmOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBAEC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354079357.32351.16837361731422862698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a89be411316dfc4fef7dc3dfef35d3ca757ce4f0908e9b7e8cbed4102258461
Date: Sat, 26 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753540793
