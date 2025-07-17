Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C16194A60
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752782394; cv=none; b=OXKUVwLoLdaRbHgJLXqhejHZi8kxmD5aHMJbd5KP36y0zVIjVdEQsRctQa2RBG3qN5/gqJ50XL2Fh+Zt6QOXUql24F/qDswwmL8Xe6Pq66q4o4PsTW1970Id+AgT97n1P/cYHyF5fooC32xGL5vweIoqI1DwoXTMpdnw69X9RAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752782394; c=relaxed/simple;
	bh=3+qIVe+Uc9f3OqBxRPCfJPDyArj0jf0wrDz55J9ZMPg=;
	h=To:Subject:From:Message-Id:Date; b=h1hHb6ct2TdMQ9NLGRLYeVAMDbdCK2JPPSKOpBWXa2V55xBPRUdj5mz1uy859To53yj3a78YdxLO/u7Vo48xIFI1bav0e3OfNlYFst6L6thXdXi163CZZrymcQ6VcclBk8U0rYKHc7eu92Z5Chh8qJ4kGGZvtXvoPgt0TD7pyPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLMvAlwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLMvAlwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBBDC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752782393;
	bh=3+qIVe+Uc9f3OqBxRPCfJPDyArj0jf0wrDz55J9ZMPg=;
	h=To:Subject:From:Date:From;
	b=YLMvAlwdC2D6Uzk7aJ29WJDoblx4uq3N83aXqMPmtdgeoKaTSu6aeTZv0aBQxuAHf
	 yuIK3l6xZ5AwHdxp8H4IVkOiXw0huTTeegGmRfBUKqDFN9Qp8mZH6GFEt+SOcK8hWR
	 EzDf5Zy6UdOBeZ892IkRUh676D9IlvXtMe6Y/yA4JkS5kQv+ZE0qNl0GS3wUss+0tJ
	 9nJZkSsDqABEhrkarto8OOvGEtyDWHcHtgtpgl1Tv1HCA0+nQW1A46TeQWTdUTWbvx
	 GEM0KeQlSHmPTzVN3ikLtmZyNuMcDcERYs2i+/9nyg8WiPzTDYzI7PjnRJGf0QxYQJ
	 A6XTA/iV3sRcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C941C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278239363.21861.1243737854792743962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 065c01a5b26b58a782a40cfdad4f2703f34ff28cfea9fc39ca1410fcb0f38b02
Date: Thu, 17 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752782393
