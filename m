Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080511799F
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759897794; cv=none; b=q7M9Vc2M51WjjQenhsyTKJuidyyZcm80mZVKNdBhaGA3OGZ947koEPoiBsabwcZJLe/sXM68PcBad3Pd+VNqsAwABaIsvJFPoDybS9WUkKlMW6v8iPYNnGG6mReMJRFwv48fuknFTi1bTdjBgImbZqCb4u+3BAKZixf7LdKMobI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759897794; c=relaxed/simple;
	bh=LLlayS8Fq+11+rc9hA9efs/8T5XgbhJtsWh1f9hh0Ds=;
	h=To:Subject:From:Message-Id:Date; b=NKS6CBc32SjisXMhjwGbfdm3EtI8S1y4nHUZiVLqhJFBxh2Ce7mRFHTl6ZbzKzPCm5PDgD4dzRyOIV86+G+5cqmGDg5NRoRPRmmgZg7c/6LARd+MT/RfznSpAJtIB/RWOVjurE6rpuO94ybe8BVZ/ldsZprW38/zU3QSj3Arn4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLUxwPrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLUxwPrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8EEC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759897793;
	bh=LLlayS8Fq+11+rc9hA9efs/8T5XgbhJtsWh1f9hh0Ds=;
	h=To:Subject:From:Date:From;
	b=YLUxwPrd3wxiLEZ/227iIbzx6cIJK4xN9Zji8k8mT3Zqw509Il0fHhQVYF1Jt5pid
	 SZKYl5hv/dttKPvo5GcWuqF3dQ5E4S5yUnPcnjloQevrFpBfJXBtKXnRnCvdx4tB58
	 MuugFX8ey7RWvHaJtR5SIckfrpbPp3c9pi1MrAq1kazPNXY3zVZKQILNVfErpVr2Ee
	 7THhiTAEACEahaHaLarrlOgpUmQqDi5D0UNgEdY9iy5CZR5w6ISPeX6rPS7W2JCsIf
	 x4M2/dnMa0RXf/pnmphgcrpRS6OqzhbPwRkGlNWHLPPysOdj6qFKBr9+jlZqginXUj
	 3pSOW/VwIJu+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17BCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989779357.8652.4104294991405430741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002d6b699e34f47fb1d1f099608e3368a29b8dc5e40da866455d5f88e1c03867
Date: Wed, 08 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759897793
