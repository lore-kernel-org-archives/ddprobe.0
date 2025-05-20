Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A538254852
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747780795; cv=none; b=UBctbMxpPXZSvYM+EewlHVk93iz7KC4D5r8Lo32HrUpZMCQqy0Q1xb+HuTpYMc1FJUezEaUuMcsRUfzH/xZc4vSafmSN+jjOBwo11UFxAzRFAD7e6F0gLL7p2k+Z+CE+kjYZ7xQcD3G8I7ybp8qt5UdZgjD3VJe8fhPMqx+Wzbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747780795; c=relaxed/simple;
	bh=xmVBONDTdiRWHXu12HQrkSWSXNYU5OW+jJY3byNhKWI=;
	h=To:Subject:From:Message-Id:Date; b=aR25W7OLTleGrjcy5k3kA2/ypQKap3z1+14y288OoGEs5/r8alFT4TUfe+zyXnlPkNHGFBwlGAvzKlF3YxQ6Sw1tpG98EcknMuU5zgGz5JdkHs9mYRlbNX27mrF2gjFYOaKsh0ETNZF5MdzlHBoan+OIjLjqpnEZwf80dn/UwWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW14pYxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW14pYxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353AC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747780793;
	bh=xmVBONDTdiRWHXu12HQrkSWSXNYU5OW+jJY3byNhKWI=;
	h=To:Subject:From:Date:From;
	b=uW14pYxNn1xHXBFLEw93yxD6mDUXnzyWSM3dP1q0cKXCzQDb6FuRWjZSlTdGq3zk4
	 +rpJTsgnO3KVz6eWr2ltRrDnEWrjqZziFoyQDqflkwpHCXrUSSHdVw5Nyb807r/h56
	 bKBeg+FaZYPw35l+84MxVvgpx+QKIVI2G40MS1ihMLHGl0j64hyz9UYCkEQyJnqfQc
	 YXfkbsJF2VEV89ZWkqozKDQVQaDRvXuQTpAcJo2u4vIXcXBXU7nOfbkToG9JCmo841
	 iHH/9AM1wE52scUKQq6SP11gRS2xZYVOLZKD9Sgd8bYvh6lwTCTvJOpLZwAbaRFNGM
	 aAoOe8NxtTE9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389EC54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778079359.22993.9020027303031858679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e305c4df59fa7efda1e4091ef82e051260ceeebda8f5c6eb1d67e30ef3e4b5c
Date: Tue, 20 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747780793
