Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB9039ACC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 14:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716559403; cv=none; b=oWfRfDfhl06gnVvPfKIMX4YbD7s3dD9nznGJT6AzBerbd5PNk2Pg76NihsLehNGcpBlV13V6Sm5o7TLRXchPAitQ/pRuvTy8NLmU0DsHbeltmGa/xy0mugACYTa4A+jp7hRjxJT/ckdzjRn8iDkbEhxKR8R7lVAvFPNfYEDsSzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716559403; c=relaxed/simple;
	bh=kM2QD5fO07NTa7rZGH82DQz3GNT4b97hn83i4fZ3+Hk=;
	h=To:Subject:From:Message-Id:Date; b=b1Fwfj9mWRfthzNo1cIja1NgHh5PcNiNI0oH48kQr2y1pEeyIn5tP0L+2D6V7VHr3OA5Xmkel+dLywdEUpGOiZMzGiF/MTyuXKoqBhY57gCkmc0FVdiHoQk7e3DnDlkX7ri4umaBusV4SmkzXXh3RRGEORIBAiDddZRi1YLIcDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qokhr/gY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qokhr/gY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC7B7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 14:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716559403;
	bh=kM2QD5fO07NTa7rZGH82DQz3GNT4b97hn83i4fZ3+Hk=;
	h=To:Subject:From:Date:From;
	b=Qokhr/gYrr0PE5rMpO4uFfEqXPyDTVKqmTzYiAHiTQxlNaJj2vJIPKAks333aS1KK
	 PfKimeopTGl03FrnqgZormarL+3xCf7Sdu18y61hehP4l++v787jgMwCS5PUr3SHvm
	 YqhWG5roBEXC4yFn9SQZea2hkpk4GOxAnaRW6XpXu0MbKfCbECMIu+Dehy7GSTgSxI
	 ZzsV9F5AIHqX2X+StSM5lgI92Q6eAD3i8xNpOnsKv1O16yz5pDU8p35lJTNxD9OlNv
	 GLTSxAWhhJCXKfn1zmdmEG0DsN0Vaxpa3WgDJk5NrggWGKR8e8s44ZYGfMy0C9lQ4O
	 Ul1ywD0uCkm5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E8BC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 14:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171655940279.25115.3266543751399403781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7885f9c18c2d594a3fc43c75e5bb382d90bf0259464859503ca41dcf16e807
Date: Fri, 24 May 2024 14:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716559402
