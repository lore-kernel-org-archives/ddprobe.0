Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AA0345EC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788639034; cv=none; b=TqEMKtTztb7ATGBh2vyrQrFTVgUvs7mPAuICiAOEO4hfadrWyd3SjSE99O6+bH7QWM5H/CTIVSNDmM5q/6/O1upbhkahB6xT3y+0J4+xwd5jWu/bZWdEV4KUC9jlLbxsiUrYv5gjaJwv4oK8aA7e/J2tVse47ZcF16AhiKJXRX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788639034; c=relaxed/simple;
	bh=VKyMo7Jth38QrMprP5TEcX9wxZYubHXnFrrtMDAJ1so=;
	h=To:Subject:From:Message-Id:Date; b=WCjCoKrW6x/AojkQj2+ge3BavhPvs69aYjqfErKfkS2w5VfIRZFFHXCBifE6ldnI8htlhN59ZLem8/pjPAXGyhSwD430MKvIRmU7VJsqC6EcSgMBkRrVPDZpG15BUIMqpm6SO9Lb3cAjEd0Myy5utHr8HNUuMwsl8QAkBygeQu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7AetIgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7AetIgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC61FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788639033;
	bh=VKyMo7Jth38QrMprP5TEcX9wxZYubHXnFrrtMDAJ1so=;
	h=To:Subject:From:Date:From;
	b=M7AetIgd6t2Dkqf7ngNqT4k62nFEGAreB+sdKR4mXiYWLLPO48/BsYM9+eqAt98EY
	 M929S4vfFOKOwaW7CHANcdrAiUAaNkcHnf74UnmgmJB7HeMnHrJLvESgLhzHGIu/Hd
	 CIGEqonfiS60u+sk8f9835vdn5sylRQtrLtY9HAY9KqEi+XIPQMmq3G2LwDOiPCMkW
	 HiJYaGvsMhsSqnCSCs9X/iJb74ctsiS1RDtbLKclssYMLJeTOkJSYxxbRRtYtY75La
	 iwmLpHUu2iZ6GfRFDfwaJlHX5oDgPgKDyCfCUvny4YLsVcFKct0r9xrEARaIt7io6F
	 fyclLVsqaZlKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF3EC79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863903369.5738.6777339042948457583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99d16a1692e27de13ddfe6b464078b59d5dda01038cb5d3d58a25cb81f03c25
Date: Sat, 05 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788639033
