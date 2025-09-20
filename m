Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF9E2773D2
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758404994; cv=none; b=OzOA3t0EC7YmQfq4q5ike4nT0EAl3SJIkt2/gECOuLDDq3G2106w9Ph7uuXbyNEhfiixdxM+GOx30r8NxIPseWXIEpCS/tgZq0HbsFfsv+AYB2UlYCZs5Q6o+IYRAqFioZOWAFi1Nb+HAjLepgYmpf6Nmzb+1dnv/EZX8zE9y9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758404994; c=relaxed/simple;
	bh=ziGm/kQnkb29O3ZWnkakSHRX26QRiii48bRDAf5Yl/Q=;
	h=To:Subject:From:Message-Id:Date; b=dNUVV1U1o82DH4DXLuFKchoSfRRXRVTOZkWDnsLKiXVMDdfSaLuqE6C0J8fL9RbwRXL7BGRSjatjloy3iMEcrzjkDg5aJcS2VtY5fm6rCn9wImVYrYysdK0arXDPrfnXaCImGKmXLNevIs9feUfy6d8cMA0Mif5PmdXWiSDqBTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6znECdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6znECdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C42C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758404993;
	bh=ziGm/kQnkb29O3ZWnkakSHRX26QRiii48bRDAf5Yl/Q=;
	h=To:Subject:From:Date:From;
	b=j6znECdNbNGa79GzQTiWGrKhRx5qldssVkBoWiRTcng7P2+wJKUB4ZaIEpEFhfRpa
	 eYBAGLn9hMnhL74x0MJ0kLCNCi6y/JLhLM/94BhddcdsN0IwW/4wsLaAMtkOcdgD6E
	 GKB8IeLeu9jY7W1Pl8ZcNt+KpFiJPImw7XQz2zL126ecomOYfPTEvWu6sJVWcfPj8K
	 qzVq6QHiYPK5gpBVvn73r/wZJh+UltAxXjbGicoZpAQAr5nsaO1t/KNRIZXWY5AlVt
	 OUIyhuyFtl2QIK0TtRg3SCU2POIAEoru1+s7oMA+OyZmRde5xIl307sOe8hsrCjpTL
	 M2rJXtATN1mFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9ACAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840499357.496.499959427383368823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a969231b6cfa5757f6852c7a399d1433aa0cff1c70b788d0df4ccbaa6f7add
Date: Sat, 20 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758404993
