Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208477081F
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771080894; cv=none; b=k2Z1ssAZrWhy4VqyBIDB+l++lnQV358aT0GP1Xwzm/QlJlE0HwwuxoqfyFpF/RxEkeQpliP9YUR5cYJXID+IkEXL0/P9EEUlTwaWMHtuH0m1K/d4cF4QFh4GLK28VaGXc7+Bnzf29h5QorIms2zCjJdiBSHuXa5PSJk7RGSXrYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771080894; c=relaxed/simple;
	bh=GG9dOq3I+9621CZnkg/yoL4iUlZ76eSUOdbZLZIy/LM=;
	h=To:Subject:From:Message-Id:Date; b=RCLAPPOWdLGpzR9lhaqJB4XCxoVt5h/WByIfiipgmAtL2mZpleNM/bk8XqDcNRWOCMveNi9CRXfk91DX8naRt9WfaBpOB8c0qH8mrCq4QbE/qaIx7JyJeSqtZlgSyGRAqYgilNRLQAXBt5Sf7PCND4SqsYzq+JnGuv34sDcF+XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQaB1EDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQaB1EDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AE5C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771080893;
	bh=GG9dOq3I+9621CZnkg/yoL4iUlZ76eSUOdbZLZIy/LM=;
	h=To:Subject:From:Date:From;
	b=qQaB1EDz9nTGidt9027SYX7jrzHe/zOEyfB6Xrk2wt367rWVJ8VCVfd5f5g7Arhv3
	 V+BBdJp2w5PzRFwSsdm2DxeLUnKh+Rz+J2MKv09aD/N9B/PLcUV8KRxIHrx22z6SOf
	 4SfUgF4lyyNOnrfcWqmGeh+79fme8VyYBI2lxUZL/8Tdk2uI83E90rPe9HGjaCzA07
	 yRQ7bfqxo5KplKqpMbl+Gso6lYUOLTEtISBWczSVb1nn8vmovMsIMuMRLtW2rgsqua
	 JefrOYchQ/4zwhEv5suBclVD8XoIBdiBRZ/b1SFXTXRA6VpggJ9Jn58CdeJiEcpjPs
	 W6MUnOTq077Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0046EDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108089364.14196.15867192835847888103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f5bcfd43e0702b05196d6244b625f8210f5649b88d8331241182c9cd2d91d8
Date: Sat, 14 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771080893
