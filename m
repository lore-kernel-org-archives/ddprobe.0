Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52062B65C
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740878334; cv=none; b=KkNM2ac4AUIHdzQLmzWxP6FTwFMHq3YtSHM+pbKuWOCmBiMj6AizhTzFgvpoVL78fe9DLZq0zU4PlhrALmdBIbuc2M++dK0GjFq4u8vo4pI1f2Rsi1cbYodtOr7qa0HKwV1OiQ0iyL0JoDnseuoNsbzd1rD8v0eBwoPtJ3XIhMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740878334; c=relaxed/simple;
	bh=ylkiaddulAkSJMQDmGT0HEh2mHzbe2Y+3yuUY+DDH0Q=;
	h=To:Subject:From:Message-Id:Date; b=rJgkzYoTs1dU88p+6I8or6XZsfJzzqeVxa7n63rpdF2MhfMG7g6J+dQnr/C+rG6PbxG/9tBRFNQVzH5sOgHuZlaO29SuLQ01d0ccDYh2i79eKWVkWzOPhGLNEFoLtnkWX9iDCfbAmoDFUqQXLRcvIlyDklsXb2I4qY1zP5QSDWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQSkRU6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQSkRU6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA50C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740878333;
	bh=ylkiaddulAkSJMQDmGT0HEh2mHzbe2Y+3yuUY+DDH0Q=;
	h=To:Subject:From:Date:From;
	b=CQSkRU6gLGeWmPYkAURkC0MDBQbQCcZT0Q8HYgWU4rP8PhOSotw9PrKr847HIM3VA
	 j5N3ILm1smEM7J6JZ23zmRHfFcsSnXc6P9ak2tKlEvfpUBC+DgO7rTy6HQzT7ObYyL
	 YdJ9kcpj6mg9XIV86IfRJZcW9AW8rfhQak/X9QlIaaFSdivt32OK8HZNYWSLododE/
	 0euGWVLOaVMq4ZcJR5KDifqneHczPJTGuNPWi+hbKTBdrn+/u7ObsTX08Tz+Vt5rA2
	 8zVFhQnsm9o2hC0Zt48PzSv7iYkJnN0kboUrHVdsVALD8zm5V+TAn3gAvJnJLbCZR4
	 FDSMsAc/QR0pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4573C021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087833365.31144.9161605385821116327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bd241d4b4198daa830345b2fba39c0a33ef4a9153037b8ff2b5939eea23e04
Date: Sun, 02 Mar 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740878333
