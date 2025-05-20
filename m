Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410AF4B1E5C
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747700995; cv=none; b=ghcbuiuPQbRk8Ml/+vtNzM+yXveup0m3MjzXT0wYI12G64St56kP8NDDQXghAqy89RyCg4UuYZon1ClCVwO7N9XrUruIxwNdmYSgtrxgpa67Ika6NrSxsYTkav+rUXVbw80eWoh6ka/YSE4fd5vFOn4MVENXOIXOyP/SvZ/6ijI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747700995; c=relaxed/simple;
	bh=IV5STve9qXh/q+WlqhRfUOPlsvu4u7x+OCa6Kxdwq7o=;
	h=To:Subject:From:Message-Id:Date; b=FGfWz6n5kCWuisQuxvjNXOn/XrqFTNUXEKUBRccosPV3fAcwzFPyh3Cq4u3AQF6YnLDQU/wAw4M/CV4Xx37ARS1eRliD4IDS+CgYbLDn3p2bnKNXNGMGb7nyJeseJpj4a8ZTNv8kje/L8R4KvYunTr+x3+3JP4W/K36G3v14d2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/cdN/Nk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/cdN/Nk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A444CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747700993;
	bh=IV5STve9qXh/q+WlqhRfUOPlsvu4u7x+OCa6Kxdwq7o=;
	h=To:Subject:From:Date:From;
	b=K/cdN/Nkt4EUibVBvG92iJT9iA1vgaX92H8/lCAEiRoUpncCtbgHdRcJeKMuMvft4
	 ux5F8r4makPRDGt7+tkR7abZ28PmBAKEtTwGgPBqePaWtngdVIvzomXeV8wpkbhL/M
	 0IWoHeQl3xSGV1RcXYNntke9mLUtc1bG2pUmyREHfxTS+alLyGxUOuYClegJqXqhxI
	 uA0NctAa2lEq52iU3S9c7ROK0e3hqXM5TA8QGfvhp49PBRqukL+IryB28TJW7O7IOe
	 ZQ3zbw/FBiIxXUiFyRp+mRPSoAE+qqKaas/liDx4yIXv5rvOXkUayXUPvLi7yJt4BT
	 gc82HyfrQncog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A67C2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770099357.27457.5397626542287909959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c470a743a37e9f5a7f03ad7a3a0520ec6c2bbb72e9fa5c79b89d5c057745ee
Date: Tue, 20 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747700993
