Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5305754704D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792127434; cv=none; b=LvUEjWh0WQqJGQ2793M6h7ZvnDk7S+yIVZbc73hin739gKjbOMh+0jXx7NOSEUEMwpQzQFG8hkDJLLe7r6tvtq9V5iDAnPu3NJc0x6YM5xS/9n6nMD/VgseTf2N6xFOmTjFVN6nen8fV5wkbNY1i80p5CPAOg2+bmGU/Xyn+LJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792127434; c=relaxed/simple;
	bh=6kDkZLr5+sGAakY/P2mSiLushBv/kELF1Rdj+s9XY90=;
	h=To:Subject:From:Message-Id:Date; b=ATEezI7lokj8K6cD1WaCjfBSpl3Ld3uMcYM63+bwuIeXmOFHBt1IM0RFXmjDBbJKt5KkG47JiOKD8x8zw6HJuQVUN3LV0i330gzJn9SITJLDcB2PkczNS7572MdAiHJHpL1k7JOVy90xGisd2iQzpb5QnZtm1KKoq4+CyQQQPQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAmVlC9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAmVlC9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD97C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792127433;
	bh=6kDkZLr5+sGAakY/P2mSiLushBv/kELF1Rdj+s9XY90=;
	h=To:Subject:From:Date:From;
	b=hAmVlC9VDLpF8Vvws3MxWR/HJgw3bAUbwvIVwVXp31x7usfCVhFG8lac+HQ0QppCH
	 NVBPZIv0o3YIHKBm4vm5qxL9TTiYuCDtMdcovgd3VLUr0wGO6w33ESCSAdQV+RVveC
	 sFFfUcQvV27KagJwZ2Mupk0okrD1NMlw/WU+25JQdI03FzG7qWrog86mglgO5qyTMD
	 kLONOrjZC/O3BcDUIGlDEKB88i4kZb7hiGuixOpfItFNZBgehRLlAm6cFgrLNkmIHh
	 qyLO7zfwOFgRhLsaf10/I7XqgM/jMQ0flYSWqI+025OHT2NdF8bXlCQSL70woIcTCX
	 bDsPwu2RSVuyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA88ECC6B2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212743368.4302.8308140339310354985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190c9da51d116ff99ffafe17aabaa54ea89462b5f7e41c7a9d1d54e0238f16ed
Date: Fri, 16 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792127433
