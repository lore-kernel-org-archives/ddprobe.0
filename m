Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4431C1E89C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737902755; cv=none; b=YLMsZfz2lvmRJ/SUnlD8P/xNmwIv+nLn2tgnYpGcc61W3M0G/kVLmLsD+xNnUQcaUc8A9uRInwcZIr9HHbDFvdcT1UU0rLVylc6LDPB3MBLlAhI6oElmUQp/QeQQOI+q1ezwFnGRbFfj018kMG18yHtfJeTRZuSExQZ+IdJeL4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737902755; c=relaxed/simple;
	bh=ggNiuGshX8e9mupOOpUmOCGKoobE7kM85fDVjI29PPA=;
	h=To:Subject:From:Message-Id:Date; b=CTxIRDUuSPFHG5UoY0Zan3ZHn1tetcq4O+xnM/yyDUw+In4qCJftZoS+56L98Cv1Q916fjLllOwNEha3CGIVC+9NkzLqj/5DvjO1tBhF+vkaHEDtkkG9xmfyVk1q9k/CLQl/ZnngZ/alFIxyoHLl9hYkDRBQ8J3mfQYf63oLBqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsgmQkAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsgmQkAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6129C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737902753;
	bh=ggNiuGshX8e9mupOOpUmOCGKoobE7kM85fDVjI29PPA=;
	h=To:Subject:From:Date:From;
	b=GsgmQkAX09xAcbdRTQgOTaU4hMV8ylohvoswVdiFPaGNwx38NV2iFYQ0LVVAEpaHV
	 YUEbhxfhr+L5Tb55gz1OoTIhrLIcRM6nWjh9OL4t7R22Y7oy7fN0vXJ5rvGoGyiHfF
	 MU8j51ltBNEpTKO8LZ67FbZIc8+5VOQQ0Auvlkgzl0FjhPjw4Pz0GwnsgtnTkS4+0Q
	 Am5oHoXRaeOc9bTIZAsEdGXolhdyuRjGQ5yuIMCSjtrP+DiHl7id5XoZdMDitBMeop
	 inxSkU7m5tLj++d7/cLTsNVPzZ0/a1RrbRvAaw0eUqrF8+KLbcuvpbXYjLiTVteyMb
	 xEEULss/obCbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B61C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790275357.24235.16690408383574697979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ae8305c6bdc09aee889ee02cd0e4efc2df9bf797a5c2d178fd447966d590ba
Date: Sun, 26 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737902753
