Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E8B221FD0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762543794; cv=none; b=qVV6bRigYfHsbFM99nyTY2sY1zr+e3FCIAvJujEUdoM+g3zu8b7fpOuAM1VdAkRuarMR+v2qAFoayfIBKhn4qWilWzV+tGceh2st9HignudNKYwfoFQCSF6+0xqsZgs07J6uOnukcgq1IJNSwWrOfa9GkRt7AcVOfqODsLJxo/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762543794; c=relaxed/simple;
	bh=GhfuwLR5uo2yI+KyagaYByTF/9o5TgHDdlk8msNE/G4=;
	h=To:Subject:From:Message-Id:Date; b=eRBrPeeLm1PdstVu51bsKz/pg2qaSx27lwcswG/AeY9sBQXD/HlDUtWNPglN1tpW71pHv4SLcldEmu4SreQ1IdL7hFtKLeZ3F2m/pEFUdcrJmQZLLifQLd3KF4GfRjsWL7t0dBNCd6hIzBOAewB8YRPEB7BP+sUcxxEBdMujJxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVcu5mhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVcu5mhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA4C19422
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762543793;
	bh=GhfuwLR5uo2yI+KyagaYByTF/9o5TgHDdlk8msNE/G4=;
	h=To:Subject:From:Date:From;
	b=EVcu5mhjeGaDu/3JfGWWKwCNd4wd9gb/dWy6QHxS1XuLkP2vTVCDECqQxDx/w29T9
	 f3Vr+4Ifluu3piWAOyZ5cqnq+7BLDTd9KaMx03euXfTESMGC93mXQcT+epoLLzpKIM
	 UnQbuTDe7Vu5x7rmg+l5koHB9zh6EHvOTzojA4zb2wu9p2fBH4OlUeSwTM5EPZFdZG
	 IbyHmVVnE5YS3QrVtJuknrGcJ25lynCMB89PsiLJKLYPsmxtBgwWQXV9SqTUrWxTNp
	 c1fbzZ0owb+Fn/mia2u0bNPVa+sDIjjbrBBrU7ethS5IcqKHvQUTNuXQSiy2iDHMTm
	 ST+zrGuprMRPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95135CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254379360.2533.11970664084829112955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9414d482ae83a3aab8c623191bad9d37416ecbc14fddc1a157cd145df3ce7d9e
Date: Fri, 07 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762543793
