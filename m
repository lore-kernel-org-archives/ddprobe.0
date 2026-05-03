Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB86188596
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777777054; cv=none; b=N5mO3AsRRcvuIlW41H3YTjg4zQHdJSoGYKFeI6l7HC+cX9YCb2Wv5PlZDboDEE/HMphXvakLFZvebZn2b0bNK4GtddVe/dhrMG8p8i1JqovfK1nftYu00vx6MiNojr++wNJHEanKE7EJgcbiWGsWQ4yXiHJks4olZO3b8ihapJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777777054; c=relaxed/simple;
	bh=iPJ6a5zJ9Zakuv+AW4mPnj5L6tAM7qLFIbaCsJ0s3hQ=;
	h=To:Subject:From:Message-Id:Date; b=B95an5be896t4Ns4c+g3+xHRjrygNnOChFiVuP8RMK9DXQ+Ie1V8t7Ml6ACVxziELdbY59KoiH7KR0X0v5N4PF8S7LIOoaPrCZn72Rr8ZnFboAC/3UayNcNoy9MeRupKR5FwLl5zsBawCqqhs7lcUxWz+J6+xbzaSEQdnPtJcxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI05ZowC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI05ZowC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18A8C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777777053;
	bh=iPJ6a5zJ9Zakuv+AW4mPnj5L6tAM7qLFIbaCsJ0s3hQ=;
	h=To:Subject:From:Date:From;
	b=RI05ZowC2XrbeEJd+rLQsvIweLAxzUk53vcLSoZV/6ywYNu3PEy4Bi8GotiEvDTh8
	 Kge8BLbn5InA2lOK0fL3YZiSrdCWGzJ7AzeGu1ynSqzHmgEha7n2ZqwFCIBLz1T4GL
	 +xCV1ZRD2ci9KaNzCBR4M4SxkrCziFtR2VQNKYzpuUJ6u2bhL7ZtGRZAnO1nQM8+UO
	 9wSIw91tWUxef31DUC5noGKWwalufzwl0y5C0nU7rQ97ceqE4LK4+EcekH7iEBRaPT
	 mG7r50Z7fyMHyw2l2I0/a67NWqRMCVP7sLfQ7LIRouZ/ZD8LcRtOppSaZxaBd106CM
	 cAcF8e+3j2+oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6D5CD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777705368.5646.1041560312015291260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18bbd4057bf9c40827b2ba759589d3644b7d66c3bb298977fcdae8aa82eb094
Date: Sun, 03 May 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777777053
