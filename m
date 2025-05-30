Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6FA15DBB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748573994; cv=none; b=jR4xoo6G8vw5xWgrB86bN49V2F2sT7gm3UKmLIpGDdGh7LhNDUldbfTmViq8au1dEtowc0k7mRXDKIto5REwG9yPEYrVJ1LA3BisiRfvmL4/YsCtrhyKghqcfZ0F7aOIQBuHgOc+eXKIOAkzEyHdsoTg6isj0AjTtyoACVQdefA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748573994; c=relaxed/simple;
	bh=/HLukAF94m1226zQg3Y3NgUij6g9LMr3pngyDx7yZqo=;
	h=To:Subject:From:Message-Id:Date; b=MhHPIcBznVeMj2FGkYWmvIetVzZgHe3gn4iw9peKcB3u4/LxHXS3YroNY7zntt6OjadEV9c500ZtLgrwngacREhen/vYfjquA3qlT+fxJbYAJCcxJuwoWaxfBTZW2p4qq5PxJrdIxobWyE4no4H6iF171Bwd426MmRcrFpyToQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqQpwBbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqQpwBbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2221C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748573993;
	bh=/HLukAF94m1226zQg3Y3NgUij6g9LMr3pngyDx7yZqo=;
	h=To:Subject:From:Date:From;
	b=aqQpwBbDq7tflj/8E0md/aIv+6U2KnQvCELCvrrHHDNre28PKruNzAZWcfqAM9fgX
	 awDswdK4/Jo6cWKWCDg4ob+rr9JeiCWKv2o1VFLn4c9uAR7ko5jrLBqPa4FITFeZnX
	 eMUJi7FpPr4MHQvDenqWqcBLj1IGkfK2TerKq+LGbLSSjn3ZtYnjdtVIdMvbHEW2IO
	 qKgQElzzfERhDwtZr14tMqEzsp45OlQuouXqBnFeSz0ftH9SbzSDr0hSz0sdUbXWgh
	 xbj2/QkvUDQw5o5t4t9lYDO7ASbMH2iUOgJeJq8OJd5nBbJ2yfqTOtWbGtPSA0bI09
	 Y4HgxRMApioiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DCC5AE59
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857399358.1043.3735776943609981036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a7fda5cce6eed5b1ce784245e8510d372ffa2764f2bcd4a9589482f3c4f7be
Date: Fri, 30 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748573993
