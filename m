Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4E11DDCE
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720370183; cv=none; b=qL70Um5PoOJ04SnwU9HRuWPJU7AJs9zz0UEH4T52/3KkIWBkha2IbhP1WGmbTfRFC2BmLDxOlWA54m4fvKkqIawRd/lv8N0v50qW3NIT18+v7iy9Jx1SztmlG3/znJD9fdirZwYUM+BMR16LxB42daGMYCzmRuZJojcV2Iq+7Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720370183; c=relaxed/simple;
	bh=T37GLvMK9rM8xHhffBfvmeN/v2QMM/GHLGI8sQlLndQ=;
	h=To:Subject:From:Message-Id:Date; b=T3JGiaHUnt3W9u62R6EuY1UZeXWjK1r1zlLdAJiyAq0ssXvk4Bxm+mFzTts7Mc/3YcEkinbgZh3kHzmYQkYkGMv9IHoh0bH5v0ym+YTtxbpUdgJMKvJWUdykS6SR/jE6jITr3UY7yAGB89bASzGVtAqaEyEPIsRlLWck4zAPRxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMPcUQZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMPcUQZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF448C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720370182;
	bh=T37GLvMK9rM8xHhffBfvmeN/v2QMM/GHLGI8sQlLndQ=;
	h=To:Subject:From:Date:From;
	b=CMPcUQZAh6+oVhRsNFO2MmkTwn//mDtKIUNSULHlN9qJNbm3BsgseQtc1c/+j2993
	 CBqfUMa3gzqf2eOW0U2LsxppIlzYJzYXiX2UhAJSlkXEsVnSTxbpP3/DWrjMyxQeJY
	 R4QIkiYCW4DWu6/q8CGhebC+GInhtYynuk5WbpPo6rqE05HrIMR7bWsgBya2r/orXE
	 7PBgixGJUE0FdQ/Or1eg/NfpMHG2ZBbRvHsOBsxQIIQDL527yKSG3xx08C7vyC9Xow
	 449fzO5touwIAsel4+3YTozGSRa2Ub5MabTteGUYZ40OoBQ5q8fj+uDrcXVDQw/B0x
	 1vEaUR65OLMfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19ECC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037018277.16948.9184459172871358012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22eb5eb15256ade903c165005f5bf70e1951c4d2f9bacb6cc6b04f04b33f34c
Date: Sun, 07 Jul 2024 16:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720370182
