Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EFA1CA85
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717768043; cv=none; b=Q9efbvxSdNIJ6cdkZUdLn34gy3A6YQxQpEvynb28hY8qu5VaXznm+NzRff5ApRz09gb20edfZ12AifpuhKjXWWfjUh9TESaYuFU5cobIuLEyR9g+UEOc0aIri1H2zdKbrf8lDkoCPn3kAdB/IaXDPUdb8TmZdHhxf03SuxCZatM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717768043; c=relaxed/simple;
	bh=WEkG4eJXMb2KmKfC+M8xYWI1rQvY7TyZ/nEAbrW1qH8=;
	h=To:Subject:From:Message-Id:Date; b=MfLvSJjaEUJAfs8EzNMQGiFkn0mqu/HrdZN1cGlJdtMwIe+G6FFwRpgcJV22Q4ftL+t5FZNmRbDgKhF+SIcGE1fmadVcX6Bxl8SuZYTCCE/hX90rtJXCoQN6/u9xFAr48oMzX+aMUh98tJT14nIr3hMNngFcNyPapGt7CkelfVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m27zwoLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m27zwoLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA19C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717768042;
	bh=WEkG4eJXMb2KmKfC+M8xYWI1rQvY7TyZ/nEAbrW1qH8=;
	h=To:Subject:From:Date:From;
	b=m27zwoLvYvGVC/S1LMmrHKuZpoDzeXiVPBmRUHapXs0JxoWYKDFR026OXJs47cxKY
	 yL4x92oZm4CQjXXIIt9719PmuD2jE+Lrh5x9DWq+QJJkfHPfbSA4xGj86YmeLCOCau
	 w2Rc5axSH+f7K8l/k3Lf8Yr7Bjpvx/tP+uQCFakVPyv0/TkcosiEA++LEId1LCPRp2
	 nL4Slq+PRz4xBN6LPOkyrP0dBKEvbhNpkdBHmYY5EON8RLAgNE0Nzkmav0Zd1cCUQQ
	 GvamN64aPU0O0RsephWl3YgtVK3NC/89Pgx4NOGsbb+dH8zLh4XhWrthqC1Hj17cUU
	 8PpXfFIAJGv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0720C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776804277.15863.14803800730128210447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db341ddc54aca9d1c18fbf2dfe06e36f42361d7e9e8185cceb5b8aa291963b3d
Date: Fri, 07 Jun 2024 13:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717768042
