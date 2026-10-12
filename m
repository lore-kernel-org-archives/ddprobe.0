Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EC92D7DCF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791847834; cv=none; b=o43MDu8i28aIHahUK4CI/b2WPGY9MCqv7RGE3kIjYZZrt42f5PY1LTo0FZwQf59yBqFLY/FY7nGA888vTI0cT/eIn4JdcrDryZzMgIBjyqEugCVgg70PzEJJE23ncW+r+lBMPWwL8VS11ktGmUCakWoWmJHp6U1vRyJNbzrYinc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791847834; c=relaxed/simple;
	bh=1OwoN6vohFZUlM0SMVosHO5UfmaIKUNEshTQ3jKg86U=;
	h=To:Subject:From:Message-Id:Date; b=huz/Y6e56+Yu6tNXQ217oWOSs/k7he0SimYdrP5RjDPTrKXLIs8eRUhyh2jBXaiyeN9302n0z4bewNVfZHo9dt/05nhbbFmSeM3GYL2XBWkSTifZDVYyY3SILD3pDJuLwFTLzIBOtUdPDPosBFU4WQYWri1zjPa7oRFPn7EuN0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzrM7K/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzrM7K/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E66C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791847833;
	bh=1OwoN6vohFZUlM0SMVosHO5UfmaIKUNEshTQ3jKg86U=;
	h=To:Subject:From:Date:From;
	b=BzrM7K/BGUOIPaTxaGiZLnQU4tls8n3bVS1tChKjrVeZ0PKJKW/dQ6pyHSErXWvgg
	 rpEiLZEgcrIKVHU+YxYmnw6AwnSNLOyr8AoPdETT5BmZZk75UV+h5vFDo8Uj2gdc+y
	 xFMebJ1fKC/vIlJSEJqAfuubgw2wvzE9NsdzXl0mLaIi8AHXREz4pR/9rm93+P8+QW
	 S0OVAoG7yWASoRdaKaE10HpY4Hv+jxS1ukMJW9kgcNSyuJpo5DDHzSQ9O9gpxlDh6H
	 hQTXhN/kIBvfiNgMHp7ny3qpfOYtkmlieTPLjeuRCbhiK/HHqcbVqJyuNFW5V0w7DQ
	 AiGCo6QCSdFVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD4CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184783369.27941.10738008074021004150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9143f7bcac708ae494ca253e376de82c1a37f20c35c2e9ea1a540d7128cfb7
Date: Mon, 12 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791847833
