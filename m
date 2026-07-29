Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691F44028F5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785313234; cv=none; b=IYTOgwJX/lB+VEBmztUYe1aNRLdPS+qJuvIk4OId53biDIfmd6S1Ojow2tHGryYGRUTDLEtcOlr4TdhOeZI0oCJhnwya6tpSuTUECTsW4AGaRUo/69AdOPhE8LZCHxppRGBO0jJRz6tnwTubY0CTWdYaedHFA4+lnTIscf5KMTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785313234; c=relaxed/simple;
	bh=Qzzt9ZMyoFSebdHDIo43LIv3XwpEu7z51pI0itmDJ8M=;
	h=To:Subject:From:Message-Id:Date; b=qUiQrpvUchMmuSniZyJx8Eb6lMH2tJ83AjywU6P0HCL5kbjnK/AloXcGgIaCprBl5pm7ku4hMbiKMNkqj7hK2BCunbtsBNppPoxy9bqtOdgpvmPhi9lcCElz+4d5fDQv1TT8kJooyec6gg1y9QhjclBtVe21fxRfeI8VYiCP0UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzDzXJBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzDzXJBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9DFC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785313233;
	bh=Qzzt9ZMyoFSebdHDIo43LIv3XwpEu7z51pI0itmDJ8M=;
	h=To:Subject:From:Date:From;
	b=GzDzXJBFrosvfp6kvEfgGCqwVri9IdUAoXOiGaIzLLE1Mww70rae4EnIUJfcQDSuN
	 Hp7iXwtcKAnwfrT9lpJIjjJH9ZvtRbU1Kq9dCDSFe7uAmqo6SsCWTkgGf0ebxSbG7B
	 yF7NO1awbdt9rrtjUxOfJ1kR3D1RD6jf/AcWFcbXqLwHqKJ/4M4y/vhm1ta31CiDDT
	 Tm+mj9iD43DFOEn1X3T0/iRhiN1rayHq1yboo5Xsr3VbXRhtjSEyZ1cjMM39Sfwyz4
	 Ti/f3nE36uoDPfkoLZQ6zsmKYIxls8J/93F7gneraiAjlpf3YVU8wo7zKnjxsLpFsl
	 uTF+yjtcnt4sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CC9C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531323368.32253.17830532854530322555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ae5244fae9debc33ee0b02d65c46e80968c5f88245ce6c810a65b155c20cb0
Date: Wed, 29 Jul 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785313233
