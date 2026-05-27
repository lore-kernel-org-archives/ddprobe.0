Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8ED313543
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779864154; cv=none; b=H+YP8Q3mztfdSyhRSM6XND6q5x8+I18eTxDsMIeOQT9NLRvzvcU0gQs11NdJ2FRaHfH/Enzhcx8gyDfKkwzJh2wwd9thjZbD9UUV3yC7oqGcmI06jfKI+Dp/qy+pjJ9irxgp5dFzihfTpFm2vBEV5yxscjSTPKUJD4IP+u9BVuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779864154; c=relaxed/simple;
	bh=aZXqHOsY+KMfAPZqBmSOwanvC0r9+sst5eFZPZMQU2o=;
	h=To:Subject:From:Message-Id:Date; b=tBLnpAAeRz/s8zbluCJsqGnqCauallISmNtrF6OPJuEXQ+DEDHORP+MJh1rm21Uv9WLHh6kj0sgGgVmmOJRr45jFJVEJqO8YNm3idduODtDqbM4f2lo3kSKG3CAPpK0L1gRMFM0JH0iANx5jMoocZjKeTev38dzGnvKYmLpCgRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERoBVUNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERoBVUNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6D5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779864153;
	bh=aZXqHOsY+KMfAPZqBmSOwanvC0r9+sst5eFZPZMQU2o=;
	h=To:Subject:From:Date:From;
	b=ERoBVUNwwpHROz33NiNrxHI2fX2QfrVN6+UKxZa04/j/n0WqK9o/3lh6h3djxo6QL
	 BhRERt+F5xwO60bWxlDF9a1QwQ3tr18A2oDi9awE02IgZnR/za3n6DPT5peXWCevgn
	 anyG3cjasgfMZY5LLOx9LQCw+3qBge+bPrMM3SdzvClMqsjCKmuadp0wOGfgkRlzZH
	 wVBYmK7qyVa26mkYB4Ysamcrw8Edh7Vlt/z7IO4Jr+NqOP1oZw4DfY4iio5O7sMmXL
	 abck/eZjQRwmmGldfssixi/+28PaLk+bmOTj0oX9hSZFxmizX/pibndSvZ9D8Mex7z
	 RaQzpygLcXFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7838CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986415367.2712.16966851322146774103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d442e7407f70a67ddc6bc4336db16da3ed50c78a31d1a32edbf44e4483e4c2b7
Date: Wed, 27 May 2026 06:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779864153
