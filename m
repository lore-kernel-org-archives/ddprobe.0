Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180CD2E7F18
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755358194; cv=none; b=TTI01lJnt3WKuN0rX5LZlo6VfTvqw9p0SgsFtP1ggUrhQaUVmXU9II43JCqcUtT7kOU/brTFxT+6nzlNjJh135zEd/SGRpLmGRQ12qaPqliK8CkSZTliZcPUosGkmYfDQYuLQeGutc2YYsqX7AjUM7CNyyJBeC6a7nZiEzpWXck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755358194; c=relaxed/simple;
	bh=CoieNc3qc7b6uBU3AdPSbWSPsFUzccURAE3D37QzFyo=;
	h=To:Subject:From:Message-Id:Date; b=jsU8uLLU3yfcXGaV26/IpMq6AHFYAP6tCeraWXviDDTePa7pPkthVvk2o0fwNKz/PwGzsYMALVXummA2yCSl9XGJ6ixTVW9Tim6eJXIfiuWxVt+B5JQRKfvxiPr38F0ME3l4VRbV4X72qUxOQwwvZW90wnXv7zcRa10/TfO9fzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDdH4ldG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDdH4ldG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755358193;
	bh=CoieNc3qc7b6uBU3AdPSbWSPsFUzccURAE3D37QzFyo=;
	h=To:Subject:From:Date:From;
	b=kDdH4ldGRt9i0lY0yFkq1gkl851oxbFwADE89o3hmwgjzqW+mf+t9dbPiP6/MdHDw
	 GSMnLGrr3qOwq85EmAllacM/unsOpKJr8/zb/mbH9O4lQkPdZ1XGpY731uq+P1QsT6
	 yKWl8E3MbkA/MtXB9eIPsZfvS7RMlsTvglwkkf1+5crc5BZqsdfW8MBb36JvcNbqoB
	 GQwwBu30r5PLl5G5gu3yPkMN0+gmdbRDJJdCNPJIs7A8VzfYt7pBngOISXfEajMQuo
	 9TV8ngZshkZX80QAETsmRLw+IWsWHYEj0JgxdyhIGQczKJrQwk4BQu2yz6IAt+F4Ey
	 Ep3oM09jLRfhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F86FCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535819357.1851.15302360028402103239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8271f22bd6baf45ab9a72aa235113730607cb0118b3376a7258d7cd29b3b5b
Date: Sat, 16 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755358193
