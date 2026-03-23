Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108083AC0C2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774273494; cv=none; b=QBzN1fZC5TZch7AfjYJp6LjuBfAZYu1NthNmvtPzQrlNw/2UJRoHJnws+2oFqof1u9AalevayA2ZXJbLQDv4j1NKu1D/UoAcl3fEYCBb03A/NcQHV16xwmukWQYvruVmh5uBNRpwCJvrV3LkmpRh/3KVRlVqzw5gMbrCrY+L1wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774273494; c=relaxed/simple;
	bh=ulrKJ9Z9SDc2LArmBOprs8xEmNpu6KO2EtkI5n5qg6o=;
	h=To:Subject:From:Message-Id:Date; b=pGEu5Tl57GHrQCG7pFlMBkB5TJdIWdRAhLdgV5m+lKNrxe9tZOExrGa9d6uwZjuhuiB0TfQwX4pAcLORt+y6DZBuczO4wlACvaEfFTq36YVCjBm7RYFe1Uwf1Dx6nYu0a90VL/6n0kskPSUgmrbsGkna9OCPhltP4kxS6Ebj54Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSNQ0uLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSNQ0uLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC27C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774273493;
	bh=ulrKJ9Z9SDc2LArmBOprs8xEmNpu6KO2EtkI5n5qg6o=;
	h=To:Subject:From:Date:From;
	b=PSNQ0uLmQ7MMn+8bMScgpGpgvxCy4puQOHzdmpntFXBbEUp60bT2GM4QPxWiwIYTC
	 pagvIFzjNmislMAbEUEJ86VOe270tu8KmSsAGirOjM1FbYS4Wq9hSDKuLdqNQJH11q
	 /OIxFqo2XFCq9k//9J2FT86cDbjI65l8YDb6PWhqiTjBtf80ah9VsVspuY160a+WGo
	 LYxx43Pq/Ja7LXYRXaf3C997j7NpRLMO8cpSdJAQxOIQlHjbCzy/DIBuCpZ9rksb4Q
	 bnI9swYkngEYdjwtmjvPlGjyXK5/f6Dt/OKXeTMLfC37RUyR2d/fw9mOjop+vJYez+
	 2hfp2+dbJFy3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D83F46113
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427349358.12762.17627918517171615519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba6ecbe777f376c01286dcfa75cce02008d9e0fa090b3502e51c6cb5a51fa45
Date: Mon, 23 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774273493
