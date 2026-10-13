Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC414A68B2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791916834; cv=none; b=bWZid7j5/YIgKb5fJVm1I4ldqoDz2a228FFZIBFOAMV8a/Sx5azpCaU06Chu6r1t85KObwkcoJPuipijyoOb4zaSmz71dpZO9uHaKz1ddb7r6Ss3XXpQQtDE2IiDsgWi+0+sSDsd1xkZFIDHnwwFP2gBJBQ0aC6WoqYwtfyn9JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791916834; c=relaxed/simple;
	bh=penKA/Hm0FN5KNdSvl/MnWNXoGtN6dQy3EJ1qP1XGXc=;
	h=To:Subject:From:Message-Id:Date; b=avPkrRjvh8PDprHpuu2ILEoIOd0eC2l3ExS9lrsAm9WeeGRSNSqngfuvaPSuxKMhmzVvmOHQ5ZmNCmPSKLBMKQzmyGnOftKtN91T+5k7YnwFpCpFXiYJGphDr37WnjoXH44sV3R3tmSN4XvW+QiOSkFGUdE6VJAch1ny/MvMhC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exgy7Fah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exgy7Fah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A06C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791916833;
	bh=penKA/Hm0FN5KNdSvl/MnWNXoGtN6dQy3EJ1qP1XGXc=;
	h=To:Subject:From:Date:From;
	b=exgy7FahwXcS2+EzCusLRR6lX07LbbzMzUHeLd50e2mlbnJN8BG2jSWZTuEZtweM0
	 qs3LGIVSb2Uc3/27zjPjwtiPfvlBBxhkWXHn324y72iUOKDyEugFTx9IcjX+/YUEno
	 jgBsFGLhRkEYjsCslZYsJcE2lhKEP2i/8Zt3N4/5mOXea8pja9uGZS9Zj6MVCSzf5n
	 hYYRpAoHraZUopYBxJAZ5H6MELtGBueWI5c/vVtd8kq8w7wRfFy0pUpVvPBgK5c90Z
	 A0lONosqGSkfW5on8zXU7I/W2WGdNpWEq2wpTNzKJkTR1A8JRgKlmDMuNT9kILOlyU
	 hJAommIQfPCaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8C0CC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191683369.31626.11929071130070898782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dddd6fb43589565da243cc71a2d17b685c2de75fbd024f3b9da89d3acbd52305
Date: Tue, 13 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791916833
