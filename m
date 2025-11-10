Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CAF301498
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762771194; cv=none; b=dy3qA5/QLP3zo5j/drdcMUZ3BpC4e4Zu3asqJyEhOyI7dQ9R+APahZo6pitXKJyIXGZHYUPb/kPrz27CtJUbsniZMCqmMgg5KBa+dU7OnJFYd0PVtPW/Yvj9w7xAp3CJplqye37ceDn2qs88aHWNTxzzU7wPEIQ2pbDy1lj3qnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762771194; c=relaxed/simple;
	bh=VCaE1lgMM97ZmVRLuS15YCudwmoToY7w8/YEaw+VsY4=;
	h=To:Subject:From:Message-Id:Date; b=NtLjPR1ziWNy4EgaoNF4aAF+rBuMxwl+RIILl1HO5VTDWFF5NIB8yRaJPF9ULVIyjnCjiwAJqGcx/NsGmFfrhxyULaaRTm35dZCA8ZkmiysR7NRlY/hvj5DfjnIVwufXnJG3BEV6lZHH9RzBr3izQZ2ev52+KqxPnSuSzcMAZts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUXo/aO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUXo/aO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F432C116D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762771193;
	bh=VCaE1lgMM97ZmVRLuS15YCudwmoToY7w8/YEaw+VsY4=;
	h=To:Subject:From:Date:From;
	b=OUXo/aO14EqB57VS2ACK6WWzHCjmeKLxmq8q5AztvYVVInQ+ndGRuMLgDZm5uHIBx
	 DcJCyp8Qegn2w14zz2Z9nvwIM9xu5khnQhRpZvizN8kYmj2igdWvs+XwNvmI655vZg
	 UBYvxIoBXyekEpVgbecotXPm9q1iyBgwKX+tkflNc899MaST23jQy77qyq0dIP8eTT
	 SbLX6XNPsHwqOyy/Gi5nftK9LrpZcbhASny2VlIcg2BMa9WUDvZijszT0Cb8rXbvdR
	 z3uYj1CimL1ZDJga/NV5c/6MhjF+yi1g/Rtdp4+BcklqQttv5BgDE+njbHHND5n9P4
	 m3yQ7LkuQnQAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924FECCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277119359.22504.3162672274493615024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a3adfcfaf2aa7a624d8fe4aec6494ebbbdce1142ce0fc9daf2e24e6b651894
Date: Mon, 10 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762771193
