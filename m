Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C02711720
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713245363; cv=none; b=b59AeeHGEQC8xr9IcxoY7lR/6WtIY6BNR6hlkaYwnpdEGHMhwsFQzDkXEjeBsdHej56yOR8ElHxTghj2xq17ZU6b4yHKICohEMWPLzicCXIu4AMr1VjEz5Dnmqw2WO0RglgWe0RhD6jBNCiDIolK+LbwSc5KlUXYM1RB8RFEAnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713245363; c=relaxed/simple;
	bh=Vel0COVg4c4OjtAyv4/Zl8JUzychys2wMDNTzFtTjBE=;
	h=To:Subject:From:Message-Id:Date; b=dpYPoBe3mG03igNBiIn98g4MQgr/LQPTmoVVJe5rFjorplmKwp5Xoi0VjHHnU9goO0+u6bpPO6cMkhVz1ovDuTe/GVM+yRM2/YZHPqJoMvzGTg5Aa+Qm5zDhr+mXoSp2isWW+xTcg3c424nOd889HCPFBuEA/Sp08C0INJ40/KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/6bZs7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/6bZs7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE5EC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713245362;
	bh=Vel0COVg4c4OjtAyv4/Zl8JUzychys2wMDNTzFtTjBE=;
	h=To:Subject:From:Date:From;
	b=K/6bZs7fuRq7puKxyAtuAJuqW0hkWqSGAGK6P9gOUAQ0DXt9t5JZE3wDFpLH2kDdh
	 LozTuwdXCYEkZzghaKdUfejbydtoRWuodoIYchb38dq65PxHotxomnwnnAparGLis/
	 q+nZb+WszobiG3mDRZqm15xUXbBsU2l4xRfspRkBetc2CYUvBh4Z7fyCT9CTg/r/XG
	 6YFZDEqjBmtwdJclfhhwADzIhKW8Ng/2+bx9zfqr1ZgSz2ANkdksMtsC3Yh1SHHhbk
	 gLScZBT08Q+BQHGFghrSXZ3BZdYXiMcfcjvBW2cqstolZKRA++/Ke6Up2L5kzk9hki
	 diw25z5U/3svw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC040C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171324536276.10667.10426428890663803339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72815f49e430ff8584ff9d412c03863efc3bb72a188794a2a4b7c9148f57da69
Date: Tue, 16 Apr 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713245362
