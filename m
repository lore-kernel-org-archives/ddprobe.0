Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B01A1F5827
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761466794; cv=none; b=Qg8yo8MhBgPyEGm8ad0WCISs4ShbO/rfIAzyGulCxYNZM1GcXzvPpYHS9JgPUL9A6RUG4jhNyRzA9i6eG/IUD/H6h364/zSQHnQwAxZaTDt2O1IeHypYm5R1Fp/ktHWQ2UTeQL3byOM4bc1+BLlVuN1FmLNY3EMvJVfnLGQ2E6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761466794; c=relaxed/simple;
	bh=9mzBJT2EMux/OFP6Pn/eu5iyS4HrcX/MwuO8sGvxdxA=;
	h=To:Subject:From:Message-Id:Date; b=aKp497+LFtrETO0MBxU1rYEC28WkbSlS0FScJ+MFfRkKrxVUZhBFiR1AgfPaCd72D5xg1aMyeuclSrh5HEe6BW7Ew5PhaEF9Q0swxSuxOb88sWMx7gsGvGe6sWYbDCddrL6ABKz9dttqFsiJOjheUyf9PSZqZdjfcocN/y45b9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jz9G8b/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jz9G8b/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D19C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761466793;
	bh=9mzBJT2EMux/OFP6Pn/eu5iyS4HrcX/MwuO8sGvxdxA=;
	h=To:Subject:From:Date:From;
	b=jz9G8b/u9lGIbtbWl+2oKjjAkuSKRs1/xUL8KVUtzfVBABq7w6pWWuR1eynhWgPIi
	 OMT1/5hQvTVZt+tgnB0Qxt858MXmq9SN49aBs1tTKDFfHEYVI86BTWkJQkzVXMRCtN
	 SsTvje/7nPTobhWGbkNo0sGSI5AQIsz4Uxlwp7uXHkptWInP+k7uEpvPQWPj0mvMB0
	 L/ab9nh+vlshmtT0NAyzPjE3BQNBn1A5Bo6Fy6miLl4mdqzs24PXZHZb7QXOycQr8u
	 s6Uxp8xPy8PXXKMwyTep+QWQJxFiPfqwXmmsoVuz1LexS+S9orFKkAlvJXMcYt6Hw7
	 weF7Ouj9BV+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96925CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146679358.2500.15590510165464475419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0e35801b7dbc68834ab5fc13c345a934222e0e02154c8cb462ec4bf463071b
Date: Sun, 26 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761466793
