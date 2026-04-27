Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1363E4C93
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777310254; cv=none; b=ioAWt1vERgnuvM5g/u6oWOCvXPHN6VkiPeOVEjCNNLv0ZinVdRB4O9KSQWi0UQTDB7YRMhfPVHFd+hN/PLLj13+fQyFZMzH+XM3M0WLZRYDX8km1rjU5grfbkNXC7+iFgEEA5+sgX5japEiUqwnHf9xGNZcMyfKFl6i76gOv0Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777310254; c=relaxed/simple;
	bh=evkQpnZFrhx1DgLKlYCmm08Wilx/0kZ3skUwAXfXBuc=;
	h=To:Subject:From:Message-Id:Date; b=u/hBOy4Ld7VnNEPOOOJe/YcFPeRczh5hRfbo1vjAT2c+4nhewGc4PvVoXQLzklva0lDhp0nvOZV1QUrG7XFqpoTsEdBe+X/R1DRmWSdexA8utQnK+1FcXRIJb+7cVoGOpp+EGt3znGAwAKB+WONm90jsh3KaaxTHhYxHvxRGqdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INEfQDmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INEfQDmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A87C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777310253;
	bh=evkQpnZFrhx1DgLKlYCmm08Wilx/0kZ3skUwAXfXBuc=;
	h=To:Subject:From:Date:From;
	b=INEfQDmnMYJr7IhhJz1uZvl2R53hBURtye2FssVkY0n9xNh2OJ32/82C3WBReAYVG
	 XZUaeD7T3BCAVtMfi7UjICcDk0IWRz4dA2aX/2HY0E3pdMfoXKa09Q0DMF44olQTLB
	 aC02U0Rpt5RGQOkmHum3pAVnvHRExN4yPdMUXYBi/sJu3imjR+UUsyElImvT/sGHKX
	 CJ0RiLIzbnA5WMy7ToblVtwuta4Ij9HzHnQDl0WV1LKNKOYJbIHY2epVQpf7rwwLV3
	 19VMo9X88lO11zekBnveW5DYQDRLB8Zx6FKojD3mcI8Wt6qETeYHkzg/dzRQGEuIA3
	 UKRJUuHY52mrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2448FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731025372.2853.16760091067013183394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071bbe2c9a5763079c13f23897b14ed63178d71a68a9427402c43dacd4d0abde
Date: Mon, 27 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777310253
