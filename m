Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197C01AC44E
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723637154; cv=none; b=fSmsMDNgq71pxhIz6l6u6zFMgtZQaESaoaz9v69fYPKp5PziAOq08T3XusaSMQwF2DwDGuU7kv5Kg3oI/qm9yjxRrO22qM5vcltK3nQ2n4ug/LYlb7rM6Tv5dVHMQvZxZypUTXLc7r3T/3GPZEdJfLSmlOyKy4sd6ZabklR5cUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723637154; c=relaxed/simple;
	bh=g2shWPSbDbScIhtFEd71UDEi6fsmgXb9SFl2nAfvAtM=;
	h=To:Subject:From:Message-Id:Date; b=Yylk8Wv0UPA+ikk4G1TWcJFmhO4D0/MrVWyz3JL7489yBZIbNI299atKQ2Sk+ZEPK12Esv9LiYAdtp873U/sNn+LxJxaU1Ny3a+g6nKKwHcTIAZ+N71g7Z42nJE6KIT3dT9u7p8UGsxL/Mghjjn08/DJmuNl8gbTcbXPJTe30Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMc0PpW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMc0PpW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5A2C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723637153;
	bh=g2shWPSbDbScIhtFEd71UDEi6fsmgXb9SFl2nAfvAtM=;
	h=To:Subject:From:Date:From;
	b=rMc0PpW08R71idkcrBlY3hHeolgWN/3yF41NqcRwbeqTWQtpGX1IRU5lyjWacGXZB
	 lze7nHW79CJ52TeNjq6H0BWNVhtakPe7Wnxlx/i4LW4gEZWL/3lsKNUuHjpd5L3n9+
	 r+ga3rfbuGnnG0yfSprXvLAFpcEaVXwxRcAvvEwA67xOszSudb6z3k1YVfrdePMerJ
	 4Kfmh60WHAkTlY4kMMdDrVKQBhZPk/oIYK4zT/auMQwOlj+OKWsaXyl/qLEjFgVbJT
	 Bvavua8qFkurtgB4oCRCHWFi85UQgppiRX7bhsCUMupk6LqiVTyYU/0XpDvOZEtuAa
	 v7uDKGu+ce0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F70C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172363715361.11300.7372008706698515608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f88556ef7da86449a6147dc8ead848e2d44638dca69f67813140c501f26e597
Date: Wed, 14 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723637153
