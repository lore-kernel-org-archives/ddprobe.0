Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66EB313AA2D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782539314; cv=none; b=c80pa8/wZXFW6VA6O/vSdZVe9fzCeLFlLtM+lBNn0faI42pMIzVWj6KvcHaTim+zfuouO2n9fZoio7HjiBNgIu93NfRQP7/Y6uMcR1SKMBaFIGnmCw5WUQcc4vSuqFTgRVWtWLVo50Nkor3S4ClKbxR4K29KVvjIu3MV2ma6G0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782539314; c=relaxed/simple;
	bh=PLvpwSWD2cSrg+7AWrftEJQ1wGupZnFK1pW4st+2s1s=;
	h=To:Subject:From:Message-Id:Date; b=ROKp6M4Kww/WQUbceFzucy4POuHyxytVMkSY99l9sh0qUM991e5tuQyKLznmeS1k/7rnuJwxa4wPU/E6UZhtvrRhbq1bzSUloVxc6WrRp6i+2zDg8pT+2l853n4OyFEMyjAeUbx3EY6FrzHx2fYiI8h8zxp8teNmJnJDfsdGFVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFLJma5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFLJma5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1640C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782539313;
	bh=PLvpwSWD2cSrg+7AWrftEJQ1wGupZnFK1pW4st+2s1s=;
	h=To:Subject:From:Date:From;
	b=JFLJma5Loojr05NbG1KZeGlCf2gYtNc/JRoN8MeGxgqETUr6xGj+a7mNfjL42nTdU
	 4xo8LAgBxLzGfsvzNAyeMETVvw9uStp6yy2KohlDYXUnjruTxSrdSHEoY2vBx9+9et
	 w2FvB7lZFdClHssgTV3r7pFHYqr/fweN3MMyM7M5tNtkjFTYYPR8ipiGDkoAsQKnr9
	 k9ONwGa0GXmyiXxYOfVAgftSSWzKgLe+Oja1BrqRl9L5f/pQuCWKvF9dMGN+QhL0G4
	 DOAcEuzKm0cX0H5AoTB80qzndaSeGt+vKMBYuHHe5NNwtIyNJ/WmVCuBZ67aAryurM
	 M2BnrOcf0UtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E68C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253931369.20724.517432172968300123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae7054cbb98761fd36f41f9200258ae280786cd0caacd3324429f52e3c370f4
Date: Sat, 27 Jun 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782539313
