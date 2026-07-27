Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2FE3E3D98
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785160234; cv=none; b=rFJNcxz7Rsy4IFILf9WNB2Bb7DZSlc4N1PgK9kSLl8HXoS02yEVj5T8GBiv80uvjLIBT8aMOsAqbUQ6X1qS5+ukkTqIKVxmPiT74NBTo/ySSTJtReKEh0Fm445/RTd8MKIIlWjjhG/Qy2hl1FvsqeJHMbiwcfv/8jT22CCGlySE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785160234; c=relaxed/simple;
	bh=pdYl8FLf5feTMpq9SHNmMmwz4aGVt9HMAVoVVu6HINw=;
	h=To:Subject:From:Message-Id:Date; b=Xun1Lxl2cxsN+Ourg9f2nAYL+nZFcJPN4UQIZxEPIXZwLy6fWY6p5cI+A7xJ8fsnluUJYuyVazX6bGcnf47NC7KUCWtDpx5uwjN9zVkwjXGQBxqRJbrwj7BOh+vp0vIgo3mEYY2jYTdXd8aixCwmhhG52CGu4Ow/GkiCgZKxD3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6qAmyb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6qAmyb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8888C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785160233;
	bh=pdYl8FLf5feTMpq9SHNmMmwz4aGVt9HMAVoVVu6HINw=;
	h=To:Subject:From:Date:From;
	b=X6qAmyb4jUWfek/fFsqT/kdN+6asJ7zsFjUKNXqLlDL5VMxxjQ5diy4BxNSEbXniy
	 B7Zr+Hns2eYUuzIUYUk3rGcgzEtpGaby4f+dxWQTRHTP6EumsSmjalIdPOd+UDdAch
	 9mCBg+O0hV548khN5hBpp1H6B8ncOvRTVMgqbF5lnr2vX4tycSNOdfH9gLgaUA8+zG
	 N9Zj7KyV8U0GHdgCEYNwPkYNBRIQ6CfJH8Gptt4lOahzcuhVn7nMbmDXN+3RewKtlN
	 aGhIt8w2+Q1rgFvZxLVfyMAqKpi/o6dI+s1WLGTL0A60oM/12Yls5XEoh+hub4DXZX
	 zU+KdaR4hcHIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9EFC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516023376.22059.9775730796410565032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c252c2175dbd88c8f693017becabadfb098c4547668b69d6d420e9a55dd68bd
Date: Mon, 27 Jul 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785160233
