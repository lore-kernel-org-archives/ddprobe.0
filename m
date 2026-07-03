Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4753E3BCD33
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783091914; cv=none; b=S7Ij3D3WNq8m+JiPN8t9j2uSTFvm42leCsLTX0UayRlljzumFO67vTJGYr9g+rU7bMama+G+Kq6ijef++dROfoRi5wdoR+FpF7sz6Njxv7T4pjJbPrjcpq/Ofa1bEZ0cK+a7p7pmmtgWIaCDl2sZ4W1bKhTT55AFvr2A0Mjiu2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783091914; c=relaxed/simple;
	bh=pByQzHBq8lKs49wg9JKSEFiGcRrLdAat6Tdu/JmAsbw=;
	h=To:Subject:From:Message-Id:Date; b=T/QnrLJIgu0zHLLuGZSbfYtNeOGRrZdYISAprg4s+4M38/jcyjNcnRzkZA4MeRQ9eMRwMCPFr9PckhqghDLYHXGjLmGzJF9vkUhS0r/KCzjw98M1r+lRVjBknwiowzwB2Dkb9sgoOe4P54oMGpyibhuwXF6y0NpbLpzMfb+cyAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJpulDxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJpulDxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB77FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783091913;
	bh=pByQzHBq8lKs49wg9JKSEFiGcRrLdAat6Tdu/JmAsbw=;
	h=To:Subject:From:Date:From;
	b=KJpulDxfeqqbmZXa9e1dpTe1xqZGnIR5U6MqLYR9QZwF2jnGMGvJoGxK2XTkLP0XS
	 iZVWSzYJekzSBMYxNS5jTY+Av5p0eD0/dNH5u0gTRvuf6800pDCfbwH7s61HBXD/r1
	 cAE13mS6zfqrcUTarJmZGmSa156wPEtzCWVrb68BpPXJe0ZtNSFB5wY5DhY5iAhQZM
	 Tnz80ROxbzWag1EqR2vqRqU/WZ2yITQw/7GMjQ79HoKmaw1Tp4L7YRYHwPgAcwqp89
	 0RzL1iHBTzWUPFopf0rgWwOSWSm7uAA+oZCV2EwUPx9CnB59KwZc5Pr8Fgc2OnJC5n
	 LvQ/Dfw2Td2vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FC0C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309191368.8832.1696128643733797484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a191d12a85f52e45aa66e76b88c2e4ef2172d7dd7ffe791377d7733eebe2eb8
Date: Fri, 03 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783091913
