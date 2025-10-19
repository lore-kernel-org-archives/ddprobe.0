Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3414723B0
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760855394; cv=none; b=PiB4aaS4yV4Ul+6qKZgAbgbTbnpdrQL67Aea6S+cVrSWYVC/nRRwq8fLFGdWLNS0rbDAWEWLHgemVOV6QQ7wGGdhtZ75DAXPHtca9Q7mgZxFCRJK8NYq7ZEVwA5Lpa6sTLORIi+qg2aDID+Y6k5r1FntuU6kRno6iBVoLavxvZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760855394; c=relaxed/simple;
	bh=tXNoMkFb8n4WKqI+bx0TugbWGppc+hf3TQEby86kLzc=;
	h=To:Subject:From:Message-Id:Date; b=mSJ/PNDwIn+I7l0mL0bHIgUyhcgoCDQO5S9p1o+bzdG/QEblzcKeRiA/3GHsa1Yqk+0tYee0ge3uGNUais38t5bTaWVUrrHzqyE/Wt/TZwyVjJSHGqWExlDbIMLNIf/CgaRoyKaPg5beHt9xdB715wNzpB/GT7OWxX/2QkqIh/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niipbRvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niipbRvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69F2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760855393;
	bh=tXNoMkFb8n4WKqI+bx0TugbWGppc+hf3TQEby86kLzc=;
	h=To:Subject:From:Date:From;
	b=niipbRvCLbevLzYJrrr5J00NyuVYGILg/Hor+B6xCepF8/TfO12gTDaJKs102wPUp
	 HtJ+J2yQ0RQ8NiPrO6sTuWAzZv+DHlMzW29CGeig/5tQMQM1dQAOp4+E6FuHNJQzTI
	 ceyuOoVrR2PK27c+NUZel3Nkp3azPFE5/XZGzQGYFqYS/Wd0myWHdKfFZchWGe10Om
	 kBcdLqEOhRI6WQEd6LMAStlHj3OffXlapC8lVRJKf2RSF1qV8zjP/dlcWX8NNIttCG
	 YtT6zd0YAlVypUanIHM86W7J/bCuYBKZDeCSEliKVEgp9xE891E7EH4S/4hFbW/W4i
	 APO57rWniBSTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93171CCD1AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085539358.15554.8870726387107878436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b2bb1852a9e6de56df2fa4e0b4567128e820f00ff4f70fbeb43622b9d9b7cb
Date: Sun, 19 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760855393
