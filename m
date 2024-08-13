Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3224B1860
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723507554; cv=none; b=rU1rUw2leHI4wrCvr4rfSjzLigSrA3l69axuF/SbP8lznrRuKKXte1ioqQtUYQQY3gKCDcPTod4S9iQnTer+j/1RFeyApaST9y5WnTvlqgXLB32TwpLb9c9s9ScbE+rAkKSscWBQOadi1cTF588UgkMe9c3FqG7Ty8ZGDUzvD7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723507554; c=relaxed/simple;
	bh=hvt9qJoRk6TBbS/Lc97iN8635r2SXNmuGb2UIUARjg4=;
	h=To:Subject:From:Message-Id:Date; b=TgzHinx0YNAPwVmmQ+9Ilf068ACFMp1qnAjqjxl8JiMF5HnG2qt2fYGjiFfgrvcDui6Dp61ld9POO7BA6QNEgxtZ8GPhuXVLqXexwIwlpTmcOUtDDYMNUdsi5SApb1V6RLCz+1awrq6kId6bNBi53FsDVkfPsmtK5xgDms2+xH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abtoNGnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abtoNGnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC78C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723507553;
	bh=hvt9qJoRk6TBbS/Lc97iN8635r2SXNmuGb2UIUARjg4=;
	h=To:Subject:From:Date:From;
	b=abtoNGndabvmEhhNvi6zmmcMDpRkNspZwanvIqoyoNKObIhPHfyyIDa8qoHjFy6k/
	 jsB/IJXGtwwhV0L1+ysI4VDVMOv14EIGSyOlfTJNz1BHMKLEt8bblsQwuQGse9HtJO
	 MTOPu8YGAFaAUDmc5Sx8a4TuhbKhuav0OTJF+0SMu1g5RPB0n5kTQWr8lauAB7M1U8
	 jLGgxU61GnpAhkQ0mBHqv3Nu1ovpV6L19MrDPIO+S0iMjrhjjvBiE3tYZPoVNKuGhS
	 QffvWhnNlfuN/VWieJxmgmWWV+IlvsvZtv65UlEkg3xpuhAACbDOndigymxJ0kgY39
	 rKUkx/NdRXjww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9914FC3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172350755358.6446.5758908078559204582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed5f65a5a84f709904a5989e65177446be4dae49443eb831837d8abe8958bee
Date: Tue, 13 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723507553
