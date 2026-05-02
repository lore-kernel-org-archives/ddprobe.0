Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9F01EFFA1
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777765054; cv=none; b=Rq+mCOVE13dLfWYU/NLWA9A3F8mbYcxo0cVjoGbkSCEYpuMG+GwVEougcbbijLVxxnM/aeKgievRMeXJOZgHtAPOAIL9aVjjhkyx1VND2TwnGIXUm6AptePjpIkYnn9pWMEwQwQ9OYYhCKmtnnybWNFL1Zb8ezV2ph5LMKa6spU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777765054; c=relaxed/simple;
	bh=6jP7ugBmAJq6K/2qEfNc5BLXFqRZaJhWQGnI7VC3m24=;
	h=To:Subject:From:Message-Id:Date; b=CIFSdy1LRu0idU4ofbcYcCMCSK3kFDqQI/t1Q3yi6t8IIbxLmUg1wln1kcqJVDfLis6inP0W0UFKsUWdr0HbUXlbGNaatvicVcyfDJ1y9Yt4rRX3/tXgvEuJG+UrXC/1DiWbPj0f4Dzu4w++hLdAmJ8B6Qdr1ZJ8z/nZ76Ua3Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDs5Z4hJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDs5Z4hJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03C1C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777765053;
	bh=6jP7ugBmAJq6K/2qEfNc5BLXFqRZaJhWQGnI7VC3m24=;
	h=To:Subject:From:Date:From;
	b=VDs5Z4hJccjvettADZhC3Pf5f+64fN/41T3RcJunJXqUVWNxJN6N3hgouJFlEHMmD
	 I6luUCybefl+xDde4wqjDGi5ZNp5EDOlzqhbqy/Cn8Ypx6XMK03cDW9wD/s8N4Lp3i
	 iiPFOlHNAmlWZcDLOFFtc3Ov56w1+Ak5s0fFoOzr1nQEj3rd3c/JXQb5EWfhVfD8FV
	 mpyRfIHGi8vtPAR/zg+ftHh8pMq56A6tJr0at6SwttROo4Ljv6badTenEB76IV/9+D
	 BwVUtUxzM/G99HiJx/JV0VVASZRqRIyqB3QBf/Nz1wUutkVd7ytSc6fr1PcQigbeb/
	 8C0K5Mmzp3eZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0F5CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776505368.31893.709285548112499687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d039e7c747bc7bec934503cda6e4664120b04cad1607e179fae08024d6af9822
Date: Sat, 02 May 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777765053
