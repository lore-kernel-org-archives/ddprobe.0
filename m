Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2328F58
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735863354; cv=none; b=f67yZiKfRdjYSSuJKH9+XeD6Pg0oRuXIoRL/BitPuBKhrceldDPBtpnNaDfJYDbrUjwhzorbhvihPVnIdeDuLo9+GzXdIw6zgEaAFLu9npzop5dD8tXAMXzCfWze4RHru6xeTp9Pak/LNEt24zexqjcdHIlYfMdg9XQZZf/hGds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735863354; c=relaxed/simple;
	bh=qBYRcFw0Ey2Zncp0tMvtHqf6Rx0AcxnsD3jhdNV7Yw0=;
	h=To:Subject:From:Message-Id:Date; b=YjIK+/jhrSHEj0SZM0XDhBopI+/LEY+ddntZxghUmTk8MsuZrefiaNgSzsvxCJiMv6wiMmVG7ryll8uIKS+ZYn99RvZBbwESXVZzSD0sUuow45NH3DoQvcRCk0v2V5avfuZBbWlg0Bp3tw7xBTcH84y2OHfmUXGGhNluHrYlLcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pd+qFt7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pd+qFt7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD579C4CED7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735863353;
	bh=qBYRcFw0Ey2Zncp0tMvtHqf6Rx0AcxnsD3jhdNV7Yw0=;
	h=To:Subject:From:Date:From;
	b=pd+qFt7NF6savWxbUlVUiJmgNs3cV+D291p78Jrr/BAV+kx5//83trO1sF60uToqU
	 j8gsuCFgkDaKvB2lNDHbkj8BlRqryW1rphLLzSNwzZN1cgzCekyr9Qn6cEr0oMqrGR
	 IPQKXAx2GW7jv3H7ZyLChX+3503RIpX4hdLvjeDpAjU7SB3c3ZW5+5XzSCdGvKNERr
	 bMnDXXOBSdcilNVE0dae/oyEEJ1LAd2FqoEPpSByCJClFeIRSdhVI7hU49/tLTe1ho
	 Xhl7tcpj21916PAh7PPbZ19+whiOZcGQYUjohLoNFdEdp6SZGWisOWILSf1MwDFC1U
	 PXFEqjxG6xMyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95149E77197
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586335360.13014.3113598698763975417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e56183c02a0561628defe383f823cc167b4434b4ca74f43cb3340cf85a2f82
Date: Fri, 03 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735863353
