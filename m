Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A63322E
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756618794; cv=none; b=Sqbgv0Dc5BxVzjUKAn8Vx+yZ3WgJv2yq4CaJRLrKpzMXjbbg8Lsta8+pSCWwkjYh+yizX5qk1W6TVLjYG2oS1H9EvYWhG3tQMTbYKBI+6q6l1B8S6kec0UE+8TWPTrDo030k+0Xf7Q1UkoAqW5clLNpdVzc2zPrnAoWSq7AKPEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756618794; c=relaxed/simple;
	bh=jXXdQB8nuh/bZqE3xndnGTWOHTvqr6mfVq5utrAmheY=;
	h=To:Subject:From:Message-Id:Date; b=EQzP+o96oQHgS5K4tsdpjTOBO2fjA2WM3IqBBrYMkWjodnDPTdNtfS94qp4UTwAXcKUa+y1GmTAKEFFZ80esawxUJp6B29MgDY4tLTYGxZ3oDtTpSKCCXOrkBXU3FO+u6eB7dtSIPpC73M9eN3tyaGqV14S2GUnX18jpIXUGknI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctttwCO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctttwCO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D80CC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756618793;
	bh=jXXdQB8nuh/bZqE3xndnGTWOHTvqr6mfVq5utrAmheY=;
	h=To:Subject:From:Date:From;
	b=ctttwCO8K2dr+Bp1YBMmJ1cunPxm6dDR5c2nnTuaFsTSw0szWqT/2dFK+1PG2MxTu
	 lY6y2k1sWiQexfrLZOn/hSZ2RdlZXQm5At/YOP3sPTgezo01jpzUmSej8U1BUbF3/b
	 ItzFOUGwbdnDLv7KpPKaMXRCngS7nadB7UXMmyUWLor+7ZV/FaVi9FaVxQc5ilB7BY
	 jaixemkvdoZtmZi9sp7QqWMSx5Sa2eoL/TTjeCoAUCnIGzr2n6nwb64LHufys4PUzi
	 g8ahXkV84Wmc6Ix7812/qMPfVTzjiMtksDMHpKEQFdTCVudatB++DLl2gCUwlhkuqU
	 /u5D8aztksJEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2BCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661879357.17858.12058762672884374444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e04c17f50ec63f39ae1b8a7f9fc5b73be0b10247cbe0ed1e29100a276428b78
Date: Sun, 31 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756618793
