Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29A912E5B
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712294897; cv=none; b=diqu3h35uQVkqrCYE/z9g4eIozCxIEbMgb2r3Uu0FBVrSQgFesnociLIm3Kjr/XF32vrKDvHYF+igHVMma7wwx1zHmN/VWrZOeSJ18oYty0HsvgZn00txkE3tKvQLt712D3dsJV0cQ31Nn9PuGsc+/6PDAr1XZpuvG987pfotOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712294897; c=relaxed/simple;
	bh=c2iUqgO/ktEtm50O/3RZVq1mNhSXqQXZGuFzhuPVkFY=;
	h=To:Subject:From:Message-Id:Date; b=rBNGZHszgzKXuL89/80yxK5r1558K4nxV3fa/Iv8I7FIGONAiHgwNNQUW+Ax+MXu1FDJT92eVw01lo/YEBiOjHA7S9rBnh2XdCwEJmAxNX2dBi4CUmh6lV2VSCVCtUxyXH0UXL1izn4wKsrFMtGO4kpkZn8NP0OG3XEcrn/neUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R80wf0Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R80wf0Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA1EC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712294896;
	bh=c2iUqgO/ktEtm50O/3RZVq1mNhSXqQXZGuFzhuPVkFY=;
	h=To:Subject:From:Date:From;
	b=R80wf0BbA8WAlzLiqNT10knDlnq1k13W0qcx6/6+L8EYBRfb7MiZM3d+tnwB1DKk0
	 pOvRI7vahuIvkChi6RnENKKXf1wnf9KAOJWHbn+bYr8AuHbrtj93nFqldbUSpFknWS
	 TZzZVQoqQEy7/vaC/DK2RoJk+gw83acOz6FCXTzQw1nGrGCMVLos2klGbk89QgpJie
	 U5GL45Oe24pEYSjyWZlmkEsRKWsA6GFU08RAfwFf4XszmY/CcCtdARhqhhWtYQlx9i
	 M7XH7J5xa8HdvuRJvPaMSHnZNjQ04qDUT8EYXEziDa2VxTdhlJGJLQaoGFQ2Op93rx
	 /9Fp22w+Icasg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C2BCD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171229489638.10500.9915354716597694452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad774e87c9dabc0bf7faedc3e04c0e42778226ee5b478e2e6ee355d57f5774f7
Date: Fri, 05 Apr 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712294896
