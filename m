Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5993033936B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787583634; cv=none; b=X7Y5spRKVetlsYGzfEP5HzCBT6FK/N5dPEQbmSdapv3z3rtNGHIj7UPicPeGLxo50HexIIS2j8opH1R2pMm0MYepO1b5fXmF9NudG8GuUt27a11XH521GeiRb/qXcRvexJGkvZ+KcA7Qvclvc8xhofbuwBYjcOHqZoRzhvVMK4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787583634; c=relaxed/simple;
	bh=8sEa2JUQ4vWptrACggg07kZKFuYxubF97m+46rIs78Y=;
	h=To:Subject:From:Message-Id:Date; b=QMIwQWYqBII3yMvprOUPB/rQhujvX1MYekL54NV9C5hlqsb2qvgWn64/qkFib8DLkZctY+xcI+cq15q4p6Zw8+LLpFKvhYcxyJvbRX2fph7eiz41t6p4/Qe+ZNkoploArigknJ2S00oNTKFs2Ixai77wPcE/x2dxkF+Cs2O8vVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSzWxlTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSzWxlTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D736EC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787583633;
	bh=8sEa2JUQ4vWptrACggg07kZKFuYxubF97m+46rIs78Y=;
	h=To:Subject:From:Date:From;
	b=pSzWxlTEnFF59rKGzM5ZyqAe6aakya8MzA8T2+3hgcDR8+GTywdRVLFI0pJCixiuD
	 oXW811A8xIq2bEKM+MotLb1Xd+1TRvtaBa4cRGdjAKUcwLBTK7xvTRPw0DnYu2jEx6
	 xLdZLdoCNxuBI6u1Q+YN/GNCpaB/EN80uIpy6WIczlV+66aZEgH153EKMNjhh0PE7c
	 pTOJWP9Rr2p1TKDjZRuYHhcdZm4XCXaN0fnSxZWO9YsTyLQIjOFt1aYVEktovc46A1
	 Z5FGjfYGbfQsOXjR9ruVpo2XjgrDqiaqkxBUpIBzLicIo3Or4mJ0a3s4L3NqXQYPJt
	 tVYBptDF8djWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10E7C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758363371.27965.16166670095140197126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99e95a1f6deeff975225f2e9c15c6117774b11138d34f36ea0feb1de7c74226
Date: Mon, 24 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787583633
