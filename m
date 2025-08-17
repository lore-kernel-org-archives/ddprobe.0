Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202BD2045B6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755419994; cv=none; b=ETkkkvJbf/vntmtpw3DPEj+kJPeDdjdlXQHkAgkRx5y/rhYNSbfGwCBdpJFw3V5ELdJ3O14IwAjQNPDWT/PrrsUJfRdFtqP62dkfAe8ZOtBpu+w1wfCGWADA+ntwjq/6GGEBnivja/qZe40bNxKmPKU8SV/Z9umI5LuMgVyFEEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755419994; c=relaxed/simple;
	bh=vq6HlYUK1caM9GJxRSS/dGwOE11+NsYn/K2FVZQzkcY=;
	h=To:Subject:From:Message-Id:Date; b=XvSoKJHhCenMK0xXyt3edA77gBT+dgomkhMgcEPuLBr9PHSaJlrKPoFNdUWhwyb4MTJbjUWTe27kb7XFDMaKy2YrqCFcKYgivOJCVtRh3F4jeGVjhW5lxxsOx/ZeCtMqqM7rKoW3qb2OJIhAPe3KxnjWu/MZpLU+C4FQnlWgnlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7ZCo/bM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7ZCo/bM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4370C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755419993;
	bh=vq6HlYUK1caM9GJxRSS/dGwOE11+NsYn/K2FVZQzkcY=;
	h=To:Subject:From:Date:From;
	b=b7ZCo/bMt2YDBEXybVQizmLZIkSrVEQdDu7DULguo2mnq1vBThdBkFvarvrCQrEUQ
	 xvRz+UjXiWoweLFYhY5SZt+tbY1UesLIR+yuk1XvY4sX+E0zgb5BLT6PgPQ3r4dwxy
	 P2W2Qxb8HygOOhKxEtw10uZrI6Uw1KR0+5ENQOJ25qATuJiLhT1Y5fSRr2UHgrOoBo
	 5dxB8YJItD/FGpSZhQYWLt2da8MgDiaxs2Kdx0E2FUWhL/Z5dh0ZS+lK/Wdnj2jnM4
	 arh/ItoNuxY5bebYPFCoDulT3Fo4KirDrDeQIWG5PEupcyUsNxgoAKo2kcTu+XhedA
	 mlN0TYRooJWvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928FCCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541999358.7226.14401866101635121801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b200026de3d364ece046c1bbecc0e846cf1d7ac202117b24ce62ba9bf9a9090
Date: Sun, 17 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755419993
