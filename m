Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2973925B08D
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791628234; cv=none; b=CZ1sdC4UgYgX2nT53P8jjCXmZ6uY15oXHLdLIwYC0eOzV41X4p2Mg2bTRzdyD+NUh7vws8uticCh5V9O8f9qfSAj6ifAV+5xTzZMKMJBSLuC56OpaU4uSLtIF20Mc/2LtH0YM7vf5OQnTtn5ZUJVZ0CmpjydhqZk1lIU5vrIHV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791628234; c=relaxed/simple;
	bh=8Me+Zya4Q9H8LR5io457TV1GBN5zwOF8R/L0GMCSkvY=;
	h=To:Subject:From:Message-Id:Date; b=KSJoPELIEgTn4yfakT3ecac9Y0WfmXNWkbO4Bn3p3H7YKNg3AFMv5s8XGFwTA6mcAyKmH9mCINZYoQ4Lm94cyhKEVIxpq2D70ehS0JEXGn+KEFPV97wcLgGMh40QvRwy+HbZMq4F8F0TocuKxo5a6r63l+XwYXpZz1TZL5m4Aes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbvCUsyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbvCUsyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE8AC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791628233;
	bh=8Me+Zya4Q9H8LR5io457TV1GBN5zwOF8R/L0GMCSkvY=;
	h=To:Subject:From:Date:From;
	b=YbvCUsyFFfFvOpSGjxfoPqhH5GzObzhiIadgl8u+V7rvXZC3yml7gNdDqW8T83w+o
	 FTxCnDk8apUad8Q7nAOA354CnykwHJACIM4rneKXuQrLDmTxSEArzWbOgN1Zb9rW3g
	 bcE84wUMziIKuzZAGDYhP01sgylmXpJsPgHUKYcqa26VzNKpsLvIRqlSM5i4IFCuKp
	 hLNq7rFXxl9HBCD/ajp8tjher/aEqfCYZ7D/r2ijmZdJuihWU7qWkvLz+6VE8qKesz
	 o+5DkYdUyYPa2kMj5+xhTxUVNPU+USwbUGeIrgInNcg9qFrsCXxFXRxr4uTVMmpFzb
	 wCN+ad1xC/AsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36FCA9EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162823368.31713.6062448522811646543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed553eca07dc1b7ac256d0207dc8d33621eee81ce3ede84f556bc3908b6335bc
Date: Sat, 10 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791628233
