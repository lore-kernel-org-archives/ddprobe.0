Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D2A3F7881
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774356294; cv=none; b=AGzef3UJy9cqbqH2NFnqntS2triL8M9M1Bz7QRup9x299p3ANz7cC8ErqXPfcTsKiztmDN7FJGD4iQLWjEhh3k/zaC/atpqWGoxHs33qveAOqPYjE6HSYKLvM8ZSwv4R4nn/VhZfVBhhZArlmcfIuK3e1fAheH80JHtf84Hrc1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774356294; c=relaxed/simple;
	bh=S8eZNN9vgRnK0WE7L1Szx8pNFLFAPU1/k4vh+H7E2V8=;
	h=To:Subject:From:Message-Id:Date; b=rcv67V1iCytIKnvk7TNqWxi5NNyUlPGxovg56kIr8QjvNh6hyjqtk5ivdGuAiD0Bz2crr3g1zJWu5Kuxeija1/OFkJWi8uMzOJXkv6LX5JtXabtreThILBtybNjMLW+p/+rJnJRn8jlVFLlXrF1tAkQ+ra5+qpwa8SWJRBetedY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXHIjXFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXHIjXFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C73EC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774356293;
	bh=S8eZNN9vgRnK0WE7L1Szx8pNFLFAPU1/k4vh+H7E2V8=;
	h=To:Subject:From:Date:From;
	b=rXHIjXFuHVQrqDCdR6wb9o8HzUXmhCPjimeK3C6e2VlqNPYxyBlu5iGyk6jVegPMu
	 Regn5Wl1JvxrKuNMb6El9IW9kfXG2f6Bf3+apr8LvIV0aEIiBf7GyNjKj2vGbv0zNv
	 u9nvCYTRV3Eh2yFcPCd8b9Hq/3d353c5nCKTC7tAWr7TpPF7MCSsdFQKipj6V5O59i
	 9UgpMtjwNnWownPZiZh/2HVuGBofpcLUIyAn+saavjZHaEx9D0RR+wo/OGsd0n9q+I
	 qq5DpuIhTtX94Oi/r8mjyY8Rf2V6ifq5+bmg1Rs5Ai894aYY/XsTiY3lQjMF9Lh5zI
	 VPGlwJZIrd18Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5CE9A779
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435629358.9011.12328117075815621192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64c108c519f42fca0617af55ef0db61d175d71dfc557a46b78c9b9b39f45e4f
Date: Tue, 24 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774356293
