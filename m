Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3F33B42D8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788100234; cv=none; b=bV80RCFZtWcbrwbDhT7IHUIVNFHrnVBx/ZAuQ7kkqpd1U6JClc1i483HMbcJH3RzF7E+ayVZ4+QXxCsRfIYXMw/1dUoKJyc0pMg/eOUIVk4w/pdgDVKOsY5JksgMa8IMFiqRI94pzo/54eqGOkxbUnUT/I9HLAI7sxiIJ7qSajM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788100234; c=relaxed/simple;
	bh=W9YrrN5SJvq8XeNSQTUqcPBgOLei61ZH7uZsqs5kfvk=;
	h=To:Subject:From:Message-Id:Date; b=C5yGzLIoQq2gn9A0kXh9na6LG7lvw/H6n9PQyDUYSt6EcDeAuXTbjxpFA7JT5kfjBPrPIBBXle5Zw2drXTwgfFQF0L7L+EN/Juyz1ZQ+4h5cbXaOFROwEuCc4BPVxV6yS0z1uceV4eD11GHK8IM5SY173qZVeVS0qS37F2DCVsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfI9mtqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfI9mtqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B63C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788100233;
	bh=W9YrrN5SJvq8XeNSQTUqcPBgOLei61ZH7uZsqs5kfvk=;
	h=To:Subject:From:Date:From;
	b=bfI9mtqjrE3NL2cgt2ZhOqB7Ko9m61qL+O5rTpk0PfB7Cj6p7kN/vqClOUBC93kCd
	 LhK3XghLB3EhpXEInq/WC5RHeWKP0KUZZ7/BP+2GypqEsGPYFFMIz+LlsjhO+VOVBI
	 4iwUJW/vtai2ZX2NzE8V3+AWjE0rb+8kTt56Iaf4bw1+VUb5wZBVgWNZJGfucGqAgX
	 WPrfbrseVys46qHBzzgcqaA+7cH5HNF3JIwewEPMyNFsrZ0iySOpDteyklCnsjzRZB
	 LQxvNg2s2/IgBBLpxkaVvvdp61zyWb3LZgzxZDMuTeBDrUH1kuYk4LzGG5nBBqdrqk
	 jxR+z/BfqXDog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA8CC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810023370.22401.16684187804245975390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1a5d0018e28eb24687f4e6f306b2718bbec7ee6afc7c0ae862fe2822f454bb
Date: Sun, 30 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788100233
