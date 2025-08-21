Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7391DFCE
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755796793; cv=none; b=qYfctfTSZF0mKcGSHsp8zOx91DTydyHSarGOIO+VanwcjYUCK/RLRiK/OXaq0GzCpJpYTX+I+8CbCoT6VMF2U2AyEno0DKyV10schfDKNJt7b+E6CpPQDaVgkGfUud0xedpc4XZg6/YzCFM5pBus7Ktm+4Fzy2cxRCzbA6v05XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755796793; c=relaxed/simple;
	bh=MDtOPzT/vbgOYV8URPYv0cROtAXRh0ZqGP9r5afp//E=;
	h=To:Subject:From:Message-Id:Date; b=Kq1p+0AXieMhppRJo/5rcwxSSAp9CkiIfXozfSCZxtJK3tp9APOGGkkEDBxcCJGAX0zlq9ETHA/bJyGnzaQHtIzfMCa1qNMAjk7LotkjJEQ3yPUbNLoNB1eZqkoa3YbPmDuFwCQ8Ws6Q1aZeqo0LWU9GCrtZ7F+MqnGYIh+mWGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5DjWiPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5DjWiPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5D2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755796793;
	bh=MDtOPzT/vbgOYV8URPYv0cROtAXRh0ZqGP9r5afp//E=;
	h=To:Subject:From:Date:From;
	b=t5DjWiPhcHmgQ/Ya1QfpinrEq3xdcVC9kBKvO0XAHCzm2tolY+/0JlW4gti5NwpmD
	 WTIk08l5EY4wfFNhFJHbI4uIrwRz42+72eOU4gsqE+Eba9aRKEFnOHFbf+1Xo2G+tQ
	 Fv7FOOHDZt1eENaBv36VHxJYDxT2WqaCKshY15BWg5B/Jikfhq2DEtH+zUgFib6Uxn
	 8WTJq6vUK/IZi72x1aXd2+XALxEil90ltnKYm7pvZYHEKfY6We3P9iTVcPH7Q9FyLD
	 QUwFFgf9ZkmMrL1dfV04DlIbpIKBAZ6rNzYxB+p6SfCWBgC9pCeo4y5rEXsNiMgDfc
	 txsqL8kQ3jxcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AACA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579679357.10167.12882917924143652691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ad638832e85e6d5e22beeab745f3d7c2f68650034dbf5c23f9a1c16fecbe4f
Date: Thu, 21 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755796793
