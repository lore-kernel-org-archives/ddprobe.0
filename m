Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACDC2AE77
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756699794; cv=none; b=ci3bjRnMGlz0QgyBVqS3PHVbBIBGG+DHvgIpVpy8HuVRND97TGGsdpYEAhHER3+2QDz4eYMmeCLVFCQFMvx7ozY7h5OCWAvZIoqK7MsYQE3SDAzXymLOGamCJwmkufnJ49rdTa7HCDPuL4jQscrEgEuTflBlKeECr4WvN/2yuZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756699794; c=relaxed/simple;
	bh=f2Oi2Vvt6Mnsaxp9RGuNu2dSsM/4GthAjvgXfgyTBBI=;
	h=To:Subject:From:Message-Id:Date; b=TnBzNfd0gPjAR0ElFhoo3u15WvDc3yPCTiHCxCi76518wIhpHUVHYTejlrEA+i1otenESLDzGCqPgFmLCtnbcJilI7IJ5gvnyfV3rt00ivfUB++ClXUXJJKhuJiN/elr612iwyBkJZ4qfPnb9eV6HvidkrXWpaA+B91eBagbwGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzK8E9eV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzK8E9eV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D71C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756699793;
	bh=f2Oi2Vvt6Mnsaxp9RGuNu2dSsM/4GthAjvgXfgyTBBI=;
	h=To:Subject:From:Date:From;
	b=dzK8E9eVhfwukScieOVpUOQRog1a3VShgwTREWQIhixLaz3RCwSY1L7+ENGEBMe7q
	 ob1aHfE2Eug6cwNtdnkfcb90O1QDB96jd0/nPUKFzIST8fLTUgwnX1B0FzuJq/xq90
	 kr7IMvsd2/dSzDhsG63Tx2JYsL44rmO3b+MOAat1Nv9LnjxTGogQ81Nxw0mvHy/z8p
	 0NGD0/cfpNv4CIZhSXcT3M1Nn7eBWD7CduWQprkuB6X3+kbDHkeqigje0+V4eNx2xs
	 RQ/m0kOAdy49dMokXwJ79raq6avAay1lHQFQyS90q2Er+nNg8yt6pdFFoezKF8qEzj
	 tsFijO1OhhBPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECFCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669979357.3760.2962954945627226568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f91a4a0ec80950b0c9dcbe10578ec74520f766c4bcb6e96827f21c42c729d9
Date: Mon, 01 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756699793
