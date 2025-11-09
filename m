Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4099E1CEAC2
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762715394; cv=none; b=sH6AeFZCCp06NVjMc7R2xevHSDUXLTYcTJlhdoheUpFagy+BibWay2aztxVQgMqooxRMfubkr9UhWmGn4LC6usml1giq1WR1mmzCMcQQmWe98+ksp+mIcP5yU01Zyh3YGaulNsgXy2Nhs+9mMvM0qi3nCY6VtAdhEMBOwSQkU04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762715394; c=relaxed/simple;
	bh=cy4/reajb7Id8m6ooHny4K1gVpN5nq1kMXHkF0IR9XI=;
	h=To:Subject:From:Message-Id:Date; b=n2TtwYzbZEswqUlnv4+LkEAIITFS4WvUTuEfeQxxRD8VnaBk12cJYekjNLz33jnfnMwy/E9MUjY9MRNL3IJWoKkFmZgIldclPzlDZSsggEBKR5zQ9YrndO63Yp8k7z2J+PmXXwPvO9KVM5xUdpfmvg1jzXB/D0XYy36XaHjeZ28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5OilNKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5OilNKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74F3C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762715393;
	bh=cy4/reajb7Id8m6ooHny4K1gVpN5nq1kMXHkF0IR9XI=;
	h=To:Subject:From:Date:From;
	b=Z5OilNKJtILu/MADcn1hXmmO0ERL55WwFTf+Y/tUaKQdc74gbg3R2oDaYEngrHnWI
	 WV2AO1RlppbU0AzTO8hCt3VIuJlgREGZEgOL6+PuFL7iEUx6gtIHeg0rsA3k2e3a4b
	 j9XjbPeXAhT4JBN9ztmD9xBLRcSEXvEef74AGzF4aOAI0OuOLKhHqPcjiwg978EGkM
	 CMS6tYllvKAKSBiMu4GHLRf/G+kJ6D3kS28/n2WFP3WKL81kQrgxOmRJV43Iq1dVbS
	 gTLwrv6/1S5sHAz1G88XrXZegBxV9ScKk3Zc6InW6gwioenBedRUBrtjcawNHDB/QZ
	 XTAI5I4Sh6svQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954FCCCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271539358.31371.6404050420795866878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62a64cb2f3e9612c82f1e0a757ccc4ba2e909faddb2bd4b5e9e85fb9c737f5b
Date: Sun, 09 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762715393
