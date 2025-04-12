Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF51FFC54
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744475994; cv=none; b=E/IwIeDpilW3+KcoVN5I2zSm5n10TqWxe9fzsIy8c69XF4BwR7B8SAMiCJPuZ7eJJgAES0KIdtMLyT457owLoZ+2WUwxCtAHAbAq/fSlhB6ZXpeu7pMTNlahC4F1ebFIhg30oV89TCrWPe1HU2EJJjy/uVL1phv/vNaBSQ64URg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744475994; c=relaxed/simple;
	bh=OFQrYjeXEQdnfqQ1OofBGyyOhjfqSvwEmPSUGob5gV0=;
	h=To:Subject:From:Message-Id:Date; b=sYq3qsh/0G6wmUZxzp1MWI0rOSBVgY1/h7bTZ+vhUkC/IUKTAeDpuXxljKJmO7K+wWZjb1Mthv9lh7MjwYMubF4pC2RQ/ImMbWgusjEi6jkx4kSjWBLdpdQpdQ5rjSr+hoJzyDc+/6vxVKp0Pus2YFjhCAfYiObOqtjwHDn+HPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZEFru+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZEFru+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA41C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744475993;
	bh=OFQrYjeXEQdnfqQ1OofBGyyOhjfqSvwEmPSUGob5gV0=;
	h=To:Subject:From:Date:From;
	b=HZEFru+nS3emvMtBSjdPExp6M2aLMqFQYbk8eeWR9eIqE2MUa50bwYnIlB3kh3IB2
	 +MXhsx+B3b144Y8GriSFFfVUTignIKPa1jf+AG9bM2cP8b5NMHcFCKi7gGun0h+TWH
	 KBC50DBrzbC2ATslw+XftZhalFyo593ajhpaxRzMBOxSiabOhX7n4dA5BIHF44pgKw
	 j6tf31mh2RNTMmCK9PRkGlXcqNtfHutLl61AXCBCXmWjRuKDhEskfON+QpEY+64LID
	 bnNLUPi54aw7Pp7JZKq45UGNURL9YrGjd+xzYIlou+POwzmyJPdvI5Sts9tvGz15Uv
	 aLtl+7KQ05jEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98798C369B2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447599361.28585.18133234382308256275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1d7d7de7215765748736156289ee06aaa52a0abd185542eefc9c24b2de9bfb
Date: Sat, 12 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744475993
