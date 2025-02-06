Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658F718B03
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738815954; cv=none; b=X8dyVFzDZQWlq61SKf0nsHcnavGm+i1juyBuze3txr9SLzXWKt1mAVlLTWeiWPPbJG93L7EN1AS2ih8kjI+KLd8ugcnRw1qQNBxVbkDp6yCS0/kZoxanW6iI2Qnh8K4AAxmgMo7eZcL1I4l+cXUESr3hQ9A761wZRILLg1DrITQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738815954; c=relaxed/simple;
	bh=0n9lWmP78sNwqfmTEUqTITbmC2C9lrdFDP/gjiN3Xks=;
	h=To:Subject:From:Message-Id:Date; b=i4ngzNPBtEXaMJO/WU5hsVx0xOVhGMwl0WUGpDRfcEf9Ge+JRYSAxZ90MeH03i23UYq0TnCrgcY1ASeKfTmf7fesoppL0VcQkYiZsfUzx8BzR9guBjtHbmw1rD8PXyG9YHHGfC63AbCXn+EHotTVb9Sx8d2lS7UA6yRX2sa6M8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzxUoqfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzxUoqfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2B8C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738815953;
	bh=0n9lWmP78sNwqfmTEUqTITbmC2C9lrdFDP/gjiN3Xks=;
	h=To:Subject:From:Date:From;
	b=tzxUoqfx0ENO+hGgMz1PStqyl9G19SJPLe3PuXo8gRpomNkZnghiYxPw9B5QjuLIf
	 rRM20q+Ak/qRVpsBXpe3YFLqH7d7TyOkbOITe5+tqDvzPE3YH+HutNIrVCS30JNHs7
	 RRnYqR6VSUoHrnHznUA79s0x33MNea/hqnDuHBbFM4TH5S9cp7T4DhuOoKvpS3JIL5
	 ZNf5n7Y9bT0q+PPeO7vtRcpvMNld2hsF8AuZa0UXaHI9XeJhxhknCH6G32aqVIleuf
	 fAHXVnyA/3CCDUpZQrhJp6/RogmHNSLq+Gyei8JsTTq2ffRMxAICXjXiAYFf+2dTjv
	 3IEpdqrOlqZSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A191C02198
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881595360.18872.615267807398095199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fda5d5070df321749a6e87ca2074f58308bca997623a9bac1f16be9f2b7caee
Date: Thu, 06 Feb 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738815953
