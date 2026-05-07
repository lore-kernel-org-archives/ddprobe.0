Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4AA3BED55
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778168854; cv=none; b=d5XtbpWfIGSYkcn6Ebe19h8q8Na4T3+tKAjHggrLzjN4LYNAJEInBYrTclipiVxVawdV0/VYs361+8y0aJst11X6R8ud+hgpQifnRt/yffW3Ju5e8hXpnreJxCv5sA51563LlP7jiRbmqMMc49DCGPx1BBUOOfnaqbFy7wkNdbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778168854; c=relaxed/simple;
	bh=yW17/q6Xgku/XqbMrUIp0aM16TfohKnnvqAdtHXZdpk=;
	h=To:Subject:From:Message-Id:Date; b=OPL9/QZQiX3xrXGjGw5E4ZunuS+4V3ZRH34ilGpM+FNVqqIvvyhlUQ7jrPF/XUbcSuqfRRF46VZ+r3Nqzt5oEuIc688pReBiDJ5G58y5XJhZhqNLbqlFBidAea69cszHMFsWWoGEYmKzLshXIdX1/07qqxsrpA8ub4t3g2ExIyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJY1ZDOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJY1ZDOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5C1C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778168853;
	bh=yW17/q6Xgku/XqbMrUIp0aM16TfohKnnvqAdtHXZdpk=;
	h=To:Subject:From:Date:From;
	b=nJY1ZDOmFTv+CvFbkbAdnU7RT2W4dyY9sajVo2NC4IO89wL5mi3wV4oHQzuoFdzjK
	 eEa/KbULmrrBPXbONLlx20oP0/0It7urOMYdFVe2o3paCdGmsCFtTG34EDOtxI/8Yj
	 POhRwVv/kZVDIEh5p2MQ6ziYbhZNWBNgxVWTXrEFfhHAAD8RDssw+UizCCUJUKvmPC
	 ifj/qJZvhCjcEOQys1hNjktxASiOCEHFBrhbyJE8G5DqVG/rN6tPjbU3DaV5Pw91PU
	 CAri+0jfMMbs2z/NAExqL5Q6rWMaTGfb9bah5OzBCOaQVeO3Ht6ZFDAOk4X9QYF2l9
	 5isoGOF+ZXZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA340CD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816885368.21058.3293249560446039584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db018987a08211380eb285a011ad572217ecc959fc73c83c704bd143ff61e603
Date: Thu, 07 May 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778168853
