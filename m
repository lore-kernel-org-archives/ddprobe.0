Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5F61CA96
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717930043; cv=none; b=ldnFNYv0Qk3oDgvS4CnTTnPeRxn5YnUEpaQQSdCwfMhHMhksvtW2MlPaDSjcjlSUpUJ31LLnNLXQdSQrpkGZuj9OQpzsHNj+UBr/yXxUNmtkvOQWu7ONKVXHhLst1ORqy+/SdODi9KQMxaKnwykCKIKyi1mP51LJE9uxYLxkrP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717930043; c=relaxed/simple;
	bh=eC3ApvTnqPBEkBjX5w8lduDh0gww17NR1IADrVgOpyo=;
	h=To:Subject:From:Message-Id:Date; b=st3ohCUvjS8kYFG0fy+OwHVMPAYaMEi2RJn6ybtfoIxR8eHosQYxZp9E8tEkLV9XTPaZBtCzXaHBQ73VS1Hr0MBDwS3anam6pgKyynx87d9B1MBqTiR1Nmst7uhUIVzvHyzVgKna1WdVK0X4t/PWluaJ7uAUFCqRHALOaZhjDlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjJR9ByV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjJR9ByV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE770C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717930042;
	bh=eC3ApvTnqPBEkBjX5w8lduDh0gww17NR1IADrVgOpyo=;
	h=To:Subject:From:Date:From;
	b=SjJR9ByVHB1gWeM/FkOhf9J/si3dzsRjUUa4zj+JErgezvDgrRdFhDhoj778DJynG
	 8DiBr5WIS4/WcFKYTEglhu+Q+y/HlysHUEwhcuCxn0ys3vJbJGiAab3Vw4pTn3roOI
	 +4EwC0LoFAx34cL2HkatUMqjK3jRgbnuRsHVxkkMP2/FxYFg2TuaiE2KLw0Egc/Ar4
	 HR3xXm0GooJ4ggmOtK/Ghqmi8pgvzM50fN1c7ctw8SGaxRP6CArASaW3XMZtjV1lr5
	 YGWaHKDPPGTJR4Y7AETiJQXGxXeeWsdLuHc3e+RvqHW6n8yxpMOskw+TcBd4DWdXhm
	 BgnAwh1/Tysng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC47FC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793004277.11347.9819358054370538952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadca58279c0cd8e5ffe03080772d61bdabef4116b7b3e201d1e42981f553060
Date: Sun, 09 Jun 2024 10:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717930042
