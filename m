Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CDC14A8B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743139194; cv=none; b=NVs3Sk2sw7fZH2AFeQYXjpEpSp+2W8pgoA1ZRbg9o2IecjLx+K4u9AOmnuodCe4t9O+k7nI9WGJksc0InWBYLXOlgmwcfiGG6xtN1gii+C97OAHP/QZc9XMisA40odI0yLuNbFyzIRobJTkMSw+1DgI8Bl99zwGDUGn+rd+hjE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743139194; c=relaxed/simple;
	bh=33GuUc9zA2FtVeIkyy4kRlHEuTpRh0/SUa4LRfW9fFw=;
	h=To:Subject:From:Message-Id:Date; b=DL/jG7TZaHGT5PQQn0gGR/7p3LjzdcmN3S0Wazu+LXuuUL8U2JD8Q7SCqQouFWys8Fp3t00DTHVZl+exZWIkWpHxBpotDHhdX4p+R4d4s6WO32BVfuIJSpxA2cr+frjH0qCPUze8UYicc8ZBVDNGFF4tbXkG10j+38j23wEewi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KU5fRJca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KU5fRJca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1439C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743139193;
	bh=33GuUc9zA2FtVeIkyy4kRlHEuTpRh0/SUa4LRfW9fFw=;
	h=To:Subject:From:Date:From;
	b=KU5fRJcaNNxZDhhBpjsKzetVPmEx7PdsoO4CkQuTXiB4lrZKT3oMpx49/r2Kl8vJx
	 VDlySw8bfxhyUeCr/E3G9UNAoQVu0UDFxgJRZUQgATVQJrIwNEDbu/6iggXELY8JBI
	 m7lYU88dxoy5npMJMyEVe7u+XnFzZswtcLRkd7JPvbkiRMBkPhLqMWjsvj0aF5Yt9w
	 s05fcDguJnZWXxtSscyJW2PcbHMBZUjwCtyFSWh7c9XBppzgv4VoPxw342KZ7Aim66
	 cEZqe7ZWubjc8eJ8D1Uc/gjok+gJ5iZau2O/AQM6CnfulfKVmEl9zt9xqzHppyJ9RQ
	 FeWLF7ysIgokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A2BC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313919360.31656.1272770544145943901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5122199264fe7705e3b4884c1b16291b4f08dd9ec32b011f21f2e8916c2d3a5
Date: Fri, 28 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743139193
