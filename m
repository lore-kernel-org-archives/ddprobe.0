Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688D521D591
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785726634; cv=none; b=cd2WwX+Dn35U0sg8llp1l+C8g3dJwMNBGvwKvVfpPrtQj2LVvE4QUqFFzstMTIlKBOdzZrl0NxsGkUIcriloG8nTVK9noO5Qkaa5Q6Ud40A/adgcpt45FUIYH1Bcys8LFhmwsXRQQkERIhQ1YdMncxIbFPupAbl8Ki6gPjvAfhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785726634; c=relaxed/simple;
	bh=LFu36FxTBrgzFyI8xXWVI8gVMCpwxGLOTCg9Z54HDGQ=;
	h=To:Subject:From:Message-Id:Date; b=JgZzMgMeVIQFz7+W160pM3o3fDI41cNlD9G9M1Vb7PtMxMUnX/uUHWn6gkmVuOHsCHC+9M1A/cfmkHGD6gZV4Lknpk/rY2oRhpsAGnrmglAoFECr2O4TLklGexX2MPKCk7tz6W12UUIQ/vbIeZBwNh9n+J8Y2nf4JSqsm4HL784=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FabXiDqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FabXiDqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23B0C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785726633;
	bh=LFu36FxTBrgzFyI8xXWVI8gVMCpwxGLOTCg9Z54HDGQ=;
	h=To:Subject:From:Date:From;
	b=FabXiDqh7AHnANv0PTeys+US1L9GHEMHVMUzAiRsIAvPTXVZVqgeW0jjlKBfVHLeE
	 l7QFftWP0/JIqo7zwPsidO7IYwOL2+HCyu9fGe0XAM9YqEnXmOt8rkkeQjrNHCHG0C
	 qGVPZlDiYCe80CmD35FnmK2vQU3XFv4ujwAgG4thip1ocT02hA99JaaKBaOOvSmDyf
	 QT6wbMTEBGj3pbEJkWpVBtoCCEl/jBxnWakpnfOOSYfnZg/lZ5z0g5d6dQCY6kxFbV
	 MUb5d5fDJpy+T/LHITAfASMqkXoj9Qf+0qlV4ZgVX6KC/W+wbtzBuuYaHbMTpAkR2L
	 jOyUBA6Fx9JAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC234C55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572663375.17688.16349356441334586838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57b60979131c6d41e75f5a98662d1fe7bb8633262418fe4c6b70d9a86a9d029
Date: Mon, 03 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785726633
