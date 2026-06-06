Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5663F26B2AD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780720474; cv=none; b=pvzRkpRoZTYUhH9Casarsc3YO3eA3b5fIXjW8KagbCa806AzUkZmyiINeAEkRqWv/q4p7eDNzlBw0mnybWG6QF+xeqniFKStb1dC0vtnoQVGz5QLO70RIVhtiqu+NMmEb7wm9nbQs/5+0sISckg/8kvIzmElXaRjwyQ5lltRdXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780720474; c=relaxed/simple;
	bh=lht3z/EjfTurkkAu+hC8PljDnbUghuILk6KXNYviiFY=;
	h=To:Subject:From:Message-Id:Date; b=E5WR2NtPR0QUGq0xn0vlOaUsltttmf1e7b1TuVKAQM3WMVgH18vm91JtC7u2mVR/52QHs+OGyZIXY4eH7E5CE8+SHLgkdpug+Qo52O+Atd4y20g3lwP9mXA3eaYgdfymkul6YUZ9sH9TWjJp1tx84LHp038+O9zR8DJZHnLc+7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOndlr/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOndlr/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BC4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780720473;
	bh=lht3z/EjfTurkkAu+hC8PljDnbUghuILk6KXNYviiFY=;
	h=To:Subject:From:Date:From;
	b=tOndlr/kwzS4/1yIfJanclxjKnJh03kLZSPixmBERO9RZXKPgMDv961qrMb/pUdHA
	 LlVWFXXsMsa4OMDiqhwcIW23ivKJxRdM/0anviyH7NKXnaSx+yWauZUP7Bwe2Wiq9L
	 5mHiICJ2mAV7MgqyCDtdX41UxcF/uxjv4BPvIuLfmg7mRRnqzp/qRJtqyD7Ggy3lZh
	 9OfGYkPcAsE2bRkslLhuJMhV4SiPpZ3bPP6E2mzWSHNizrFD07sSsWGwfG7efuK+SK
	 YlhHpkmFVV4vxL3RpToDacCszexr1Je4DhCvGu1Ks1d+XxNYApVOVaC6jvACXd2EIo
	 dzBCgBFki+0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE21FCD6E55
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072047368.6945.17940578927177463478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190fad3d6423b1922be38bcb65d292af242035f79b65880488bb2578be0d8bdc
Date: Sat, 06 Jun 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780720473
