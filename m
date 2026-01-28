Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C767C10A1E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769564033; cv=none; b=VM9Ao3p4bCgkjR6+TTMHE2Q1jn93FeV/T4WQMcQWQVqDc0SNLm/f8ZbHQyF8Priccive/6pV7o46AGkXfaZN1eALfACJamQvyHfn9exs5tWxxKQv3hBcCGX2IM02C2REm6w4RNtXNHO2ozbCgqurpNyBOzc1B3JHcJ+suSEgBYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769564033; c=relaxed/simple;
	bh=ABToOpK3Js8Api2bRfykDczWIFgWJ6WbkrVCibNtBjE=;
	h=To:Subject:From:Message-Id:Date; b=VZ7AUR7M3+h012yyPow4RlwFud9XBxPA/+lS54R+G+veCBUqqG6tNyZe+wVohDU7vxNPQZ0U2qEsRvtqJYK5aNGuhMv/2j7oJA5qUehKQjNdUzyijNEeQo5ftSWJzGTalEVhgjnzp6wft/xFy+Xut+V68jFat/UujaJAUGWB6Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saTDChgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saTDChgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2546C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769564033;
	bh=ABToOpK3Js8Api2bRfykDczWIFgWJ6WbkrVCibNtBjE=;
	h=To:Subject:From:Date:From;
	b=saTDChgPDKTZ7P+/0i5mTPN5JBcDttNq96fon9qEWDNZ0ubl6RXeNCW15oeC3iYfB
	 enhgPG8P8Kb2XI1YlnsYoPsUUDT0viuMtPwUkFOg03dv5jqBVxbU2nTTtK6GR3KkZg
	 ptawYykON/X+5qQmXGVH4BN08sgNpSasll+GH2BpVMhR2+Tx9s3bQCRYjL2cF6RLBA
	 F8yJ9e1XpSvgkhgHgKwY5zivUQsO0WUCM4thgGxq1NtlWPIuPbDjXSTdXnjecWdafz
	 fadYfJwP7AYrF3mTQ0tGVPU3WTRVEZDiCQBLMQiwnerFVTOGRC+tSnLO3chYThV2QR
	 +AnYAjTPrCEaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADED35660
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956403358.19023.17447365764723165175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e369e75ee767a501e416a43b8643dd5f841a9e504c795c8a24990185167170
Date: Wed, 28 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769564033
