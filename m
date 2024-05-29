Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F9416078E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716963863; cv=none; b=Q/e2TL0AhU9yI/uk6lkoHHX2boczzZkuYgrQ3tN0cDMP+4vHqy1/lVXNWqZLU6djXW29p/nhjJoP99m3iIh1DJKtrs8sbBz8tLqBDc0k5ApJKN5gMylLHtryKLXlfcIQYQa4/q+7416Y+XBmjI5cXTEq2jZnDKJXQ7u8ZX4IpXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716963863; c=relaxed/simple;
	bh=C69HtbSA5FxMSrEkGuQQs5GjxgEI7A/5BTlnYkCT2FY=;
	h=To:Subject:From:Message-Id:Date; b=OhkrDEz6foqr6IA7NCERQXlshqk6S1E3PEBCMPCx/fXCY0NPY19K89pGo5SO6WAjW59YlrnJ45uzrMxcP+QUbU90uXmvnQsAHpiTHog42MQYxP59Am+q4hZmBKMpQFtIzWGSELAXL5wsQ3TvSgrSIPGAd9CDDZi9cAHno9k/VD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDlQVbSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDlQVbSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5908C4AF0A
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716963862;
	bh=C69HtbSA5FxMSrEkGuQQs5GjxgEI7A/5BTlnYkCT2FY=;
	h=To:Subject:From:Date:From;
	b=dDlQVbSPEjZ1ax7l1aHtfPARS+CrkeYELHHicw2HTNjEqV1ZWdChnepH5B62m836e
	 wO1dWa5pLnN2v1wJzEZALJWbiCMcBBHTsUgzou9ALdQYdEcFQ+2R6MZZ1LhZxg2zx6
	 bBGCbvkSbtBuYN+dHyi2ck6xUJP1Kq81ILM24eifBlA4MK8RYi68RB50g2P5hLVnsr
	 LBSw1FzUjAZbMQmKxu8bCnBKkzsa8ABs40WU5HCAs6LhUju7KfEUHCIkcZefMcXvNg
	 ZdDfJpjEMMsMAaHQag9F1Qalw1k9kgNpZoln76P0urDtk4wykQcv5HsaC3yyWjQie0
	 8uJf9NzjmFT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF7EBC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696386281.6405.8546903851932241168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6d9151c2fa15850026bf40be5c83884ed2123aee53a30a68e86e04d4458e7d
Date: Wed, 29 May 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716963862
