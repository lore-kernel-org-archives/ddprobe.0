Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F84923BD1D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781313994; cv=none; b=pV3lLFQxqYJUPCBmP31AioGMOS0OY1LBJh392ErPPShzl66dYgezkmqCeui5UBw6sAMY3LBWeIZjzGFqAbaolbF7TYzvL0lufJ20fSWmpBtQkMD30uuddeknvW0hjzgOfMLWuieV7tn0VxM8DTBs1mWeBbDxdeimHJ/bgrRifRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781313994; c=relaxed/simple;
	bh=GAib9WzYBpE9CPXnun21kdJL2gDDDpF3565W/jV58zA=;
	h=To:Subject:From:Message-Id:Date; b=g7Rzc1EOFejHvwewPJamvJhjh914Mh0dcjPLvCISQwOc3Q9oYSdeLUaVqmR+yXdfp1O8YZotHuilp/QIPnEmjia8RQ0D+kD6k7ukOqiNKsS5A+g3McLDmemDbnLKokcY0oQY4HQgYL+WFj218HqkxAMVVZ2RYfEbL2GgvIw8k8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4Jmnrj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4Jmnrj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE335C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781313993;
	bh=GAib9WzYBpE9CPXnun21kdJL2gDDDpF3565W/jV58zA=;
	h=To:Subject:From:Date:From;
	b=N4Jmnrj4ldBBF76COkNiL7lEmG9mOqVoyfNI3NYus50mG9JqLdoAJac9wSo5A2GVt
	 x6i+olJ5pSoRQkTbcRRAlsxOVMxOMeqUJoBKKcDnb6HbSz7syFGv9NSn/6xIf4rr2E
	 UL7yGoGP0YGwa1XDV7WdYfLNk2ZRYVG5BBTwezt6S45WdN807nkepEKZ1PG6tHE/h1
	 VwrmTnJCBwbFX1Bywj5PSTLCGtysl7OUI/Mu+stpXdIm7+Rc9g9emY8ZsU3hBG5dWo
	 Z89MFFiEkqVtagY99wNhm9R8eQgIbj56ClImBFlHoHd9xcT/EapPLNmoa/o2RziCV9
	 /EZs915huS3fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F75CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131399367.8805.9040138170045571222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260f57a3004f588ee0683b9a2ec2774763d263dfc6fd9c522d2e486aa8f015ed
Date: Sat, 13 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781313993
