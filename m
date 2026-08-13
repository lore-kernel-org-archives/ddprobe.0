Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5842D0C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786593634; cv=none; b=ntiTqQBLE0c4PWyZpbUrYFipgHy7rh9M6SqgsP5+z/4CofJKjFJNQzgEo8nzdbx2W0AoE1upTbrWltltl4pABxx7pj8moWripqmdLMGRmQ2j8m6lFn9WjjgOePsrsqp40OPpp5rSi87U757sPC/p6lqSjEaLh3c5QeGMognO0SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786593634; c=relaxed/simple;
	bh=aXFJBAifW/jawxwcn06d4kJEi2MBT9XkdcrMznHIHH4=;
	h=To:Subject:From:Message-Id:Date; b=F8O8F+mXTd8gN3/aN3d0F+zwL2CIiL/Qk6TSotjR179Sk14eRTg+IWYEnE6u2DW013eWZ3EqHpKivNZyRfc9uFu/9Y+qVsE9WGU/2R0ExCclRNVzow7RxjgwGauqq98UWMY7PXGHfzkmsAGnjs6qHBKIYzuJNA9eo9Vfe0+YUUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGWhn9ch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGWhn9ch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF630C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786593633;
	bh=aXFJBAifW/jawxwcn06d4kJEi2MBT9XkdcrMznHIHH4=;
	h=To:Subject:From:Date:From;
	b=fGWhn9chQFhoyhYgtpVaE/3fKryelKFonr6cfdrWu46UOuJYHrTtPi3fG+Pi2g40A
	 R+8PMSdCFylaCaEnBMQuN3awSOxR0tqwUU6y5XRmJqgGx6XjMP5FWckemOdVFkIi30
	 cCc6FOsQBo6scaiS2xIT3Tdg6EqKu2Pn5SWgXE3VD/Z1nGSodtpuoXY+pf3ezNtL/3
	 PnLZsaGhOZDWJtDT0LhMEB1ZO6xC3ft29lYydOhpedWXaTfbEn03ZKLYsax5ZV4Gvj
	 ce6FycF7kFbdwXkmlQcsKdw6oAEUN9QjJr6mrLKQVTwvn/xsBRFkXUAO9ZUg6VXGln
	 QTTuHHD7UBmiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA06C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659363368.17984.7608561748031200046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090c69c5de2db4da36acac13c7cb2795c8660f79e9cd4b2c00fa7db572599fd8
Date: Thu, 13 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786593633
