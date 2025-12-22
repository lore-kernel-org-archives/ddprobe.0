Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ADA32ABE8
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766420634; cv=none; b=cI2XqEekmzDo11CKkzHUcBWPvffl99GAOVi8tjrS1VqwP2J3n+/DyshDU7drCs5PiyKwkgGfwmiPJEMNqMKLaL00KG5u1hqU9u0SUoZrN0y575aN8jkizny8wSMtf9Skhb64o1pm3bucLuzXc6F8s+3x8hNMD76zQHIKjDeCQA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766420634; c=relaxed/simple;
	bh=myngJp4ux6kIsdf/7PyAqmItQiRuwJawcQCGsy1sNuo=;
	h=To:Subject:From:Message-Id:Date; b=tcM2kd2Tk4d5/wOgqJQy8TO6g42UQNSxqw57jesWmeHwZS5KnnjEMj66WPvimpojzHMcvHl+Euc/OyIU8JPmr4P2gZMwdLDb+t4OZDHCialSDwDA12NFGPIUS7EBLgOiTxR2oMkLNz3bOSlLX4J7sC68TKh/vsv4EesdSNzJKtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4TzBjur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4TzBjur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4819C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766420633;
	bh=myngJp4ux6kIsdf/7PyAqmItQiRuwJawcQCGsy1sNuo=;
	h=To:Subject:From:Date:From;
	b=B4TzBjurpSC39BfyR31MTlwDsiCCmuy7ZIS5AWUHvj3JzjT8fC3OJbDAh/e3SN9jS
	 dKbz1BjJU/QKtALMJ4A2500DCYcNpV17zfdUF8GpkCBhucfKF/qVdTxeVAopQ9kzmU
	 /qUDHUpPZ8RjY8iX+Pro7cT2pOiFZkv5yPgLOjFKJ1LyhksTwY40yBA8ta78bQv4wS
	 YgqEnxwK4PYrkd2uuwUfXaxPq8MFma+CYZtJ4jZWAqJ7O8vwDQfu5I11F87W8XwFxu
	 zzkGnf7Y36tPh7256SGEgqZzdGuXpQPvSls2wjKyIqebSk4x1x6Ufx5B6zcAaYdwaX
	 M+fyqIlwx/zpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9347AE677EA
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642063358.7773.8829228189463796833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcd63799e970d098af0f4f42db94a854de61b2cb8a447d426b0a90f92a9f066
Date: Mon, 22 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766420633
