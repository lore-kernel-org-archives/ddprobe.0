Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511CAF516
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714308743; cv=none; b=bivUpmfVdrmD30oW6OlR6bbStKB0b0Y3ww17icRKsqjfTZOxrW+4lawrfg2b95Rh2RXptRi6VSqnGzvaLKnCIGL+EKziEyiWOifMiy36KKkIMk9oQNtYEEW99Lh85VlNXJRY0rf6CC6NdDVP7M/AkjxUhSf1Dxxt8fcAijarJa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714308743; c=relaxed/simple;
	bh=3g6QPb0AJ8wv0TNCGu3vPPJdl1tS+6+ZdVIyTfttx9A=;
	h=To:Subject:From:Message-Id:Date; b=I7MbRPLtRkwZdUL7/sz8q9tzY74rciyDapBOUjFa3GbRwTdKBZEyNdVLQjVRovri9agvQYojEfxnDT5ALzGyJ3/oOmeUX97y8gPtD3DlavFbcozmcVIr+H0y+JioppJsaiW1wzIXVsY+X3Bc+0tCH5T0SRwHyq4ltGCleF5seYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhheW/mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhheW/mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9008C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714308742;
	bh=3g6QPb0AJ8wv0TNCGu3vPPJdl1tS+6+ZdVIyTfttx9A=;
	h=To:Subject:From:Date:From;
	b=nhheW/mbZgDVNGiqJs4w5p21M7gtzfLkOaCEdjJffICDF9myw2C1kq+XTLVk1MlZm
	 XvO1E0BjvBTm+B7WNjWOA38H6Gw6fgzMiMVtxaQM+UFmPD+OIf8K7dXE+U7pSdAljq
	 wiNhHWq9H2vZ2WeJCz9BkaPGz/Ti6OKdN94K3RbvLYfqtTtqdZzlcVztTrPnZSFFcf
	 I9Yg8r93Trw5k2rdh083jH45Gn4KoUETJkLgaXX1MT3KlkINzhjxhTf9gpsY8Sxyk5
	 dQbLVK1Cd8wRA4qIR2DCD8lYJoWHpucGh2TREoHFgNFF5NvdrdrHzC9XBKrFS+zT0S
	 ERS6GqKcRFZng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B76C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430874276.15921.10674977769244363557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a207e2927ebe6f9e0635a5d35a1343024fcc339ffc37c2c45d07db118494bfa
Date: Sun, 28 Apr 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714308742
