Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7ED1D5147
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741813134; cv=none; b=ccblindhzRLWx0cWSvHMJ6fpy8/uxgzxVgKusXr0koB9gvzgKIqtJvdLvzsEpNr1bEc2dicH4qr6FSLkYKSTCK8aE5xtnh6SdVm7mQf1M9Nhff8us/3KQFAilKYC/LsAQ4p35mpw2WGJzvosaoz50NFf0GGMctAgUbZffz/15zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741813134; c=relaxed/simple;
	bh=NdjnXHQMpqt6toyoPe/uGDt/1G5iHrbgnm4qj591OnA=;
	h=To:Subject:From:Message-Id:Date; b=BeA4H9jrhOvZENMYHw1ZIWIjSzl2pAkHs9EnoxTfxHOfnVEzq5XSesS0PFl6CUgIHA8fSVAD3BhlBmE2LykHJpuaObwqomI3Z6o0fDkuaLraFtox3xxnkBZwB0t8S+uaz4yOEqxPrW+UwqrTA55/lbT2bCSK24RZv8xyBBFVl4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/snCLXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/snCLXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5127C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741813133;
	bh=NdjnXHQMpqt6toyoPe/uGDt/1G5iHrbgnm4qj591OnA=;
	h=To:Subject:From:Date:From;
	b=h/snCLXEbxEmMpXh9RKpJ9xl2am5JQOogc1J3EDDo2HWVHp+DnsiJIHvyxIxj3L1w
	 2oL7ZUdv1N/Nz8aS1Q+kf8uupkoN8sLTpjDFUHv4pTGm00UnqdefeaBF8bmhKpAgmJ
	 OtH30ec+9RDjHpQBrMvVm6CfhOp8ssR3Toj6u/1qDknHHWkEUebwOM/r9aq0NnHsfx
	 2wdJ4q/VSUKUSQuvwl8CtipLnWZU4F3mpTpuOIF8PumdRtYV9dkQoksIVDl44C7iXF
	 BfQb1Ivx9gOhsrQK4zd72qX/NRTDrRO9mEngIxQ/nxwRh1+fJXEJVScx6yNIbYgzp/
	 3g6r3lDqvoNdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F43C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181313362.16806.16858694994093939536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d849e865180a0df16b38b81cb05995f56b962b7517f19cd965876c21cdfbeacf
Date: Wed, 12 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741813133
