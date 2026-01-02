Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8FF4A21
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767315234; cv=none; b=noMfl76XXZ7u44K1TQrUozsHSQQ5VZrDqvejgXqVgICbBGp11Ozc6FsH+YxopyDIv1sVZSeXG6CR2OAQIidxNV/uKeCEo248PctCeTSP1H6JM3o7OpG9xeP9O9mAGMD5LW/Ypoh3RhuWnfH/jKAZ99yphZj0zxiaNMia6TiSJrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767315234; c=relaxed/simple;
	bh=pTTDBV2HolvD0GqUl9LzUJcQGjbjcv1bFo1VqCjjNdU=;
	h=To:Subject:From:Message-Id:Date; b=AC2nPqzo2Q8iEWIVWwzVOa7mWr0+sWc6yn7e++jGayDp2uBz0SmXfQJu7PAYLI+kpdrqPLji5bbZHC93gWy+QDrNwuHNcTfeHHsK7lBs3SJauEEaetkV3S+7xj+mZXzNLw5Z7ZYXNCfuZxzid0f/w4GNsZPjmOrw1R9CW0LhrpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdN6zKP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdN6zKP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EFBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767315233;
	bh=pTTDBV2HolvD0GqUl9LzUJcQGjbjcv1bFo1VqCjjNdU=;
	h=To:Subject:From:Date:From;
	b=VdN6zKP0BvmKp49dU5mVXtBMw89P7JncwDd/zZCWw36VR7H2BiyAS5o4pYDMS+wXA
	 8xudU7+E1tc850mpp3KksA0k8McnN5dJ7vRFHacWzJwSliNorJT2a34S96CGmtmnQX
	 McbSq5k/988xkElpWo4PASOZ2GvvwuPOi0cBOrsfyHXUVAbmRGvmtysRSqjyrr0pIS
	 U8SzJURVrW11vqg+U7/nj6eHYD0m62dRPE+gkY7Feudq++jjvA0O7jlOHvJEwxIFGq
	 skLrENp40/wFu4+hjGBG7Kvcz/1Llz5ymvQWt8nb8qnzCVDt9gKZx6m5NMv/iSbden
	 fDMYVdAJfPBQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955F8FA3724
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731523357.11376.4876258061910495537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f3089775b790c7fbb53c7475bd6746e52e1d9195b02f2df439398518150be6
Date: Fri, 02 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767315233
