Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E2283121
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756262394; cv=none; b=s2mGe05OVNbnU9jNmUtWzW7/7YvvApIbkJOB6IaF1XbDx0n/eFo44/OAIL3MugRpbPM8X9vc0fzIggPB+t39Hv2jS5TsdwLdmeu+x4GQOVHv2cXdoSFEi6OpPH4nSJU66Q9weZPb7ZQiE3KMD/zAsC6jBuDjscdKl0/VNCQUh/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756262394; c=relaxed/simple;
	bh=pSIbDm3crVdCQepqQXHQlWMSEo+bSdARpICSiMfatjg=;
	h=To:Subject:From:Message-Id:Date; b=a0bjV2Ch5IOrccG+1ogql44YfOpwoKnbUI/UgKNMUilp+5/v5GHdX/TJdruhixpTIJrb4Oibx0de4PL9/HqNb4m9Mb5g9oVUvhU8hz3zuh/q7Q0cGzoD06vqtCKbnSwmJSw8qUzkfrqftPTyYmzv/yf6Ayhq8NomxyW1QPlBfxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpNLCeG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpNLCeG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C02FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756262393;
	bh=pSIbDm3crVdCQepqQXHQlWMSEo+bSdARpICSiMfatjg=;
	h=To:Subject:From:Date:From;
	b=qpNLCeG8m/N9lEp7q6+qV4HcUXheHQB1qabityf9BfxcgR4Sue368lF2maVbduvJ9
	 raf9JaBh+n/j5h904+BMRwrNFr3tonanzeuLltJFc19xnIF2v1AoFYcMFQfTGlws1R
	 KHG0gnXSXxB2QeHflhCA1orSZVfsCGzA/Ce0SiU9rWfR8J7hzHvwQnkx+dF8x/hj2W
	 JFU83gT1DCi3VdaUECj5L39jkmu/qGNn2kYDE0JG3jOvAfg56GTl8N99TrmC8/ebcF
	 NRxa9wVXxLY00zzYDLJ4tBgqSOypP4CjZF11cZPzCfp2f2zTd4RX8Q+reMIJM2pcXB
	 FcmtfwQCwdEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC17CA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626239357.18572.13624771062682492613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f505d371bb3a86a7dd9b701ed6a213422a1f0a3403f5fd015c1d4ae7565e5cb
Date: Wed, 27 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756262393
