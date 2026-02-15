Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B8E30B51B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771195494; cv=none; b=bvIyRQQqzYVK41aKVT0NA2dqZ9FT7LiflUPeX8tG0paW8sRowoWknMxkHrP3g3F3Blx0q9ZSrmCGa5Pfz+/SMAdLXQ3Bkx9n8xlzX8OBcMhnLg/xpoNzAd78FnMET5A0NgYNoloUaDqUC2Xo8/3namwVkw3NXNaPgS1/2CeDQaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771195494; c=relaxed/simple;
	bh=TpRl+EMD1Mfan9E9W41EhyyyZsgtbVWFKgG9JfgQMUc=;
	h=To:Subject:From:Message-Id:Date; b=pLoYo1VKG8SZ4hj9lO4hNfMTLKIghWbw5FedTBu/SDoLE/HQCds240FJu9jEIyNN7IAD+VQidfSDn0nD31hjSbJ2NKyJ2/A5beauId645GL5ESc2JcznHiJA3GFuasd2h1Mvqh/fQT213xPUV6GYTcUgq189Ze4EzNiVNfb6WIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7q3oXlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7q3oXlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0ECC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771195493;
	bh=TpRl+EMD1Mfan9E9W41EhyyyZsgtbVWFKgG9JfgQMUc=;
	h=To:Subject:From:Date:From;
	b=l7q3oXlcwyjKhdX2TRKiYhwNC8SJSr0mloHeuKYlaUj6Ebk7VKab2+ogOWybq1WYk
	 21nYXcQUPpdZ5NeGIzTSKO1tjhHptylzA8uF+pNdQx5xkOVkQETJvl3xrSubu97PNf
	 i/TsjGHXgIWTbK0eCPH+FGU0rLDhVeq0OnKw4ZML2F43GK0YBIkL1J3uF08QmKLMaq
	 jylkozNislwDpz2xdwmFqVpoMLOpN1vnW4DKaCTxVtC6oZiMl31bqYMvMHUMQf6CHX
	 Vss7ef0nA2B8no8zGuseUSzkDtZsAStF3DbWluxV29qHNMWQioOxaym4TpzuByv9zS
	 a2e5j6RFlLPLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9600DE63F1C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119549360.23466.797915744105814922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5439ce4a2ad74e87fb8b529cb10b191c1cd5380a85b410dc58039ce6e6a6d06
Date: Sun, 15 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771195493
