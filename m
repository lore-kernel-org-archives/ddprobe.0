Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3A53451C6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769729033; cv=none; b=W/OBgCvM9hDj+zf2U/lF1Z3kYlfMEwMhWEXrGyIe5pB20f4xiwjaDkWACYjIB8PDZ56PXr1vfH0dzrwZOm/LKyqaMeBapDXHxye6O3BSqJW7r3kREfMbmr3ZEPwiEK0zCdX6MQsSmKtWbbTiRS2sGnKJblShjV5XzIFiowCySiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769729033; c=relaxed/simple;
	bh=EU/Zgjjc5JsEKAUjrH66ufpmwRRdyNxavt1I+3diO4k=;
	h=To:Subject:From:Message-Id:Date; b=tJCPupgWsE6kz/z/kRH4KfoJECZNe3dAI/NN2ZxuIXgCMkNzEJ/DN1gM+fGspIgYGWv8pr812bM6tlTWVI625VUUWKBkPuQrIeGiSgEuXnfAaZqzjznQcQZ9vDuRY7FrwIO3WnDOVe2SyVTqUFjTtuEKRcvRBUdZ+//H6TG0ugk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY/Y7bZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY/Y7bZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769729033;
	bh=EU/Zgjjc5JsEKAUjrH66ufpmwRRdyNxavt1I+3diO4k=;
	h=To:Subject:From:Date:From;
	b=SY/Y7bZfTxkNQdJQ5hvFEB0saahO5JmelildgaEIJN/lq3l9+B7h1sQbN3JWRjPvN
	 abMsrVkO83lCgWABZ6ZFAr4as9h02ydm//8HQMnFoeMIb9gf2S3B4Ee1VAl9vB/umn
	 OxhjIeWpFnCTdGTWbpf1yZl5R24QnKGUqzUVjMOwuEm9jTFKR5myEQU0Qc5MdBx19H
	 lTuABKplg/QhcCUvj/z8aWyiDO55jX9m6r+Lili/fm82bobKjdxdYW+fQz0q3DPLiM
	 JFkJoXOfBzuBt2+8Zn+YLFcIrl6ZUG8+ZQsTNwtIKHF75zahKnJO0dX1/OAlImXitB
	 i3H+iGez7DPgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E3D73EA8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972903358.16652.4360067615165813830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5a83ca6d1afd2c52df5846200c0245589822c1e4d42fa7b689816b3e93d72f
Date: Thu, 29 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769729033
