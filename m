Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142FE28FD
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759380595; cv=none; b=Ai+J+GOlWnbicqhE4rf5O6fPi6zrOXWv52MFmllWj6Qa7YO8bIt9agye5OL8G06kEQWspTr4ykMQ2j+xlCQpt4qRVrHxiDWNnKWWKOZEaFC+jbp2rOYzNyWmTiAlBz8eNnO6S27PP9xFARRWOnqiNYHkNEbOLPXWvk+gZpoZ/Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759380595; c=relaxed/simple;
	bh=2MnLcFi61VKy2nSq3Bm6px2aTBllUG+0SDPzoIVm0Oo=;
	h=To:Subject:From:Message-Id:Date; b=GxaQKZ1rbBm5ybzweqeBtNPkIID/ZZIk38iNEkS6HnKQDg6ZGOKdFQSwkeDAwUGdeX/6gDQnSQ4Hy8wq95zJsVdzbsAXJMIpxVXV6vZvFvf5bycMNPxUnHPdy2pK5/P2aw2g17GijIaldsY7A/VgSaHZSECN/pDtr+62QoZazlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3WHNZwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3WHNZwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5684C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759380593;
	bh=2MnLcFi61VKy2nSq3Bm6px2aTBllUG+0SDPzoIVm0Oo=;
	h=To:Subject:From:Date:From;
	b=D3WHNZwy7I4fxKUiwMDd//ErDuM/o5xWmZsQROb1rH4wzfxWo7YCEp+DEYWcGwr5d
	 5fL+XV1SfEuXEllg8g3jRHOKaoeXtZ+J5sjjWHQMXMHIK/fovxjEU7oOSN/7wYuyZ3
	 C5a7T0bGUoREKTS66f9nsfr+TirEDUHEXgrK4KZs4V+SlDH8ddW3aHnQU7j6CGWinl
	 VMXNTp+3KKTcucW5atp2r5M8Kw9mCfCqJwVghurwNJJ2WpPCDdxPhgn7KxZoTi7yUu
	 gFwg04981YxTRw8Q2WxZKh8rBbeRGCYYb2Jj5lm2n5ZUv+3xPxcl/zPH20qpgFeRmf
	 /P0PdItlqD0UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949D6CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938059357.21026.7833050729943102128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65ca779b07ca6d9ec9ddde03373b59b93b9dec0b606f26fb11c6b760453e89b
Date: Thu, 02 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759380593
