Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F206B2DECBF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773194694; cv=none; b=eacBOS83JKOO9Q0h7C8ZcOqVYH0xXyJwXioVnwuzIdkhGPd8zPtwxhokTfVRUw3kFVK8I4+3Jn4WP13HvRevQY9P/OheCgv3+a1H/AAeHUhd5tarlxJubcwCZgj7xXsidhO+f0SZkQftdTptyHxsC+vNH4R0iajBRHcc4/ZLva0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773194694; c=relaxed/simple;
	bh=IIqJIgsC2WpZkgnMp/mfum3WlDQv/5VhmZpWWNvoajs=;
	h=To:Subject:From:Message-Id:Date; b=BrIcb7KBDF094ZX+CsFQFqo8W1LiscCnnUIMhs7kMfsJeeuwH8EcgB37puxnPOgs4aC//QwUZ4TegtUiOPb4UXxSaSRP3OJkknnK2Sg3z6JT14IjK47drz4Ru6r+ZNN/QIWO7z4PJlB8ZOgsnJRA7KhDAlLkdNKy/ndzAk+Ekl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSGSAVkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSGSAVkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A766AC2BC87
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773194693;
	bh=IIqJIgsC2WpZkgnMp/mfum3WlDQv/5VhmZpWWNvoajs=;
	h=To:Subject:From:Date:From;
	b=kSGSAVkAz5xBJYVkESsmdi0tlHWwBzZ4ojr5+am+jSpsAb3zAus2OLfcoaSbZikmK
	 eN13Noj0bRhs5OK61f6KwW3ONNSDtqJX+wlXFty+tYUl3rr5Ql+mDVep3hPieWPGoi
	 SQVvrKNvNSl/krDR/ae/u91uwUqIJUnlXEq0PVLmRGKIzv6bdFfQ1raVZhIX2AThwx
	 pH0ihf9rK2sNfdubPvHIq4OYVlUWYA2TIG3xzQXo462YYs/nFq1JPLIjkUCILtRbRW
	 6qFWflIpeFbjhTwagAipLX4mXaWp4V5usDu9J+ij+CXTEZQpsm3ZNXqMF7t2/EEBne
	 go1YrIII1Gbbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97911FD88D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319469358.11982.4072103602490331396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e1ba651ff8c04be0e02dfcbb0e6dbc611c46ed1c00bc786e4bc93661f17b6a
Date: Wed, 11 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773194693
