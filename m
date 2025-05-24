Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDE71A28D
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748128194; cv=none; b=BUS3V68D7FEl2vkGQm3Anm7XV4AATGHtb5dAieTiU/kG3FNvWlAbBHL477LHqExdb+os2dOU0teNfxlTw4GI+b6Za8X3cUkM5OUl0hFI/J0w4g3vq66sVS7UY62bHdFjz8qUV0SmDIWtYCgWA1Mxi64UEelGWq3xDYcdGL5FyNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748128194; c=relaxed/simple;
	bh=gNfuuIFyCAW6T9PVAn/q4ptnHnt3W4166gJCX0tgzqs=;
	h=To:Subject:From:Message-Id:Date; b=SuvST3C1hxER6jkV1xutLAidRL0rS0GxlQPZ8idSZ3NgItyCUSWiKzWfqk9opNorLW1ZY1ez3sB0TYrmfPkg63sutBjRtXg2q9pCizDneAIT151joWj0ypuSMF2X317mRnVmqCtljCHPBRi+HJR8a2uNPv7Nm2YT+lfgVoEW09M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5MoKvW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5MoKvW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A48C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748128193;
	bh=gNfuuIFyCAW6T9PVAn/q4ptnHnt3W4166gJCX0tgzqs=;
	h=To:Subject:From:Date:From;
	b=O5MoKvW7C4KpwPOIXcRcs/MFUikrx3nJZeonULVDh1sG4Te73CJuEDqVxBAmMLxCx
	 inePtCLMKC4QgPLfZD11QtcDMDjwOQv7c56yXJuDUOFSX1vTPL6OCpPk5nPUx+BqZA
	 m9XXaNf74XaSEmcpxiIxOILG5zL/SlNC5nnn76k7AXSS4pq5B+sO4LKH6GFRY4ivi/
	 HiEk0m1J7eYWil8dkt74PfshANt/zWaFYnDs03kWD3DJRXLn14ee6tvUpNLUAOIY9n
	 bMSQfIL+Jnr7x3KjxNO/Yv0Bm+rUa/RLjn3FSTOegRNiKQ/bhiQl94+uG/6E+RjiwD
	 fFdc54f1tb2fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91891C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812819357.30664.5652365299835183620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f205233ec3762dd83e1fd427d23ad4bde1d753f02bafaf67df2264464ff4ac0d
Date: Sat, 24 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748128193
