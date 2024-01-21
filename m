Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29443376E7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705835897; cv=none; b=G7CY7Lp9zl2pcdCkSqUFNvZrh2IuwordL5Eh1ZQVjDY+O1+55wLTmpBwvmN/iagwuBv+6zhxrTf74V4RBOhmSD0+nE1ilEyqkGJy3ne9WWOk4ed1ec+nHK8OSPUrAX7YflBnjE2PCAO7hqf57tkxKmoDBJ+mn6Jw7z8m3I2zjrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705835897; c=relaxed/simple;
	bh=73fZVyt0nQycPa15z4a1AbxudR9MRKePqe8Znk+zGrc=;
	h=To:Subject:From:Message-Id:Date; b=sdggVeZlkS/XCIbhMATv/0TcDBjQ2CNq5SKcbl6G5ouBmRUeejanpjSo08mlcgDVOBhzPTASmfyQoINuDfAWuv2dc/VECjhu9Xx7Xgs3g0ZAtKLIer0tcnnOZwsIeBhQwWboiZ/RXRYxN4XocdFs7ZgarmeH7bjhujskulzm6K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4i7cg0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4i7cg0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F21EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705835896;
	bh=73fZVyt0nQycPa15z4a1AbxudR9MRKePqe8Znk+zGrc=;
	h=To:Subject:From:Date:From;
	b=I4i7cg0xGRZCOKEO8+n0bgk2y6Mub0W3fsG5sVNyGsiXMRHDXCqMbOOnQzQ9dHAXg
	 8Ldh6ak55thWNvaBLNBSxYQmVJhd++3e/6ocPcYNFuiUnYL7YeQ7GO2ZqEixgBq2QL
	 orQUVwPBA/+s/4+5U0kJuILKcrcU9XH8rgLVrIHx2eNkhoKD4SqlRl1NktprzvhTCy
	 Y3QMyfT8qvcQ2p1i+5xjXIGF6dF9Yz4zfGQPmRpT0Jw6dnYm/2VcToaw0wCwwD4DX3
	 CxvooTwNLld+83XS8vuraUmvjOGvKKRXNhhyvw7dvWRfgTnpOA83yqTPOj1DB37pha
	 se57q+0/GmcIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67171C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170583589639.25955.7131778800803552605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baea920da432bd90051824da92eb8d4abf00f2e8d218769522b7752c4e65a0b8
Date: Sun, 21 Jan 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705835896
