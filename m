Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AC42868A1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755211195; cv=none; b=M1vkjv15UJsYzdM0OuxEJWsaUrnSAcNQylYI0EKGXLv9fYib98X9XJul8KftMatpHB593By4I4jqMwoVr3qjqf5Hw03FKHXvRLH2HY0Su3PXUzlwYdpbBm2sjEi/XKW3vBYiLexP6cH9vUC6lKSd/fHI1Cv3gK9zZxMpxbT+GMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755211195; c=relaxed/simple;
	bh=O8ETRDcT2ehaU36feoFeh5BGK5oeJ5W8gXmoT+wph1E=;
	h=To:Subject:From:Message-Id:Date; b=X56JKJ0vy3maQp0VRxp/gvmt1Uf/uTKFI2/xppU1AQEw5D8+wcaPu5beE11bz/tK6A6eoXxpXiVQMyt3xJGWnLQS6OtfSqVd7sCTdR9klxpoZr4y5FAslb4pxFvRJeJ4lKALsozIhzg/BkTmbWxzwYValwwq7JoJbs87lt2CKZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXLXWlfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXLXWlfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FBCC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755211193;
	bh=O8ETRDcT2ehaU36feoFeh5BGK5oeJ5W8gXmoT+wph1E=;
	h=To:Subject:From:Date:From;
	b=uXLXWlfWIb2MOw3t9nVQNTxJmjQ7X00Nrz6kIugHfLeJW/akr6VRDgmulZoCUNhQH
	 FU7Zz21JmTq8YIFB3abtUSDwmDqyPngQ9S83fdFPz2DUM4t5A8VoAfaUTmOFmub1Aa
	 qWRG5K7jrSWUf4fs/SAw+I6XZ1u9Fe4f20YEo/M9owzyOrsuJY0CETh9C/eeLJDI+L
	 1MaJfJqRmbF5qOLlwzyB92I3jPnJyRMYu0++f4eKeDrerPnD43aMBXiMFdv9yKzuBb
	 nQOkE5gnNOGU25YNpk5GCbbdLuMYnfPYMwP2v7VuTGsjyUwcDfLrkx67pOwJ+IErZK
	 OsCIAYGV8ZoKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90219CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521119358.22965.16197081901549087000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4fb5f75b0fff17838578c1c81ab4c2f5168618fa4f76854bdb4af540703ff1
Date: Thu, 14 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755211193
