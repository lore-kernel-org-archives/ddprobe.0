Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFB97FBAC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742720394; cv=none; b=HSzfJs33OvSS97VbpbpeuQcTqZK+8Sf9GL5saJeWPrOpyvR+ifzW+3HVFlCMhSHbUHx8SbIZrVAXkkqBPWgkweoeMFDZKeV5oGs3Dq+81qZsJW3doOAF0AvtJZblgsSk53OTuaix3xr6/QzCJR0XWXLdDiE87wXdCh057aOUerg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742720394; c=relaxed/simple;
	bh=K02W2Kwdgs6Xb3iEC5OaFGdYt2+N2S+AemWRoFMVo9g=;
	h=To:Subject:From:Message-Id:Date; b=kGoZ34ic8Y3bxNaDXhxMovUAITbbHDNgN5QSYZZJsYeXPhk5bt/e/anrGS2mGXe6RGaUvapbDXlyoKsR35XjAWR0ebSSBIYWdf3c8uwgD0hglQ8EbUlGHv1vazebLU+4zu3FQk25EKeBehutEqtqijSBdkHvRUf3Ji0NGSMfLGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXIXUB3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXIXUB3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0729C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742720393;
	bh=K02W2Kwdgs6Xb3iEC5OaFGdYt2+N2S+AemWRoFMVo9g=;
	h=To:Subject:From:Date:From;
	b=dXIXUB3l0ynIck9PPhObwHaSBwlEUJmAyiAg3e/JiyD1Wg+ow8ZWJVPeusR6S+Vpg
	 aHp67Dv1coOJwnR2bBxz8lV0R6EGHCnGvkG31ivizL42iqbqYAwTzmGcAkQpEbu5pu
	 CC3hB1tac7o+sMeZoxvAcXPMkQOBI5sr8thHGqYvSdsHapOqQb5nDwPOJ6xpG+c7Bk
	 feqmTNRDOt/ERY+ljelPCpjMdgsJo23ZBO3J6dfsVKNjYAoXmQATEfyQs2Sw2k5FbK
	 S1bnfIOhSdR1shLM4YPCUqcTC3YNIQO76Hd8zEkQOFuLy5UvI/4J7QjA8GavajX6F/
	 IAI3x08+TYHWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54D2C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272039365.5906.18311225279131677164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f0246052bcaa3950b256e9fb5e01b4764a1c4adfafd052806447e485b3aedf
Date: Sun, 23 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742720393
