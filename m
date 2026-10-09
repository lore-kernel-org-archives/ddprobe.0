Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B7D381AF
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791589234; cv=none; b=T7K2bTHqrNpFfx+syW50+8t3KQYnOUYDa+J8pbo65oxjM0I2m0iu4aBYb7g6ngo0L6cPqiHz946zKU9eaoOWyNQ65tky0uCS7AIzHVGPtK04Fnp3Dzw7ot+jB8CTpF+LcW6YSV/eYhJUIg1qnru2fBB9N295MC0kiZOjyY/bajE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791589234; c=relaxed/simple;
	bh=SpaWA0NV8qAqxol0tECcYb/LuDQIaHlY4mPnFx/MYt0=;
	h=To:Subject:From:Message-Id:Date; b=CjIYKgoBgD/LJ06w3+GUUtIYlvC+tmegSf+wtVcNUNMZ4OM/nRLJGHGXNcVEkI38TDKhHqPs502wpG3QI6IQLv6mjrtMZ1oK7IxV0JH2lrZ/KWPd6aS3lXWvZhLMFwvwuMkEgoZZDhqz6Re4SerCquY9nzOJPNQ7GG/CFiUMzo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg5IM37n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg5IM37n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F35C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791589233;
	bh=SpaWA0NV8qAqxol0tECcYb/LuDQIaHlY4mPnFx/MYt0=;
	h=To:Subject:From:Date:From;
	b=rg5IM37nnJwpjBy1t2QNfrKrMcrmGp4/p5I/Sd8ZTd34EqZmhYSOCWeydyHNkUj6O
	 64zbdNI/9HNXQ0tmtK7qBy1QrYTzfl5tE2CTAMOecmPOGr29iE7CeRhw+VVnA0ccnX
	 C+KCeD8Kypu/DFeMjHJxYyUN2YHu6d20crZTx/zeThpgwe55x3TEyA+fiSM5U11YAg
	 AqgJaLHRpPEYEAA4wg70Rnvze/St9s0viz0lyVRU9yhDoIxnbT7exd5gbzyeMz8zth
	 bHLEpfH8ukzMyVOgmz900RTeRLseKkePZoNE/5Th+Lek4cg9pAP4m+8atttGA6znzh
	 VtgSfkU04ZY4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBC9CA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158923368.26080.959000166992239184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9df329afb21607f598111ecb1b4a271c21b40002ab0899a41eb6bcd76795ac
Date: Fri, 09 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791589233
