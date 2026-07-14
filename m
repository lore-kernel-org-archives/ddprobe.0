Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D3A3F660B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784016513; cv=none; b=RTogDzYxbhcN+EYFh9crHqkY8la4g2aw0KUBpAz6r/yH2kC2GEWfV7+QmKGP0r+P65SIu9y42ZL6xpS4DoL8HbKq4NlySyu6AV6v9HiIVFsYiVZQRXckhU3w+FA41+DwO6BZ6Q+cTipehz1eZG2nnLT0n6N8UiqoMIhT6I2307s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784016513; c=relaxed/simple;
	bh=5PqFbmtju5wp2LIwu3qJREB22z+anZgFkeFmvnqXGoM=;
	h=To:Subject:From:Message-Id:Date; b=jFXcyV3BGUF7p8C0bW+jzAPKFfbsX5z0OzN/Mkjwc3lNkhFrXbwiqsacxXDSYUmYqMFHwiZcw1qLqWPVRj/6s39P5cCz23Xi901wFZKb5/62ujnmZSH/mjhXky0rezQ/ZSs2jnew/+yHh1iA0YiTAF+mLNPSYT4qMWBKdKDIFKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+OCsy4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+OCsy4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB98AC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784016513;
	bh=5PqFbmtju5wp2LIwu3qJREB22z+anZgFkeFmvnqXGoM=;
	h=To:Subject:From:Date:From;
	b=a+OCsy4FDVGGCXDgHUNglyLEZYjXznmmJQnIau0I2DGAXKN5WcYYphHnnLmMaYq0a
	 Z7dlk9CeYHT7+Gvc0xItZR6Lw3Yes5lEOzgak6RShZODWMnenYf/ONUZL9Bsdi2T0k
	 A7aK4DFbBdQfKLMgmIHsASp9PSSL9mzRkMMpVGLBisduf+4fjiPesPVVX7LkQx5RVx
	 k+EG3E7iUBbY/Z9pazxInGdRWHQE0U9SGClssvTmNoQuOZHkg/xjk7urXOrpZMTRVG
	 LxqPzX8JpamE/OGEVvxcyXsfCChC40ZJB+ZU5zefCdz3EQI3gS9PY53WIpQ3GIU6u4
	 Jkl4AnO3u71OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF8C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401651368.27465.17692265939324288894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7deb2a6ae0bd8ec67c65d86151b9c541e0950d75cd41304bd5fbd8d733d5da
Date: Tue, 14 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784016513
