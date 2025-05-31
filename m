Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423881E1E1B
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748678994; cv=none; b=BxKi42aL+86GFgYhJgRtUyCIUdpntGTFq1LRRPTWPNxesQqW7wpx+iAkPzqJNwyfIuePh41Z0ju1C3ud1iScJB8n8d97BAuy02PL8xUj2V8nKcFuJE2aMLadg42xMos5cFYuXrW3zm+mNnCyTZ3lfUO9yw07sqtqvGzpm7JvyCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748678994; c=relaxed/simple;
	bh=DWKp53b31R03taDVFXNp3XAUh3BjRI0J/3t5WrlF8vE=;
	h=To:Subject:From:Message-Id:Date; b=ox8qvGlbhCT/ZLuWX5jVdpY/gdYzbk5BmGDemAuaAglA1GWkOxD53fukU7xIDO4C6ztD3kVz5/MrhXr+ADdOsR2luUknZagJxsEVaD3YgZ6KGgzy1RHOKWXzKKNgh2ol7GHwFQRiW5zmZJsfKcibTAeY+GsCeldBsWmH8eB9jxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qO0HAZRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qO0HAZRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A999FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748678993;
	bh=DWKp53b31R03taDVFXNp3XAUh3BjRI0J/3t5WrlF8vE=;
	h=To:Subject:From:Date:From;
	b=qO0HAZRI3kL60fTa9vscLeDcnnyAizMpSpK407AbjgkzxlSNGHAS9GlgV4kwTnqEW
	 E9e1FHRZgNFaF/xnZyl7kf9Cf182LyooXzcpbFGHsU3PEhA5sNzmnMI9MDMjc6e+DW
	 Wn7gC8w9LgkY+kST/BGMdTxtuSYbHBlSfGoUzUKa8JxUN4yG9oespVxEbwA0UqW+An
	 0Z0VsUXG7M2+a2BB+CQMNKBYFwct0qIybL0RmB3zaR21+R7GW5O0e4PV+eUAZPpM4k
	 U+880Q4ka5vv/IfB3Y5n76ukknfWguCwA9pFBmiarkQ0II4yPU+b0rmFjhMjX1uF1q
	 Hu+6Hn0YvcMLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96578C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867899358.14077.3429725668559791582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003fe1f2a9ad7a662c1e1fb13b3faffa33bf480be59de6b3f4d1ea73f29db780
Date: Sat, 31 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748678993
