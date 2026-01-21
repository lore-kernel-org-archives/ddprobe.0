Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A04336A03E
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768968234; cv=none; b=D13bw0sYcRDM/2TmTVzCr0joCUNRpz6fFq24d1IbgEzQQ+Jk1rsWPHZJRhUmRU0JHn0ZcfSgCER5CteqIHcBY8Z/kYBpuwnf9LEhA4i6HyYBI+nQWnfKbxMDzw4mNmmal01w6DmcxpdLIu3WDO6r5twmVByr/9a1x2UVsfFt3Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768968234; c=relaxed/simple;
	bh=MNZXKiFI7ncnORdt8TZ0D2iKtp0IbH3+6IN/ccxYuNI=;
	h=To:Subject:From:Message-Id:Date; b=e8kTsWIBWH8nnxLEH/Lt9ZZ68k6FlIRPbTFJJpN4/X+ralRxR2YqzhtzVIXquw5xA54F+tC/94+aiPNTxzt/ydUpgnrd+z4Bpu/Jp1U07dEqt+0VNqQNFIg1/5+4TIw1w6tcX9LLoGIrlrygzSz5iRzQuELbqavj4WF+yPihWzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiLia5I8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiLia5I8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695EC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768968233;
	bh=MNZXKiFI7ncnORdt8TZ0D2iKtp0IbH3+6IN/ccxYuNI=;
	h=To:Subject:From:Date:From;
	b=QiLia5I8blQD5SOgJoKbCJ2Sz/vmqQ3MaPvMz90l9j3U9vrZ7qHs4KaW2exZBFt4+
	 xzExQJn+ekFFPBKcaD31pX2O57APt3x83I115YdMx12Gg+gk7qxP+NvET8cAdkGSLQ
	 B0XBVX+lqdiXl8k0UF3MF4q2Z5O49HJk9U5sF+Uaq0BH93FRA5MoJjv2jhrXde6ofH
	 zmyan5qeEDUZQhAWEvCxERmIntNgZUbDro5OwHAoXjsbU40lVSXwG9ldBqr85PRF28
	 lyCcYt0KdDt7Wo1c9ZiohLOinI/HW7rd1UXEP2Rqn5N21p4YgQC8SwRUjE0+Nj6Pyp
	 AYPEENSUGjZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324FCA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896823359.11732.11772796103875721271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd058ee70fbfa4866487387c364dcc7608670d29f25014cf1be16761b26a354e
Date: Wed, 21 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768968233
