Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDED3E49C1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785189034; cv=none; b=QDIsW/m7+Tc70R3gPJu2K3kjPX9BBvE1gkl5oXoZY5S8R9AG3I5g3//LgxYiWEkGrC2l1Jt+BSbZ9n8ZFS71u2n1CkMgiqibO3EyUigEno7mgATH1cbgXSzvoVNZbXi2kcAFtECLikZYfqIbUUTBkx6EGrfL3iwYPa7Q/dlFqjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785189034; c=relaxed/simple;
	bh=/hMzZePhcQXu+hFTUVzFUWjVYwhbWkGIIYcm7Mlh4js=;
	h=To:Subject:From:Message-Id:Date; b=EYa6kgKVTza+9uMvhfIOx8gZJpT1pzTYnLGl1J1B/2vdYD01mSXlibQfwwPvnJWJGdOPT50pL9Jxgs1NM5pxWa9WWDKew48iciMb12LliGpMCMwOuozczThmTy88llwwsEWuDm3MW6k+0i86oFGRdewW2WI3i87RZWLjSJjedfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8Lr2FGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8Lr2FGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC11C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785189033;
	bh=/hMzZePhcQXu+hFTUVzFUWjVYwhbWkGIIYcm7Mlh4js=;
	h=To:Subject:From:Date:From;
	b=e8Lr2FGCKl2B6J0csaW9qnYjoBBCvyr9yAXrJOcTLe0x8SNoHGsM0q0XzPWui8SnP
	 oOEQibQsi8LC2qqCENJvOGcAtxUGxtbyWLH/viIJUFZVLqGDLZcNqjBy1uRIXH7YNB
	 dNYBLZMrbsqXtV66kct9drVoHa29s0H3JenRcLP5afYVCU8IoIrBZi/UYE4W5y/DFA
	 JSr4BAEuvguiOu1GBO+e1BGJu/Nvp4Arf30u8FTWIdkzzLUWhvlJp4wEzxmIDbBzpQ
	 6xB8W09sfJ02E8INxqtxPYiucVO6JIMVrXZn6OZW8otYfp1guUbebXDxvJSyXQFeRw
	 1I2hKSugcbpvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE40C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518903369.10891.3991074497052594273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011b7958205303afd4924a60c5a62f87e48f061d0d65fd6b43cefbbe6f38f19e
Date: Mon, 27 Jul 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785189033
