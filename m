Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B41620D4E9
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787460634; cv=none; b=DxdseJuipDWOI/CFGjsvZcGAY4Cb5O7WkXGDUI971wdLgXjx4FkUoMVeUsPQyo1xvbhznhro97VkDkEL6tgU1okJJJVHo7lPvllHvBFmV63IsTZwD7jssJHux6ORkS56fIiX6cypyXAY+ctOAvkwjLyWTojxiBL69DIFb2rVgBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787460634; c=relaxed/simple;
	bh=vs3axgggmB77RJf/qCtltfkvByajNHhsESgWg681Jl4=;
	h=To:Subject:From:Message-Id:Date; b=btxDwUjZGBBwDQ2h4NSLB8Eck3EnKkRAfO2+8VuBaxxBOgXQSASPSmJgB12Qh9zz819D+7/MO7TrUW5rV9tFnvIwsOOFg9AAX4NiilAcbU6Xgfo6qmpLUCEeuKq05KvYt082/w22hmmn36M+oCdgQQem+n4qdNv/1v3veKBcT/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUsMNHiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUsMNHiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC469C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787460633;
	bh=vs3axgggmB77RJf/qCtltfkvByajNHhsESgWg681Jl4=;
	h=To:Subject:From:Date:From;
	b=BUsMNHiGd5O8ysrGsKMVFPmPMnbVTQV+ftS6JzogM+3ynOv63enhJtqhHSzQoNdYp
	 BmkSyrb8Yhom3lf2Z4+yUtwP680gwHTi1a2Ea1jQ9Fa5e8vlIU8HeZ4jqAqxZZFLLk
	 NJwGuGMM4I3rE43tIU2BJMqz3qRXEqDzJTHTUfcYSiUXS+/HJPp3Q5ZWnteNOzb9Nv
	 Lc08jLqmtGfE7jd8Vz/5x9QW0x9hnZj8FbEoEDshwscoC6ip2HsLlD0e8W3Bp60L0E
	 jYwjBEJun5CoeCsXgKXreXnkQQdwH5RhrAbp/mSeNN82FRYCxBgEEVPVgdUh9Qdehx
	 38fGzX+qzbWOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EEFC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746063370.6300.5260984591286659523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac1caadb253274f52ee99b074666bf500882dba7527ee059afcb567d4b1c510
Date: Sun, 23 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787460633
