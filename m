Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEB2F9D9
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745688595; cv=none; b=tZNqFSV3HGCFgIovDlo/EMwYEf2u65qw/XSj/Lj4jd1fbLr7+tHtoBdKvEvP/Dsxlu0a4qJN5857QQhEGEF3wFP8uTbjyCY21doWejSPZXrB6m3FXn+JKTVq5vu+sGvUuPit/OpCk2ncPY3+j+Rh+EfVPNNu/kvXbCWwTvgJGQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745688595; c=relaxed/simple;
	bh=Lf6FW8ACYb5iUufg7M9t5ZDB7ejIY4MQEDsmzRzfY7I=;
	h=To:Subject:From:Message-Id:Date; b=mT/L1AVdZ4ZJqzT26bQMj3K97uI+u7pRFPV9NvFxLPHhFfQylzrq6n1ZOyFyS6RdFtSy4NAxfSFz2wVsKsrNWav/HnBbxrWU64aewgwr84voYFVKFRpuD0InlMNxqHqmFIubagPTtDchKGpwZOFozjzcdJG6jfvJfXMpX1l9W+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bM8yv/gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bM8yv/gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D3FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745688593;
	bh=Lf6FW8ACYb5iUufg7M9t5ZDB7ejIY4MQEDsmzRzfY7I=;
	h=To:Subject:From:Date:From;
	b=bM8yv/ggGqqR9I1u2D5rKpkYj898LrQXdMVsVp0sUd1IX4XIISPrDXBbser8Gu8ts
	 yp2xHb2NxIn7xADgKMojnjk5mXNhF1kL7ehjOEE0RGFcLp3UPhjVsJcTMCmExqlJ7E
	 495bmbvCjSqXATR1P8e0c33Rg7OdFnmQDgriZU/slgldxLyYJG8CDPvEGOcbCc7Gbv
	 aA5jk3Eo6iwAiCJKh361++jE+pafCwa8TTFOaEqqsDMw5VQ1vS3d1XXspMucwDjpYv
	 uEWKJBQeNk4UPaT6gpyztQNC0HPXiYlxUEoTCx/bf4qF7jcBR7fL8M67Cc5zwOZP1Z
	 r7AxQAOpsaoZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA6C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568859357.13061.10661015932172444401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f25ae8870b8aaf021bd8ddfc4240176ef0cf993ae816ec8f1d7be5534ce1dc
Date: Sat, 26 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745688593
