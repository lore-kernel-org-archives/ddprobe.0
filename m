Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770C14AEBEE
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791383434; cv=none; b=ZZVe9kOAgoqQaGrPP7Te17EzPkNSU3hG11ToqlDykJldNG8OxjeaELXuOeIycp9nvrsXMeQhjiZx3gvvHe80ZXp+BB70ldXP1x+XiDLzTwnORAtUKH4PfibnrKaMgr5rWKspdw5a0xSMkvEuC8BDSicq7uKKmgsep7xsfCCldxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791383434; c=relaxed/simple;
	bh=o6pRnQlncz3Hf5YbvnNKFGBSBu1nu6FAsQj6IBylHcA=;
	h=To:Subject:From:Message-Id:Date; b=S7c3yS/WAF775TaeYiqZxbT0P04Lhz+U55wXDfaHemeRzH2ySKiM0Fq0YesgLRTV9U8pFNGsXglfmjFgMMn6900cGXVydZoy/knh5nC0TEuZh5uFwb8GHNL3PdrfZE3PMO3akVyF3lwUriPlzPkRxQCiid/x7NHTmTBj4+fdtr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu6ZHtA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu6ZHtA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7200C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791383433;
	bh=o6pRnQlncz3Hf5YbvnNKFGBSBu1nu6FAsQj6IBylHcA=;
	h=To:Subject:From:Date:From;
	b=Mu6ZHtA+ARHYIVHXLZX2B7grbYYWUTSH8UdJAstyvpXCRtULk3ncFiJqZ8uYzRfOZ
	 xBsvAEpZmKZ73ihXVCiyc8q3fZhglwH8Kwst01T1G/4G9ZgCa++n2I4YuecpVGFqbn
	 mweAucFERxWf2XkwH8mAm4y1fQbMKsT/VYCvZoM2s8ijjPH7PegO6jn698hTOVJxEY
	 tERsaQ74By5EZkrw5NMQairqqy9fJSO+8KOJIhNZVrHsNRh6jtMrR9kpCDOBdQz41v
	 fcR3tIccSH/XmJhvSyiYLbYR4C/zz8c3YSx4s5oxRMxNu0SBSukciLbnjnzSUeP4hb
	 dY56RqwTTG8Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD193CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138343369.9797.416680748597858450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4e387f7e69b6e6486536f402fceb50eb682e3d9370a9f686f103f72fab086c
Date: Wed, 07 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791383433
