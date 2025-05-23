Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B76E286D45
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747987794; cv=none; b=oKAmRvZiDJim0OeNBjZArVBeqIAbfJixATOXYPoFLOBPIjjfZRc+lwCvypqGSoBXyH4te3F7plj2NNa9/uzaYTrjuM/nNpeR8GgRLPukkIAWV8NUvHqCOZIsFJ7K7+Eh+RPGxPOJTPY/gJRrTIBPB4/DV+lp4DFEG5c7/6jSR/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747987794; c=relaxed/simple;
	bh=txAYs3OE5LBbO5d9nE/67yl8fHqlffut0BlPKxK22kw=;
	h=To:Subject:From:Message-Id:Date; b=hAfmjqgIfi5XmHEweyHVRa0IwtSnDXwyIQVULCu/WesAfFrGqkgm2uAPbSgQmOamAOcYie8Y8PI65vytLoVSaMkPcTyOYNwfE3sIkwAun5Sr44KkGvsalbdMB28BnNVYtbcfjWM5aHwx/TSWlldgZaaSF3lDSibwkSrk7LSDx/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0YBIRL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0YBIRL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A81C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747987793;
	bh=txAYs3OE5LBbO5d9nE/67yl8fHqlffut0BlPKxK22kw=;
	h=To:Subject:From:Date:From;
	b=b0YBIRL42k9mKZLAUL4trpQFEUeQsxqHxO/RDan/+2EUcMoNRi+dTBiXLZMaCdzaV
	 TlQNKg+QQpQ/ddgs4gOGvimaBW85Vf4/tnHUSFj581fTShwNGcN5OSvfZTcgXcBh64
	 g932E5qJ7O8HfkeqSh/QbHUDqVi3y0s8ruodr3MC7isiKkS/Y2vE0zDf6pPGsZD7vB
	 JWK37758RLiyY5tMmWmST3ahCbTtoXdo4TTIeLo1QtsWt/cUDFiJM6yNfu0kn5OHjq
	 w/63+uq9Y4/gKH72OIoH8etlz8EnYFFR6CXshx/sz4xXQSdWZISR66ZeKfbIMInpfQ
	 svP5UiHtZuy6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E9C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798779357.7069.1073319215963731327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea347641f5087a16c8d10ccc10a03372f384e06f8ecd6b07036b05650ef0b81
Date: Fri, 23 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747987793
