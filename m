Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C9F213E95
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733519754; cv=none; b=YJSOMznH195wN3B2vWA3zYjTk4lYl9ewvqJg3zpF/SzZJ1YqMqyyBGuW/2hFcWLBajWqJyiFgBkUtUUKqYHXB82MR+42E4O4Tdcw2G2vY9SFIJTliBtlHGCkaV10dL/taQ+nzQcColqikNjGUIJ4EAwDjnB2SA2Ik5vDEwH8ufs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733519754; c=relaxed/simple;
	bh=rOGlRwS5oWRwlgHlq5VjrQg1MQ4SBSUwx2DlNEEq2RU=;
	h=To:Subject:From:Message-Id:Date; b=Og5OfywluYeiQ6Ap14QbUejyiYwXw+rS4RlXD2ZgF299v4tGFucXtJ9Mb7aJNV75ngXp5d/Ddk79Gj5qIMWFgs9aDo7p98CNhcR0fd2xigZr919aFcbRRMfX7Qlv1DhO0zsKwbhwpqS0mnBH1wT8TTSDT7B//t8lVrtL7z6pNgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bq/MmcAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bq/MmcAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF485C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733519753;
	bh=rOGlRwS5oWRwlgHlq5VjrQg1MQ4SBSUwx2DlNEEq2RU=;
	h=To:Subject:From:Date:From;
	b=bq/MmcASidIB5lU24TcUsUq3RMoW44tOCVFRPUWz5lpfkatdl2ub9NNeITwXM9t1F
	 SEjeRuw5f5Q/02K1Q30uNPP+qzokOgW89HH8D5YSppXO2fYYyG3x04bEF0fWDFLOOc
	 YGsYheymE76n/EdtQZ4jn4ioeTPsiE+M9V3Ss6yLck4Kzg8Amq3X8lB6sDEKTtxMVy
	 IrCwCNy+w2aRi2iJGR6JSvYKLrXAWmkuvEjZ7pwYFJQobc0bs8U/XCBeeoqhz6OPEY
	 0v/lMafF/TNSljAkx+8GlMQFnN+3vYnVDlaFkGYt9ZgSvhEXtU8D2gOMmfFFpjYMmi
	 5dbFN5fC5+5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965FDE77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351975360.23374.9775498920194173805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c067495e9738263b96cecfc1066ecbf9f55dc3ca7a1a6a28263c4e55e394e66
Date: Fri, 06 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733519753
