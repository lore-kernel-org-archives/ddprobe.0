Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472374A1C
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735119954; cv=none; b=pLr17dJ1grgapAoK6nxe1+ldjFh5R7Zz7WJwDZ3YyTW8TesZW3698UreTY1YfCLNaKBbv4h9jy2m2BXirD94ITgUAVNkpsUHz6UxHIh4Eh33ZOG6HAXLMypO8iUopll7ys/MokpHhJ32Dgt/0Q/qeH1QiRBqvatpInR39bjSXq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735119954; c=relaxed/simple;
	bh=wwpqgx3W907XLhzl3cY582YUTiGoAFCbx4pS2TSqz6M=;
	h=To:Subject:From:Message-Id:Date; b=d9jfqoLT/TQVdygpkK/Co8K0GRjJTzXKvu6x8Nw6pB9GNyVEdg5JAiWm1fsXlx1qMAGi1Q5pTFBaMQKxidw2JAsd6beXWPR8g7a9u35LwEXCm07UOtt0JDj6tmZ+cHKAV6xHsalXjzXMoj0VTNZaeU6aWYZ73OKrjt6IdEQfxAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrT5xn1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrT5xn1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01EDC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735119953;
	bh=wwpqgx3W907XLhzl3cY582YUTiGoAFCbx4pS2TSqz6M=;
	h=To:Subject:From:Date:From;
	b=hrT5xn1VArh69wPrq8xEMqHoLQZO6h0DXBXXxOtqQ92eyGfDp88DXhhb0RE64gzQJ
	 PSrJmhOlt3Q2p1bMVkI12kyb/1ydE/dNrWGXKXvQPdip6cfhqhJeCkmJMKDyLbsX7o
	 vxn7CKj7SAUs1y80MeBJRsAnyUL0LwL07SCTvJTEox0PCtZNeg1MDtiZ6KSSs4KoAy
	 ACijYBAw8IL0YDJQfvI5h03qXsAO/tr7lyWa5ChIFc6C1qx5rY+ES3o63M9hN02cSi
	 jy9LfkV1Rp3pCsSZzKDgQEGZb+u8Skp5u9qOrNHLtlel5G/iw8HI9T8HzB0OMB/QlE
	 NWoJiX/KK105w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC59BE7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173511995369.15496.17361342533535482676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310f926e12af84f4f15a7c1647b8f867564170be4b541ad0268132a9f60b35f1
Date: Wed, 25 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735119953
