Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E7C19DFAB
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753560594; cv=none; b=Vv2NATqLgc8VPg5Q5IpAUhRZZimYxEg5/k+Ys4TSa56T3LpJQQ5mt/vxsEE5aQTtJtN2NxcC1+4OKYnaq94u2ushbMuG/AVkdOBhlWg4F5NYa4GOXxgZ3x8d0lXe/PMfCKxRpBKu4CjPwGUiGuP5bkc8ZQUaCr8av2k1EHCDqY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753560594; c=relaxed/simple;
	bh=d65mqLSHScE1Dbwv3WLmRHSD98p6l37r6qVzZySCru4=;
	h=To:Subject:From:Message-Id:Date; b=WmJYDk/bt9Xq5uME9FesfRDExXX6kAyR966PIg+0H7Np/OBlKZFPn5VXyOG3vrVm6A5S4Oroh2WOrYVPyZrXV1RiD4/aW6DL4DF6AK9/c9FMnYZIdTwyfYj2dbiasekXksDIcY2QhoGxq8jg/qvOF1R7VAsZlQLuiOI3PUCgddA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbsaWbga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbsaWbga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A78C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753560593;
	bh=d65mqLSHScE1Dbwv3WLmRHSD98p6l37r6qVzZySCru4=;
	h=To:Subject:From:Date:From;
	b=mbsaWbgaT6mW1/MDPscHxO09leCz3ilKgmlY0hF3GBlEGYhAwkgMRRt0WN0ZtL8ZI
	 1ZKsS3POae35RtS2hQJqiJkNm3ZO91aZkrZTrv/X3uH5pjd9arUsy3v8qlJ3kjFF1E
	 oxXaUcpr28yYk2tOVaAS7xa1PmUFvARROMogD7TR4fGm2jsojR2ibp0CLApV4EuQxM
	 qZPvzcMIuwvWRSpH/rDAFunAjHZ46QNWmekuA1/lwjmbs9pdPVTMh0QxTrjHMgU411
	 Ni+oOGUA3GA/IAeFqlA4DbUUBBK6CSKZ4mgnHTd15iDUZBToJ8/jC4e5DqlElsl3Vc
	 fOZ9ZM88chAqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC8C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356059357.5648.4820910895172670783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cafb442e7c2203b65add918785128e01b5c9cc12583967415cec0380281cf3
Date: Sat, 26 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753560593
