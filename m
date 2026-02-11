Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D179221721
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770771234; cv=none; b=Yeyz69+adgsLgToEnuhP7fGSGNIyk0TpiNSB1mjEOJR8TsIADATgBLUHmMh2TZxX9c2ua5df0clmE5navxQOnqOmPHQK1oP1rpZqnrKA7d/BcL6ikLaqBaozlPTAIpDAHzjQYik1yfc9M+Dfw+cAFGDtDkrIgPXk3M9+ab98XC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770771234; c=relaxed/simple;
	bh=ckDf4B+EJIXAPjA/+uYK+NXqHsHB9ReC9Uyg8V4X/lI=;
	h=To:Subject:From:Message-Id:Date; b=GiZg1OHmwc3GVieXGFmCEKEX1zMSL6SHckYsf1Aka6mNkV2vUxGpSj5L1SZ7Oszev7KiHB/YlD6+MbhtRljxpj9TGEXhO5ugT5/IwvuYxE5QyLDz74fgiovYMDw/UFTrTfYAt903usXn2nGFS9n/yOLcXVDTudhcOLP9sCAXBkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hz3XH1b9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hz3XH1b9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7479C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770771233;
	bh=ckDf4B+EJIXAPjA/+uYK+NXqHsHB9ReC9Uyg8V4X/lI=;
	h=To:Subject:From:Date:From;
	b=Hz3XH1b9qY5Sl/fpyvyH/F6tcmJ4U/7Ts1bJcZt1GUnin9nnoqDsuOtrbhizsWYlW
	 U17vfGY+2mLW+lR6jg5VEqIH5miUj0dU3H2vsBtt5F+m8GvGbWv/2RkmpvN0+L3klE
	 60BqCf63OWQqn4hRAjubINU5TseLCgDa6zzDCQ9nx/37FndloNs+BuVG3GH3JKhWNy
	 IpeB6JLQtjXxeFUioPCi2GLIe5+2eiqIz9+CNpOISa18a4fvYg3QBRYQCwC4wY9S0u
	 jnFwnEfplbTatHFykDctKxRSJDUTyzpkT9unsjUM55SdeJuaXkjDter6LEuoqNtia7
	 UkYW720xu8noQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB05EB5946
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077123368.31341.6140970446628101252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa35afea2c04c170215b1e478d893900a5884c69fcb9d149220e54674488499
Date: Wed, 11 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770771233
