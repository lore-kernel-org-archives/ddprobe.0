Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2EE2EDD7E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771398894; cv=none; b=i9YTKd9SdQeRgQZ5Ym8gA2r7FmqGrdHvwjRDIklB6peY0fYGSMvXWxTI+WC29iXv7CwDhTltEPG11dkrkA5Cy0R1/oDi9LEHOBjB94vy9tq0oj9VwMdXnx028XbuPj1muRoTLBH0BPMI3WhiEuU5rZNOKLjWIKs4uoLt3W4XdPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771398894; c=relaxed/simple;
	bh=hp+qgREccEKgp7/zuqVCyM3IljFalZWWZFnaWac9BpI=;
	h=To:Subject:From:Message-Id:Date; b=A0sUykvsZcTTT0JCWDDJclM+fgCDmi9d2srU75/29YBjdZ+MJbIKB7ba1M9GLyBLEj7sRNzxrKuiOAqXibZme3DVd7/mn6JgMdsQAg5QmDhUzOmRuhHwtT2VUQcKIvPEbEt4bdBfCA1no2MvvrQB3oRvDm9J52tq23jPD6FR6AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtaQQSYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtaQQSYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C9DC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771398893;
	bh=hp+qgREccEKgp7/zuqVCyM3IljFalZWWZFnaWac9BpI=;
	h=To:Subject:From:Date:From;
	b=RtaQQSYsHyti1u4e1Adr0LQq/MYf+cuqITFVU5BqQr2q5d/N5+RuY/DCgLlumLUpE
	 QmqqOAH7RTtWGdGvCDSPRTiaEVxIyiMEGFMDjK7vKbSE8zQa4XdL0eyb0xGQdIqz9m
	 YvE8VETNY2LKx32aBwI8CUmKydFh5KJmKabsLoIpij3oAUOmjLKN1auqr/K9wB/ZnK
	 VrRFk95OKxhtUI88zgvDTKnI92bACQT2rD6rJ7rGvpvDqp/xaeS+xNeFnQ5kAQdPUV
	 Jf1PauSytJqepvgA3wNezAWPPnRtGtj+cyD/kWIWvbXF/o4sTno6aDkzFSkkkvz4bL
	 VO2zZZs1Uwhow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9AEE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139889361.13254.227696966102527686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d53c7f016b88aedbf207a44b9fe6631bae74c00735a23b11e46c386cd90ef9b
Date: Wed, 18 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771398893
