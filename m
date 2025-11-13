Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA1E2DE6FB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763030394; cv=none; b=fov7ecHWY8v2Ook/Wno8XQ+/uqkS/wU5ZhTK4ZacoJCdvPLZTdHxNkGbEsMgjmQNs+Zm7ys3xQu+Hu9B48shunhso73O5cypiiHQfe5PRbLI2bWloQHTs2L6LUUl0KWsKi20ZuNyNlnhFw4Zmp9nPnw5xaaibo7Qo6SWOF3+KyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763030394; c=relaxed/simple;
	bh=jkwrDf0Bqi34CF4voUImIBAtrH155wH7VdTuGwtWvD8=;
	h=To:Subject:From:Message-Id:Date; b=F8h94k2yzB9VuE3eGuKOF9MHHhuzbO4jkBfPYkMLhxaxlr2+inqCnjSD21Y3AGugEkGlfVqCeBrHOuv6MOaixXkRXEnPXiFLQ1eOimdsP0ZM+Lxc6YGFDuml9tdYFxQpzolzBgl5i3IaEiB9PnkGjpSmqOf66dM5D5VpTnFOFT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6nJzswJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6nJzswJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518FC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763030393;
	bh=jkwrDf0Bqi34CF4voUImIBAtrH155wH7VdTuGwtWvD8=;
	h=To:Subject:From:Date:From;
	b=G6nJzswJjxdwq/OS1YALsqHTs4lvlUV/29g9Nj5H6x2b5hbagsSPJ3YGAFy0MJNIS
	 RgYXMngLCEyf+0o6xSX0dzgelGIoYL/nTf8J0eBxKDhHKrNeavvtQbQkF6eoH+SPWQ
	 XAtIZx+pQ8xpoAWijtFJ62fzQZRiLEBGKvc9604cBZFLJyvl3DINoumh6UE6ia97fz
	 lLzvuoBv9v78bDHk27hdOy4pRbVWa/qF0lt3vRpu2Gdzrq7S7R0OUPeEfqFfWoTTRl
	 dKN5TVHI00NaOm4UGR7Lc3NQA7PTjTLZmNE21pNN7HVhEqgG/Hq8+Wxcia3Jc1G0Ih
	 UTLvSMG/RiUvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973EFCD5BC0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303039360.15061.12661530728572882899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894995ee8adad226b07853a1e1ba787cff76ad9666b02fe8f739eccdaa021e18
Date: Thu, 13 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763030393
