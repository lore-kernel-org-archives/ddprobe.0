Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351BF1A9F90
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765433574; cv=none; b=OhdCEcm945fWrAB5Lsrfr1Q8QPSHMYcypUtPeVnXxrBy3JDZ6nBtpx9DdvF1ZnP0rc1MlnhQwG5MSt5hg0Nz7qUCt2flVJ7GSQ5bibaF7wd56F1BNNCWIe2URUfWICOm/fIq2DgSxASaXKUAvIbVFp2pGQT1b9RDtneP95duXn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765433574; c=relaxed/simple;
	bh=E8lrqakOFKWnLcThT4qdPbFFXCLuOzEQxAKKZdbdVqM=;
	h=To:Subject:From:Message-Id:Date; b=IgQ9xUkbhF01OYWUev6balBGJQhGju9FJJfxzbX3Nk7HOfMLxEsdIk4akflBfQa/8TojVlvICxO5KgRDJyKeZUccTUbv8Zs+6VTtC6QJyAlmz4vF1zX7dg/2uvf2slaXBxhz0toWkH3wLD+Igx7N4nDwfYAH4OR/2dlwwQJJhu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzMC7fUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzMC7fUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77FEC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765433573;
	bh=E8lrqakOFKWnLcThT4qdPbFFXCLuOzEQxAKKZdbdVqM=;
	h=To:Subject:From:Date:From;
	b=tzMC7fUgbdfiYgWbcWCeQV561SUA1Lv1tiaGRjqLDbCphW6K+PzLY2+G2XD+MBi77
	 cj+ofwF5cOyJcLGzO4TbdA1hAcJ81CjrFBhMuFeQ0TOdHe55Bl1yPuIsyBVwP6YmOE
	 0EAscRz4wZsQpL/T7MKJU7DwQ5owCXZ2s4wvZcY5FWDA3gWELI60BN/tElWbF3wuZc
	 2a/C5sW62/WaxTiHh30pJNtU/Bf233QgEVbLwfuYBfcFQn8xMo3yRJTO6wQ/YNtwdE
	 DNpPh+E1maprVa4MNHw3VOwOQU3dvUJu3ROnjUW8wpsZP/dMT4RDUWGecmpYWkSnVx
	 dH5mhyJPoZm3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938BED3E797
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543357359.16585.645942703343563811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7116c90cc72dd4adbd6ae6bc62e09dbbad8bc4c01a248162f20fc3581fd0a8
Date: Thu, 11 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765433573
