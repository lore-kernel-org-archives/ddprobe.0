Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302D33603D9
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781430994; cv=none; b=l2qcgn24qES4bsMCJQwJURZ9sOmiHBcrig6EZtHjtEpcFGClwGWtZwaB374pehmT8SbAHt0QkzBxTzM9CRlK/8H4i1q9tQA7nsSaC1/B5Gh3j/Sz+63ffIhV0y0n8/nC8tZQ/uzpsiq6HzP7NCy+LPeWUAXgE7+uSgphqUppUWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781430994; c=relaxed/simple;
	bh=akIvy6Pfrta5VRjcsuN0rCEl47Fb+G8UK6G6ZJgZPuU=;
	h=To:Subject:From:Message-Id:Date; b=JTk4vp2uyZQxtNJkFjGexy7lu8dgByJBAtsZJFA26Lz3QdlhEd794tOSgw86aSfCGvxlSsLkxLPD4dKDxi7LTDi0dGIWiIU3j/We5DXv4gYocEjyp2LWBvOd2wY4Jzt2S9sM/f2HmMLT8lUVo+465s5cQNT5zcIHK/AIwR0HfeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9qxxucY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9qxxucY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED93C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781430993;
	bh=akIvy6Pfrta5VRjcsuN0rCEl47Fb+G8UK6G6ZJgZPuU=;
	h=To:Subject:From:Date:From;
	b=c9qxxucYTHMfQ3fbNql1U2Acmqqc6ZnODSjAlV0HYXCfQW4ILj79s1nBbU2e9wGXA
	 Xev/16ZFUD6nViEjjb4AXq8xdLiMcZfO/WbsUhtZrPD9YE2SDXx6+Bt1SRTDsQKSfc
	 YOn/q1xeUpd122wJRVjtO1aLk9I0qaXOF11xIGTOS2a0cUFnVA9EGZeSjNvjqemGyh
	 IO17ORGJgsSed5+lbNmTYnb1bTyP5z6iPev/8TS8mSbnQVS7L+jfYpywanUy0L5eSw
	 7TfHA4M7ZPGt+/T4hynvMGInxqRz9GfjJxRMuc9lQ6KlsoFxKgjgyy5oq6r599t3GS
	 D4obyM2uTETZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C3ACD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143099371.31555.7719516447625254471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0944288fd3afd5f944d716c197f81ab36d24cee283e3ec5752d9fd03b5cf1f
Date: Sun, 14 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781430993
