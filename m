Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7223FE7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758333594; cv=none; b=SdSpr2DGSj8vkjBtZgVpRmiu9xfieyvAdiLp0Zc/rwB4BmdJMt1GPGedMgF1JJK9mHK3r3JMqgjU1oHotohyv46SIgXh370KDj29vEarEuuL30r0Q3iWVUESOp6isg2PK7UnkGSKHfbhupB4eogvGjbu113vRqPgVjdrBV/1+TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758333594; c=relaxed/simple;
	bh=+tL0gXUCX2YkqhUZczvHpAUXzLgDuSivauJ/ilhXsOQ=;
	h=To:Subject:From:Message-Id:Date; b=cYdmpuEMKAJThZR2xeUwTuSGHZEhwYsxgg1XdAJu0VtuHujb16YpmkwvsJEz51b+bW14PWXZI1kov/0AJwY4G3FdOHwzs+exC3YgRxe6Gbghjnfr2eu1iLNssOkCJUrgYcUfzvrW1kbJFNuFNCvtNQ+fMi3oiHbRLVEp4rIs++M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSWQ2KXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSWQ2KXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D79C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758333593;
	bh=+tL0gXUCX2YkqhUZczvHpAUXzLgDuSivauJ/ilhXsOQ=;
	h=To:Subject:From:Date:From;
	b=ZSWQ2KXHagGxt3E6A9cwnEldl0x3Nw0osoyDWycn97t8NiPn+77B+3IJrsoMScTF1
	 RPKY531YJVWQ+M1mo/OhN6KzxcsVZEg1bK+XIj6lin7gK8EPgdjTJfAHNtY8CLgHwU
	 UvUrGoZ/yxaf4c6/NAuLDvVtupK6gqVKf6iOlcoDgc/X4ct5XHaE9dgP4Y7UUTpwte
	 yjd1vAH/PxnFMKM3g0mpBxCU5pNYoox4T/Iv5ZGZ73VRNai47z88G1MEfiqdyaS2HT
	 N6Fukidhk1ZJhN/hAZZy6yFn3G1Cwi9WHYhtNEqyR6Nyvxu62K5PUmgFIvmc6pwjYR
	 QnlAh/vBOg1uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9257BCAC592
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833359357.861.16322285413900352571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff34cd5cc0b1f869973b2156f61b088cdb2614eb22d3e80f65494c8d3bd880ca
Date: Sat, 20 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758333593
