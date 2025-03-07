Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376F214A4F9
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741351134; cv=none; b=WulEwu6FyGkZudSvXIVwEZxzBoZgS5jZ9i13mk2ugD2jL/wVTCjbTRSrMdDtc9XwBZNFG6vY5T7E1HA6sfbG9JrIl3mtUR6kCfq9pvvAle9FyUfqZE/TvYEL7FTfjHYgLy0Z949P88IXBxSoW1JYaFZz15uvLEe/CgmE4BEo3IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741351134; c=relaxed/simple;
	bh=CQ1TnKQEGfA+8xk2cccLEsMgKi6rnp56JWMxs5isscE=;
	h=To:Subject:From:Message-Id:Date; b=GoPBKUPf8syQ7VyrEDXgVmcX/Bkg1IdLZd7XeKrigtW5mEqxb3YaLvAYGeRIb7g8VIYBU/YT3flQPMkuwHJG3gw8JZyCe66jzQ8qwVMPa3chZuuueO3zhsQzU0pBdEuBTV0aiQdEb/DV0+3Ism0x8nNPbgc3ZJ+5/bX12tUrwZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwdw9Ilm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwdw9Ilm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB14CC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741351133;
	bh=CQ1TnKQEGfA+8xk2cccLEsMgKi6rnp56JWMxs5isscE=;
	h=To:Subject:From:Date:From;
	b=gwdw9IlmZ0ctM28qqVVlKwW4m4TXuPXDufUAYBWmYZpnIX+r3nB6LuxbSXdAYTQhN
	 RPa23YvrET/sJXA+mx51/seLOwoABbJR5ONxqK2TpOIEn5kSfCPBcXNZ5k5gxLXrcI
	 GEYTUHH1PmMXfpiAmPgF7gdMuAzOg/Lq/1tdTsbLIr1DFknkfAggafBBZN+24oWnZK
	 ZysUYOF8566LeZT26kCU7/n8ZJWgJISGNQ/gkBmyqdLdOc/ybaCtPqVq7qeCQ+cZxU
	 KLDV/H4GDUHytZfojXX1OdKjMuD1YG4+kjbVmBGqyWg3nC0yNLE/JJIf6NkBjoowZQ
	 rneiBdkjgKLAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A5FC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135113360.5352.7363914135336753806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803aee7e1ca649b09dfe4bab169413309ecfb5223e9caf1a848bab49f059cf1e
Date: Fri, 07 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741351133
