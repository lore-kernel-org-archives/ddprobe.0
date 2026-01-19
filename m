Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162B823B62B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768788834; cv=none; b=CFix/vFlygQPaZ70vKTT2supxbRW++DiQPO3WDkDxD/MwNSfczFZjD+2Js0R8Ot8WXeOxBXs2xcs6nBwZW5Kj5Zim5PsXBddZzx3orkSAzdFlE9JKy1DwG+XlRBd4FBtX4fJVj6dqfsp6NjPOsMOrZm3aOpQU/7MI2+KTVMFY6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768788834; c=relaxed/simple;
	bh=Mb3jKx2JP9ulPSrYUH6XFOmF/iz4pIa/Nr8cRi5QN+k=;
	h=To:Subject:From:Message-Id:Date; b=FYQmTDX5rvTWeSF3+fF7xHGJJI612RtUahb622cdKl0qxY9mk7VQNhA1/c9hTrb6x8d+Hu637zjU4/AjqXU1iD8uprCzdNIcklxqryul+WEzhjlDOPcf4jG78iBhjQIJDG05ahT3Q9w6kUSDuhjYhhpNMRI9yyJ4UIhivaB73rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vb6Kmndt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vb6Kmndt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB48CC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768788833;
	bh=Mb3jKx2JP9ulPSrYUH6XFOmF/iz4pIa/Nr8cRi5QN+k=;
	h=To:Subject:From:Date:From;
	b=Vb6KmndtRpKHF5uEg5ohaXUpZ3drxWVlYfMszZN8DSfBY6GTdGHPXLnAA67DwsR4e
	 C/uebCbra7QpODeG4O0CX0nabbjRumalZC+zUpn/aTckoiw7uwS51w3XE3gKFgZqLv
	 cpHNlA3KwBrHSIwZSdhhBgISqReIQ1jJrF0Tqzf7nA6uV8fi8r/dShLGzWgJmh9TmZ
	 kmH0L2abElNB3WPekzL3dKNtM8SkC8p9LLEa0WXPEbc2PPo1koFKA81IYwSpjfxRqD
	 SSsmfPyc7UPHvWZ3jeyJHQhaALioFEKd9gzavc85bs7UKED+h68iF3zhm+GyQFyHri
	 GP81BZ5eFRwnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9881FC98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878883358.30441.11624093879462241273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbd97f31b99e63a75ddbe89a781a9a9dd6c2db67e721fe87778f730dff8d8cc
Date: Mon, 19 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768788833
