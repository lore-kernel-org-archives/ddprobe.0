Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEF54A23
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767139434; cv=none; b=jVUnP/XXblnHx4Xlb22fwQ9D4UpmT3I6vPBEkODPWWzCXHegFAH0MNjSXXta3MTaKeGQpIM2o51eqf9RNdBw+zUMw2KETrJVX16OhNIbxkUXyG5GUbk3RgLV87zT/FUrBhkN+CfyFpBn9B57sWAhgkhZxb6lIPKmToKJqV2mi38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767139434; c=relaxed/simple;
	bh=8cTp2gA5sT9ybrwftJx4xfdjnH+miQmjvqS5e5ckRb8=;
	h=To:Subject:From:Message-Id:Date; b=nDbJOJHWbROGCSQ0EyJv3OzPKMdcG94CN4+4EhqGcZ+wNEuvvjd/2hAXjTXorv6dRSUqAeKxWzpLkhJbn5LRor28Gdw6RvrLdN6y85ejyizZO0iju7vihEguuu+YRTzMpz3AJ1l/mzJjfQWv8rsy45aeenRMFFHLfEnKSHGIFAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwHBb847; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwHBb847"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1097C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767139433;
	bh=8cTp2gA5sT9ybrwftJx4xfdjnH+miQmjvqS5e5ckRb8=;
	h=To:Subject:From:Date:From;
	b=GwHBb8477IoOaVVYBUph8oFIKEWpx8rYxaC0T11wZddkdmc7QUIb9F1q7995AaBGJ
	 HRtpAi3CzoK2AAKRq+6u4i5EhzTslntVmLxnZVdQeQq2fukCmeH/TKg6KPvdGC1o73
	 GVuZt4cS8nQnAwlMQb1hSsplMS7JQJue98dyQIc6mNzHDK5aWtW+b3rGOU6hwjPFnt
	 JKvmz62El9AlHs50CLgaTaoZ+LFAx5JA3N2/TElxxDU0Fa13HDwS6PoubWtnaAFFuX
	 DbWoz8dkEwUJKchus/M0A2KXPA76nyOda476j8kW/HNuPDLCDCMtppF9K80P/NQDe5
	 SbxTMB0+svY5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E9EE57CA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713943357.6283.12381538696965015348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8ef804e28cb6f56ed5ee0b4e3903219bf0a8335990575166dec309aed09694
Date: Wed, 31 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767139433
