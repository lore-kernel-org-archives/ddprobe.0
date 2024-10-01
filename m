Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47596653
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727760354; cv=none; b=PUMJMdYlUJetHXB6/Wg0S6kSaWjTgiVPLQKvdOqxXHfmbDN8en7vMgDR1JQKUSwLcXPpOr5gioUw2paC7b8nqlS4x7LVRf0BgzZknzR3hyUfxmzTmKymXf64dV90hLCUjXonuFI4Krqiz/HLyW0fUIpqagKpIFi4YdAM9eEHv6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727760354; c=relaxed/simple;
	bh=c+rrhoHMG5Uqq0eVpF98EPLI5R1/GOEFdxFXcwTbXS0=;
	h=To:Subject:From:Message-Id:Date; b=jASCJHslptsIqDngmdbRDGvgt6yxJS97ODyD84hnEM8DuFPW6iQTFMjravLosKMUyEl6F0xxDIyWgE75/g5v+9RLyLA/7PVsdQfDipOys3DX6Ntq7bRBK0wllgqDJK6NvJIP/xAL4D7nuoI2Ld+epYEjX97zbYb2k6qrGm8aulU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+9uPgcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+9uPgcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD96C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727760353;
	bh=c+rrhoHMG5Uqq0eVpF98EPLI5R1/GOEFdxFXcwTbXS0=;
	h=To:Subject:From:Date:From;
	b=K+9uPgcqZ+aZkkwQRlNjXt6khUvW2ZXhFnhfcpnGIWbr2I6a+cuT9/cLRRwejFifI
	 cn0AOO0I00ALZesxOzyofCPA9h6YPyBpea97/gB5QG39BxJGgUdnvK5B9Xz/Kwt9bA
	 xvlRC/xrvqWOieIVBztQSXVD6iXW5Tr8/Ev4mduwUw8ryY0iWskzo+fsj8rLcz2mR8
	 UN3WBH7k5swGQ2jSyDiirv8A09CmB8w5SrJdBiVvaYRFShsCMyZ39cTAcEIBTgmGO0
	 2IwuAuVDJux67o9E/eENd3gxB4hzkkqR2QcD41T/yBhd5RsrwgTfZXszuPwuwNqt1Y
	 S4MmhtSPsybuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06D0CEB2FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776035370.27362.17082508052902048490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7165e1af2f9ae0ea20ecf6860a543b5837f4806362d9c2a414e996d55ffab3
Date: Tue, 01 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727760353
