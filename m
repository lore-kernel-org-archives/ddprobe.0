Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D9428488F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767398033; cv=none; b=TlOQ1h9PrFgs1gfrOu1m3adM+1/EPDH849SrOanMGeTfwGJW4GE+Xf8RHrhwkjiYE0jXNpl+gCqMwwSJWjvg6z6NNx6sogrODFPyrSNjZ+cIYKWMXeEsiWEOJjIU7FtjtRrxj5Bl01JoZu0hkgw5nig+YrE9/YZWU8Q1NVRGZQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767398033; c=relaxed/simple;
	bh=i6628MjgMXG9StkXRbP0wcCoCdDqfvIdM0U8/iUAyAs=;
	h=To:Subject:From:Message-Id:Date; b=TRbK6A23+jUpmukiY7tQeH8lLoLfUKHUd/AuGmyevblWgCuapzlKrLJlzqhO80C3zEP6iZopXOHkJOzOy2qek8XSnSKvj6SppUGD8mAP/7S8XZGhty8clfrhBKswKT9muy0+OE3ySNhApic8Lueb/h7Utx37c2qmQ4pDmHWbf4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEU3dZ/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEU3dZ/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D525C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767398033;
	bh=i6628MjgMXG9StkXRbP0wcCoCdDqfvIdM0U8/iUAyAs=;
	h=To:Subject:From:Date:From;
	b=iEU3dZ/P5gAPs/c1oFrM4DRVT1Y5RmMsU8lr4b2Bg5k/RR42LN3ecS3CByZ4FoLj0
	 KG9lR6DOQf3hPYEtXmHjp3MH4Z68GBTXAXqCW/YTOe0CI3im/62L4u1YTg484GdwRo
	 rxr98rxGA2IV8e0RISCzNhz5DP2wIfQ9/G3QvxJfUqivUWoIXK9lvDSXRAn7Cg/rNB
	 DPnyd3CVI56RB3ZyqW1EemXw0avU6etj1FUaMNMy4srVAcRNqFZcPoVZ9E26l9F8YY
	 WmtnLDzJRtoHySvLUO8So2OZflBnml2yEYnB//2V0phDt1NIEFNfMoR5tSGl2nV0rv
	 UrfgYyjReLv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA02FC6165
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739803357.25352.802311361861233445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd343e17089c56ca3850a7c7c03028456bd535f63d334536c44f5c1072effa6
Date: Fri, 02 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767398033
