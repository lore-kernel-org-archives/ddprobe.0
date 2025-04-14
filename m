Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647C919258E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744647594; cv=none; b=J4hqnSMqdPBRldPyBfLH8rANDyU3ju9qnBiEZ3jMSiy9xaScX6nwhtV4ydC9kpuZI/pMTqgNpcSvi/HeXloDMqo75S8AyXcdurPAAyFoM8qm6GfM97trAZ3wp7Ob50MnvuVT5fDD5dhMsvTMlyILu4DOSTAqpSrKFfFF86AzeZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744647594; c=relaxed/simple;
	bh=MeMPfsnnVhxI0ETYH78+WIu8qHuxAF2KdM+mSv7Hw6U=;
	h=To:Subject:From:Message-Id:Date; b=aa+jlzvBioeti6qSvyCKDNRuOT+fhMSoYkimWJqJiK+3XXkXqc2Gky/ghMg7moaGmR4C4dZMCrKsHj8QfnXYPyLS7wenA0QNiSXg9T9qaqUoCocgF3FPrqN3rLluQGqt9MHU2KeU/5TJTYqyuxyUX8sMxAY26iZbk4FX9FUvhKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsNW2sni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsNW2sni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6917C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744647593;
	bh=MeMPfsnnVhxI0ETYH78+WIu8qHuxAF2KdM+mSv7Hw6U=;
	h=To:Subject:From:Date:From;
	b=OsNW2sniQCWj0eSVmLJUnNAH6asgyGZRNx7Ay6U8be8slwVM/WhZJ2fXvLuu/AZVH
	 xLi6KsgjaGgja/ZUPy7YqkgSr1eAZnfZCl+AFryuwubdHQ6EU2uv5LaUJL6dH7+rbO
	 LmcEfO4hVSn6sDUGa4+Ov0o00sXx7l5+NgWRzKFknQCAAWe7EYLLrbQEom+DZObj3k
	 Yu74hxwchdB6zpmoyHs4u+p8zt9b35Zf3utwjeSTKUxIpxajXCoXEFeWHAQrZoiA1F
	 eBCicpSoektCpHF3lUwD2xQZSRTsUQeawHywHfKNLW/9Poi8ElxKoNce3XzIcy+As+
	 8F86d80gSuGQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55FCC369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464759371.18728.14942080763529337050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a77b12c3e7c33b0d7dc94f339ab5f1946fb6ad567b46785ebc9f16debb6460f
Date: Mon, 14 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744647593
