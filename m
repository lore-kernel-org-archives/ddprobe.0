Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D523A3808
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776239854; cv=none; b=mQbn6E8VqyXK/By2NYYXyqizdQ7KXHmCtJAZgUulbJAZbrmkFURrC10QA04to9r5oIYrHAyfTykuOh7YdcE+oMjCbGJkXPT1HnrAWgehX7s7sFc0kvSSkaU20a+qWtDnTXoSHzvkiLRZpEZ+popOz38Eg1Gn70Ei+uEkUkgpwH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776239854; c=relaxed/simple;
	bh=MlNJbfSSsx73mTslG83pHUxIt5ZZ7kJM3nwrzpk+eps=;
	h=To:Subject:From:Message-Id:Date; b=dEC1v/mFfxV4c1vjufw3843WDbXEo0omFD9+hkY3gvEgkJtLi324ImHZMkjkd9NI6LYLhWfpcrjy+rvFbDr41w/ptNt9Td/gjI7UAjMVzHOwM7Aaf+I+g2IDG6AHA2Bq94eRhtFBW0UfAKpgZpaDx15dHi9WAtSu+OeuhxVJO0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YozrfAs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YozrfAs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA23AC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776239853;
	bh=MlNJbfSSsx73mTslG83pHUxIt5ZZ7kJM3nwrzpk+eps=;
	h=To:Subject:From:Date:From;
	b=YozrfAs3K9vS8CY6MDKK6oMeQqCO5DmtexDjeS57I3taAYFXfGDZ2/m2MycCjXLwR
	 VlEdRSeWt4VeLaUky3fVJp3LcdoTDErQt8mj9jDlUF3cFDy/leHTnxF1NVGL/LNKMy
	 EWR4+SrYicAJaH2bRvkK8uwGM/Eov9OH0KXvBKYLPwSREBTFiLIcpwTE7xcMHrrPZY
	 PPEYeymLAY0COjsYDQWggxd46GHKnEpiQFSGQfeEVmWZRr+4mJtgyiKdTx90h5Utd4
	 zgMPzLZn5PS7+ndoxTAVUeTDiOcgZWIO9eVY/nbJtM1piHiTI/DJrFd9glDw+QqI2f
	 xSbFUY/8EXfrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90C0FA0C43
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623985368.23476.16075032027803684026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6003ad4d07dd399d1da6948e1ed929622683ffa4d1da2c91c89199bf87c4be6
Date: Wed, 15 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776239853
