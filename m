Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2518D2EACF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757367594; cv=none; b=Wyo5KAEepYbQ8AP5Z3qJSC3MDG740ViWAV8e6c801Ptx9HkpgUIyQpZn42WaYPQXtGssufwnNEkRnTJPXwdMLLu/spZsum6calw8odoDYDv0k3zJYrvvZwLqPCvySE7+9khugBgc10M3rY0UFBMezb3UVKO0uGhPSUBBbXTXckM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757367594; c=relaxed/simple;
	bh=RUuRwp0rnGwL7WCq8sGpG9+2aLiSG2g0qnr5mj/evjs=;
	h=To:Subject:From:Message-Id:Date; b=maQ/fT0THwYX7YtlkmM9IbZn6+WWUWKZnsP/6IXypGkkDQ1oMGgOs5HsIqonoFNHxQp4cjaEiHcj/H9AnUECXP6109UCbvktTdt+VP+geilFFA7s3ADVQ64ztz+jFjG+/Ckl3BQZjfPiAJsu9FRNlj0EQ9t5Jvsg6VPA6dvA2To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaZq739y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaZq739y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFECC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757367593;
	bh=RUuRwp0rnGwL7WCq8sGpG9+2aLiSG2g0qnr5mj/evjs=;
	h=To:Subject:From:Date:From;
	b=CaZq739yk88OYDa7VfjFHA2JTKXVYJ1/F+4eWLt3R3RWc5c9M/gOqcDVxBgBI9OTW
	 zgwcv6oPw4liO6+N7z5YNbcs3zoKD1cpwX23KY8a2rTIRBY1rmzGY45ejUet0YqGC8
	 Z/QxDYrNa0yLxwRQcbaeWe7LuSjmuEUY2rQDb72cfVpZAS60tU+5jVaGBRN5LfuoVD
	 7lvGgqJC8MsqfN3fkHrtPsHAbPbVDd+cbffWxs1l+zGkdZjtd+EceakHRUKhqEkOgr
	 1DGYKCfoMklShFm4YkvUcrtJ/EhsvfaC23L+CRpeJ2oLlgxT+41rC7Zt9gjNvhlc2U
	 fBxklWwIGxfMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F034CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736759357.28567.1293512151805454285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1cea507bc8e375bdc7502cd929a3ff4276f2f8375e3ce976fb2f45fd3b873f
Date: Mon, 08 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757367593
