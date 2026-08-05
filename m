Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339A246EF6A
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785946834; cv=none; b=l+7lw7H3Rc999PxO5rT31dqtlmyCDqg69/z4fWY7duwbqOuXNJ7MInmOJAfbclgRNE44z2l38AdcSYfj1R8weM9qUA2SsrhoSesnx1eaRk4CiDQlhJMQ/vg6d4s/qIhhLyErnuGa28OAqzbXoriEd/ol6rdgp7jkbhR5z9RtAco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785946834; c=relaxed/simple;
	bh=tCiOSQkVuHJlxUrO/cGcnT2QSQ/qTrdXMaN+590dNU4=;
	h=To:Subject:From:Message-Id:Date; b=ZdBLykELzkFVOp12Kth40iybisFyuuBboGJetwS+mkbyRmhoCk6rnwArYC/LGVO0ZtbyWe1K+HGB9ceLMoyxZc80YCcs31LFDiqHqW1JLKTL9NmAnUDYU4oTllHFUILh3rq5H2ijZw2X1s8cdr7IOkonepFYI64jW3i3ly5dKaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnHk4oVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnHk4oVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF093C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785946833;
	bh=tCiOSQkVuHJlxUrO/cGcnT2QSQ/qTrdXMaN+590dNU4=;
	h=To:Subject:From:Date:From;
	b=GnHk4oVbAZFRXzQtUOufa4HS/qjZ0ZKvgY4ce9/m6uAX1jlkBSsB+/6ofbo+Ju0jw
	 JIbu9ODdbxGAxsqGEPMpgTzbEJkSmCPAuSjkH+nfxHGxdDByYZfoSqyeMJJR9Z5EfM
	 ZeuPG7m0HhBn2/e82yY9lAmKhxeYFzhUFcZEEg3R9xvV1HcLSR+BJq+4bB87VKq1++
	 j2zwCm0Eius/qLs3y9YVn2VFkjW+nJrx2bVJWlKc8KrTupU9wuE72k2ETnZz7O6KKi
	 cz023LKQJ2OEh8fRknLKMrrqTGZSYX4s4Da0VxAFM+jJ5Tqz3rD3Er2btTgShyFLiE
	 7D3m20sNQ1suw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB240C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594683369.12433.4425667759523656608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cefe6ea36799dc9133c7036a2c7cbd204ff380e96a90527583071de35d472c
Date: Wed, 05 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785946833
