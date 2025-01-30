Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C36E1B0434
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738229154; cv=none; b=Igf8O9mHMSwHqrJAGs5jK4SbGLaIr8owKhnWwUXMfs55qvYwmZMTz33oL8FaNaiMsqOzeVSm4HveVDbDbS1+BxCPLhrBYNVHeqNP97uV0tXVJSxDhnODAfXGtkmOwNvGbhtS/QmNL/K9oDOUw/ftROSCz7H6Ep+IRKm013GGEWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738229154; c=relaxed/simple;
	bh=xcmQYMa7S0bKbeKMzCtUOtnG+cZpNJpKOn+WnRMyx38=;
	h=To:Subject:From:Message-Id:Date; b=IigxOCwi83oTR99iZsGDuHH9LfpqZhNXM7zFF0fzbaszsomWFETPOJo6NnAFbjarEdrRRXQSmizGpUfS4ARXfnQF8BVnkCg4cxY1LIqAPbmbjJciQS4ox9/2Q0SqAA0/1mNC92Rj54Qdo2pkhBNpj2mmG3gb+xnPS6cPHXQN/y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+9mImbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+9mImbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21B8C4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738229153;
	bh=xcmQYMa7S0bKbeKMzCtUOtnG+cZpNJpKOn+WnRMyx38=;
	h=To:Subject:From:Date:From;
	b=X+9mImbMnXUv/bY3xyP8u81JVbeQ9q3b2zNEy3V4ss93hwkIR04bSQ1roMjE70BK/
	 Ms7mj4FahY8ZN/DcHI4hNsLT454Fuyvt12IGhEOZNSocxz7eVw11InW0SIfzh07vaR
	 nqQXzDgougWchUR+2JXiwtQew4OX+/n7pzrmK26dZvIV4olKvoDfKueDJTb9pQOJGK
	 T4dSSK2Mls/cBfucrJczVhMdkDlSqabERHddpxnzw9ZB/XnKCZLr5w+0EqW1hMcuuG
	 8LGvkY6hvJfwdKJrSIXkEdpEB/3ALehLAGAek2eNU3CZaxAbheajObkUL/JNBKE1f5
	 mPR6CKCVIJIAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B00C02190
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173822915359.32546.10392184737020040103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14435e1825b4b9a4fee5b1e6515a755726a1cde35d69579086002ee44ac96378
Date: Thu, 30 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738229153
