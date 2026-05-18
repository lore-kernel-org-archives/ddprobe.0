Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5033890F8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779132634; cv=none; b=DnKDBZ+hL8Vd5g0cc/sv8WQUTm/AImDO73XZKnObTfy05JYuRKvdmJmOG6atKEQKHWGWPHyPf13aYQigInPq9D6wW89lW64xcTN/Cm5fnpnzWyim77Vy6ThSEi7kUfPYu0g8WpVfHAkp4Tug6RTn+6BkCGzZkTPuyk14JmbGQF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779132634; c=relaxed/simple;
	bh=CEUKdcNYgWN6btO/Lq7p2CDtRSmliR0ovx9YVE67UaM=;
	h=To:Subject:From:Message-Id:Date; b=kep7YUrXHeXmjJEAni8Z8FmolvnmQBXRCbxHQQQzMpfXdc+dEykb5xtX+xbFG5SUxcv8OLz2oLi1Aa2csgElHNT0+AHewu4XwoGa6e34lPjwy7atdFJvb+Q7Z4KwYkN8BQTf8Ll8grGQj3j044fjT1aXmUcMuzA6TPF6uYpXrME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1K89YoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1K89YoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC75EC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779132633;
	bh=CEUKdcNYgWN6btO/Lq7p2CDtRSmliR0ovx9YVE67UaM=;
	h=To:Subject:From:Date:From;
	b=u1K89YoDBHy2aHAHehDwMyYkl1sX+UhCKm+0tUOHCjBU+BCrFigcY1XMnB4bJ/ZZB
	 yyv3vyRnVcWgMNgFuZex26tx2cX0TOKfiIBbI5VQOmuqcW1VJUf6rmILgaLX7kTW0X
	 v+Hw07y1IPJp5UO/lagJzr4tAr4hchnUX2Ho38a++l7nTEcWchVVH6OHeUU4RELe96
	 6T6O/xCO5F6tmJWhgMGqjOgpoTXJYSZlD4SOmmE/AjqDCHlo4eCEwfIiIH52APXVQw
	 DCovrv5I2gvWuThnX+yl+XTpau1suSuvjCAfxeYGhiigTQWYksj0YCObcskKvIQ96O
	 HNJ8nXg2uZYnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFADCD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913263369.11117.1760869140096454431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6613081ed850c4d8a48a665342c8dc50db33c334e4e4ade72b373dc48753a3f5
Date: Mon, 18 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779132633
