Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7507940DFB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777250854; cv=none; b=bgFKNYNq7aC9R5APbMJep0m251Sh+rdHtWzZyuEdKA99XrU4mo/Bv1BJJBaCSRPRQGy7HSRyp3R6s3vymzvtANRpwNgy5FtewsIhBymmDSbgTVtxUwWV61zv6HHzeMBfGIqP6ZKWLw/Zbrl+pJ6r5Bs/jnXrBcwnM0DHvgS5zJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777250854; c=relaxed/simple;
	bh=yf0pJj8dykPmucfq9/DOqZNM7lqlexvK9zdO9rPbBek=;
	h=To:Subject:From:Message-Id:Date; b=MTg/okgKU7/2HCnel0O1vl5J96j+8R1fqO4aQI6Xq5octHlM6k1pYS6B9n7g4bKWjLLrB20gq42eJKSi1+wfI7FdUDHwuKrWxSLN/NwdP02m/JImSF2y7rjgW4oKsn76GklTNit5ljlHkqsuAyPyK13RX6wvA8a3cQPWqAATE0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNkN+iwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNkN+iwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD604C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777250853;
	bh=yf0pJj8dykPmucfq9/DOqZNM7lqlexvK9zdO9rPbBek=;
	h=To:Subject:From:Date:From;
	b=dNkN+iwhVFsjGcWaZQYCCpB6O+dm/Q0+vJWHZPfUATKC0uvKq1/E2rX6FYfdfc+5l
	 i5+L/54RQfTplZYKrq0RDpBQWpxAslDyUcqleF6CNyqFqqHLGr5UC1fXl+UtEuXac4
	 texFCfYB9bCGkoihODb88vtQWLBVSKsXUtpmtUMBLG9GuzcSITeyPOyiy8N/7HmsSx
	 n32bIjbEJH0610QHeH8JwaPfMKapCGZwB4pTveL13jA9rN+1fXJAsbcESeJYjLlMxS
	 69xWnuFo92XDxEolEQV56O+M3FdHm2FfpOFmtWO08TsTqdwVjumhwGewXDvEvtJnkR
	 +YGGjYJ/EyCWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD3FF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725085369.17327.2621590898926839831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ebe2b2ec2d85d5fd28008f86d395125c0bc8f2eb1c8048340fb553a6087ff1
Date: Mon, 27 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777250853
