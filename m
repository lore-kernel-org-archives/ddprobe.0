Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3684C372
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742086794; cv=none; b=Rgc+Y0BDFz99q9BndyeQH8If5q+ZCZq3VPoxgqm1CbP52/YZ+ATUpHtlO3HMTn6HdXMlRJVUDcI2w+Df858/N8HzMqs6aH22pcaGhr/BgCQCCOihiz2VtNudBsgerIQQ0j45DOblubn7rD0vQHJxqtK0im4ocl+xvhpsPorEa7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742086794; c=relaxed/simple;
	bh=kJVKHIsTFdhw8U5ZM/u/tDeObDjUJum8WuvYCNDUmko=;
	h=To:Subject:From:Message-Id:Date; b=elmP41O1IpkIxUH7ilPV4U/GlvgGXxNq8HnDSlh0/DP1R8aPgI9V5y9vO/cK9tTqOyfvffRAaMlv26GaWH08n+wAT3JvogkSWdfiNgVVDty8Eg106sBRwlWsqX41vwhDKuJ02a7fRBFT1wGu3hnvvSJeyp1x6yDAhZ+UDW1e6Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKrhB587; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKrhB587"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4B4C4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742086793;
	bh=kJVKHIsTFdhw8U5ZM/u/tDeObDjUJum8WuvYCNDUmko=;
	h=To:Subject:From:Date:From;
	b=NKrhB587RWRsGF0agVw+0suYeoRXqQLDihp6NJMr1ZQWuSqWsN+xfJXOqQjC/0Q7q
	 /j9pxa//w4hJy9XYg1HqZSMR58RSzqEJYjGSKnf8hyTOKWUj5Fh4RK5ejh6xvV+LmB
	 JIFfeVKzSAUqLEJabXXKMcPkr/NYhHaJk7hQYC+WbGSTR2PMLyHZcyZu0sUtW9Vk3m
	 Pmxym/0U0025WuY4S2+nF3+IPX46zl/oRqitzi/M8EKW8+gyW9BRBp5GZ0RZRHXBO4
	 QD+sxEXL5g/zRtfxlHxwNuZQuC01D4hGqJJCspHLFOzKDfJmyX/LTBrSWi9QdqgCDF
	 Y7TouHyFnHHAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960B6C28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174208679360.881.6863351552983577090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e22d6810651d9ac067b5d5943842dc6b500c1875af5378367671d919bfc728
Date: Sun, 16 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742086793
