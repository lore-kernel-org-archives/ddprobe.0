Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B52282F04
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777879654; cv=none; b=kbplpwGzRdNkaztbYGw57rEe5dEOBOXwUwS8e/nJKDPO/G+knDqcbWgUzrg4j3dI3s10EAOrkb6M34+KQRepaiMh4L9j1BWJ0F4gS5H8WP/CFDKNfWyAQ7S1uG/60boDpEfmGN7RU8yO+gX2rcR9TFJQg1YSzO4g3fd97WbD+2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777879654; c=relaxed/simple;
	bh=t0xLpY0VQeCPG+Jg8zbQfQLxCkev1F5dKfa+hFEmv9g=;
	h=To:Subject:From:Message-Id:Date; b=JUe+60f13biVj1kvxKJUsL8mtTkcK25oub/Yqr3wpTlL41NKEiOIh+l/tRpfhrtzZmtBEkPzzi5Lu1jZbSBHoQzs2zoWAWVVfj676DRYaCPJ7V8niHJKz+YAaVG5eRWUMZBegpFAjLZNnsYVBZTR+EdVAmuFYpxq5WSrfY2Eei4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIr4D8UM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIr4D8UM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F6CC2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777879653;
	bh=t0xLpY0VQeCPG+Jg8zbQfQLxCkev1F5dKfa+hFEmv9g=;
	h=To:Subject:From:Date:From;
	b=dIr4D8UMuFRKpE9aZ652tjkUlCRBsacoW5ue/rkythELWJP5YGLxku8Hm0BokV36e
	 3+NsjU4nkvUV0Yi4M7863w82lLqBMrXGio28aPT0suSYgZqaU5jxP1JYC0sJnOE/+N
	 c8cLd0cVmDBxpXdpVWr/DVp54QAu3aeJPjopJ7oIxGl17giZhaJBLVhrPZU03EjwgA
	 iMlaAOrtaaGywL6HiqXUFpxEu8EgTlGLlo9dWNtXIbW+VQqes+itX0shALPD75f3Xj
	 6BbsihAAqRTqweMp8HmhNgO/xs3DDbpMKuikOLYZjSmUadF3GvGeeLIvoxKkqOJr1c
	 BfN+9ieGo1scg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA560FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787965368.28458.11908880425060438375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292f06981f5c75518b44321f4c4355a7febe4ebb9db9910e637aae860eb8197d
Date: Mon, 04 May 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777879653
