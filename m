Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AFA3491E1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776895054; cv=none; b=rZ5aLaJPYUcpg6CrTl+ge/xUuqPpxrDDNDP08r1eXBD6PPPZbeqoPzPJryEBsgu3E+bBZDeUKov2bYICamrXTZ2YaFm1JwlTyqHdP5hOUzOTXq6kk2zx7Po8HsTHyIohGZYaB/o+UJstINo4UjRfUAi+44Llf9kOeiYXmFNG8z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776895054; c=relaxed/simple;
	bh=XAbcTsJorr4Fy4WcekyiPOBNFfMt+WEAEjbJSWc8ZaM=;
	h=To:Subject:From:Message-Id:Date; b=QJHs+Vow32X982eldygmnUVLf9QlxXJXW2FKAY9dPNxiNUntqGjBm/8ntmbpBRGM2UYPxOTNk8qnLY0PwH+kM/dW7VwRQ21z7f7zUeydDKsMjbXX6Dff/7OxDeeFY1UNY4gaLaJFji3GhzAi4NNLnTqHamuMscPp1A08P/r0fdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQRZPOFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQRZPOFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE057C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776895053;
	bh=XAbcTsJorr4Fy4WcekyiPOBNFfMt+WEAEjbJSWc8ZaM=;
	h=To:Subject:From:Date:From;
	b=WQRZPOFstd82CgnTZhM55yG52473T/76i2xuebswfmy5bKoG0+uk/O4Vpoeri1DcS
	 dKJlQPBeluZMvtTFWi3O1D6Yz1pD6YDzUbxslGYcvaXfUiwKzREm7mitUBpo3Lz7C8
	 rheiI7lFsEeBEWCnqC5e3yV23lQOg79Wo/nfJy0QZhCK2IPQ9of5WUyzP18zejJ+JL
	 u5XtAE9zaVTUFgYesHXuZnOHFbq6jBAwSxf6YPnKUR/k+aZ3ZhhWv5wEPzmvu83Vyg
	 J/iHd5c6dxW/NBt9WHmFs0qN3p1p0SgF6mIG6IxssQJrbnwsr9GGsViATFrHBMIbIO
	 nZiBtaVURt1yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC09FA1FFF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689505368.12783.353810031424389826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac2a50f3748e5e366f2a9c2e1096de409f859e8f681173bb9ebbd562fbd184e
Date: Wed, 22 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776895053
