Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522231799F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782013594; cv=none; b=cLLO3bCC8eALKmHhpTbsl6OTxDhRGePhzBX6SxXw2JAHLoFcbfEtjlCG+hbE3cofKe1Glb0+gX7szcMM24ttvkSXtvVR8opJBAD54AJ115iQZi33vIXpriGrf2xLHalBqXVJppWK+vD9Uluv3PBcStr1Qo354OO62hvJbhuTePM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782013594; c=relaxed/simple;
	bh=TvmDZ2O59Ua2DhVF45rhLHZJtlINe+0LQ5QDKnv5OJ8=;
	h=To:Subject:From:Message-Id:Date; b=RdUm0QWU8iC+kstvyCx/Fah3lW+MLLcFn2zsVMzmtI9w/1moYF+zHrjcb4uXaLuIosjlr9Jd4jRTG4LvY6oNpTwXF2X5Je8NoNaOBsydMd2C4fy+2LBB/XFMImHArAzUHbwTOCYXyQWw16pYYpOQowSOa7078mB2IKZrxc03cec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4Aa6wb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4Aa6wb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA5DC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782013593;
	bh=TvmDZ2O59Ua2DhVF45rhLHZJtlINe+0LQ5QDKnv5OJ8=;
	h=To:Subject:From:Date:From;
	b=C4Aa6wb0hr5oBVGPuM+b615yVXjjIgtgi2zNWYQE9xH1aqExy3eMWCCj5WCBJ9RGm
	 Qn9yLl3dYd1lTAIcrESTZ4CgNn0NzjS19Kn2e0103rPr6pWOk2nvXcK1CaO/dWOJvn
	 zgJtgd4J9b8om2ySzk9g8pQvsESe4qH/R14S+UvgOSSzEzDgMWXwDYQViAl7kZQKmw
	 nnWyRctK5qJZZmYth7Su4onCjP5NEf4dzLjq8fuRZl9d5ivZQbsq0/+y29NNCl197K
	 zhniMhh1rQvRuZDt+hFFphgU3CNlpk++TT3Zfv2AR0D6VR1lydDtM7RtbnTEM1MPJx
	 l5ycHHLupB96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47B8CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201359371.996.10199508769556622709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a2223a922d1d58f79c23e788e681baf11d54319654cee6a15a2cc73bd7177e
Date: Sun, 21 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782013593
