Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1048617C96
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715740943; cv=none; b=RHIwaH2OybJLX6QFicTToGu48fp+XatQHVRk2fQ1tyaoCatqwVVUWYDcmg5yuIWEIlmJ7+0aewb87EVdOAZVNBFtAeSv8JCwV+vlbptP3x+jUfIyEg5xF0++XwKM/gLffTJlw7ruF8/Je434hX1RMUSneJxyFF3I0xQLofqIL6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715740943; c=relaxed/simple;
	bh=xUgeSVlEr/sPRo/8OQCCnhXGK6FXcc4MWYtCslbRWaI=;
	h=To:Subject:From:Message-Id:Date; b=rrUtwMyw1jdJp42YxQLmvY82Lm429+ff3N8rqQoIQzpyVTlgXKgvXETondFMs/9ScRoQc3AgVjnrbPqWdYNdjFVuPn/8rDG2gszT/e0NvzrHgDqkcZr1dPOChkjb/A6oyZYvb3mX/Hv9IZsAhJusOYjCGSM3YWh1ugAuhwdKfbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqgYG0/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqgYG0/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B82C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715740942;
	bh=xUgeSVlEr/sPRo/8OQCCnhXGK6FXcc4MWYtCslbRWaI=;
	h=To:Subject:From:Date:From;
	b=UqgYG0/DOd6fxUxMLsBTe1nyzC//w5hnSk27fWJCAhT2dUdMuKy7EzuOg2XDQr1s2
	 OgU/fAvwitl9Yafnnb62H9zbfGO642OeAdEiwxAH5b3t0wcLVG54dUylW6prR4UkSb
	 O7psA0sFQWYVwPmxL1NM3yecjAwb+aCqdZdWWQemPhSe4qrud6tTd7ug6xFQMk3A7m
	 XEPqZJQ6yvbWp1Z8Ly1GJR6fZtSKuFdXXuWWhDhXUwh8bYi1kYT24U2MoVNeeic279
	 lfp9c3o4TmBmB+w6Dqh/7b0UDnHsg5G4eJjzl/xKVqSE4PA+gpgr+IFLsf3hQfz0Yp
	 nBOz8YOCCYnxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDEAC04FFE
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574094284.8607.9490751182755706528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2509b05855f6af48a3f3fc2f5318dfca5fa86a7b8a20b960c818389867809679
Date: Wed, 15 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715740942
