Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263AD2745E
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779154234; cv=none; b=Qemil3jxwc907mlRYCoXsbvYcxkmX32PapcRCqqBOCxn6Ne3jwuC8HpbTXpZ5pfEubBLVEapWTYoRWv4OQpoIv9zizH5Ljpqw2VcZfVbMRAaSOAt7BkRiES6weStXjb6Ttjn1pIjpf8nLNTC1LqfEyKn/y/mL0NdOrF/g24VHsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779154234; c=relaxed/simple;
	bh=2Sr30h3wWicipLLv0jpFE5id48sLlCpw/PLndZBbyBc=;
	h=To:Subject:From:Message-Id:Date; b=hyUJKFd0kE+RTJ2fwZlXuYt4O2gW8pH3vXAGtRzAjWxZJ00WwA2IKqF1QuGG9RHrw1G9vca5/fW7hJKeFDIU7zbqv+ciQu2CIo5d2Uiq0zE+t4boTCRvGuYfBpwoaYZuajaKORs5JqGDkOWXGeftMW7UNspwoteQKzwevP8+jr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ve2dqJdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ve2dqJdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2432C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779154233;
	bh=2Sr30h3wWicipLLv0jpFE5id48sLlCpw/PLndZBbyBc=;
	h=To:Subject:From:Date:From;
	b=Ve2dqJdN2+YaPMjYq4DQtTuYxvpKKeOdIhUvmN0+1iGiseUXQWr0wIekx50Yu5pIr
	 2SdJN2AdMO1My2VbFF8whzG/uKA2AzkZ8NP8V0/FYHDmdMig2l+udC808TNjYabFlX
	 x8aitxoiD0eSmAYvPYNboNU5FRzHwOim3kaCqrizXbj1N3la6NfNFE7jgtMP3k8JeW
	 2TIBQvmtiC2V+qCDr0XM8WxpQQjkJArYAAwT7ooptApzM421tqAWtiXomDGLC/2MOQ
	 21XnLo372NtfWbjha5Dot3HjASf067sEoiPU2bY4ikkSaNfySoRfoU5NqQdN4P1qeY
	 dj0NODO8zcY+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0671CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915423368.20379.1465596589336783739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f44a08df4f656b4f37f68b902ad9493fa5fbaacedc864579bced0b67e2a24b0
Date: Tue, 19 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779154233
