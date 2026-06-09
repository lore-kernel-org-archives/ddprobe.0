Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6BF35E1CA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781014534; cv=none; b=PuxASWjv4tEb1JYlcGs5UShUpXBqXiNnehUVxrCDf0vZerwNbv/SXFDmZRtIshMJ+oS87DwjkDsrYjf9eufBuON6PmzR+Ah4jnSXOXLoMD/nkKpiMzJ8eeNXvnegHJzGKOrHu8PvCksVS0gPtGX0kOrQ4M29FRZfeKdOX1vhlkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781014534; c=relaxed/simple;
	bh=klv3bkkcjdlK55srZp9KtGIjsdTPxgLOEdezfzpW+5U=;
	h=To:Subject:From:Message-Id:Date; b=tAD/7nctuu8SwvYnkiUiixpM0C5THdgEvwBhcc5kcZDr55gMDUSAiTJ1RhkoSUPOuxicrDs/knw1t4wrQsJ/KE+yI0a9v7HE0XQX5v7HDVYAYpeJGH00IaCZYjQp7OTpV6R6ZRx8wAtihu9TBUfH4FltnwAvxqhdFcHxWQRvaMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAh1leK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAh1leK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D556AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781014533;
	bh=klv3bkkcjdlK55srZp9KtGIjsdTPxgLOEdezfzpW+5U=;
	h=To:Subject:From:Date:From;
	b=qAh1leK+yH8fttScSH5/mp5kkxKG2ebT7aveuds72PEVL9+urukOi5eU77Tpcbs7g
	 XiqVDJBXCu7rInO6hSzrhZayo479I/LbyPGtVigCCA/nKa06ebcv4OayM/uLr6JgYz
	 q6Wv3CxYZIKy/2Yu5lA26EsHMMSSNKK8DWMEaJQEcOrx3qu/lPWGbsZ16Xv7V1XYPC
	 y7iv+21JT7H0h75jKgZgZZKoPUqj7dxyCUS57E4xtcm4opsu/EmsuwJPDeaeJ8iy+r
	 oFM43iz7soOAs3GEMvwXGtpcRtTDebdtUHIQpofJ1pUhngz4CdboCM8NJvpprhh+Wh
	 YgcZg8/J4/fGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67D3CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101453373.24896.4092863752640446977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1b23aeb2f0a07cc12d5fb6bebfbd82ccf4adcc7edfa5aa2d2d1de8b544c836
Date: Tue, 09 Jun 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781014533
