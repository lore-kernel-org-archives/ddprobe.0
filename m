Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405F1B661
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721449554; cv=none; b=M6oIznvnGx6nxNT+jeFCecBCFrUnZ+cMePg2jxQsQ4H6qwuA9CcgYjUJB3radlI8QG9iyLs9L60GE8yYNHBO1p3VAzuCOTqwr5sR9VUfi6OazwciT99pN3E1HjNDIItjjMNE6nDIXV7yJi60lft8dd0T8xdHe0ojCHIszXB0Q4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721449554; c=relaxed/simple;
	bh=vtcJJ1BpOijOXR1xldDlij6dNn0Ixc1ymDCo1OyuLgg=;
	h=To:Subject:From:Message-Id:Date; b=IFzSUwSWxG59fd5v6oohnDF3TLkJy+VGK5bR3Lr94CS79VDBfIuAvMz/E4O9eDj6rZekih6pbY3GsuQIpEx9X9Rm5CBVIJTw/dvMfI6A8JH4xhm55HrWHertpNSGxYLIU3zpFg3ETjwvmtNylnG1mO/GCmRCWnrvP0w6MW7jWAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf+nLPDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf+nLPDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CD8C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721449553;
	bh=vtcJJ1BpOijOXR1xldDlij6dNn0Ixc1ymDCo1OyuLgg=;
	h=To:Subject:From:Date:From;
	b=Pf+nLPDCvWBTjY7rz8WiTdWMpGdkH/RxbmVdd+VtBg5DLf4pgJqv51bsL449/L5dg
	 Hyv5Rbn8tEJOE6ZOgKBivNhw8hRFGe6bwHnPigicG/3i9VIAhCCwLkpT37o92hQwjg
	 +NfVMsZb/BoRV6QYuHwANUzo0ZjpPEXnOqDVg6Zk2X8S0iSI/Ow/iXljE1ZGlPpYUA
	 1v3DRUTuHRgYbZWNduCUcgzatIqQm5jclqYrCv50u/8OV/yEGu6ow2R1E6R/dTA5gJ
	 YmXLXwB459o6kcO6qatPvxvw+Q5V8XLgx7FF93/L4KFsPrtZWdptPxj/4n65QVIK36
	 /7yiqiiffWo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB583C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172144955367.28435.7947801448637426393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b07cb9a6843092b263e5cd56abcc10efd89ffdecf25acb8b60eace0bb93f4a5
Date: Sat, 20 Jul 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721449553
