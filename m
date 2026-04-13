Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22903363C7A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776062854; cv=none; b=bQx6FzGdd4f2LETkObXc5jlWI3MOMQZidBH7H54D5kJFrOB7kMWCaRn+7FmhCwFdf0a9g5Jfd0CZZBVcB/yL14YBSTNmINFgheIzvN9ZcvDH5rqZ/i0qtKCQOeZ48YLaZSZmTOG9Y+RsZd/9vV67y3jliXW7rHrPnzdDVvc/xDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776062854; c=relaxed/simple;
	bh=vu6q37VKrKJRZKV3IxflhVbbnUmni1GhUjXZ90qeXEs=;
	h=To:Subject:From:Message-Id:Date; b=KtD4MLgcIwgRgUmC4qjGRAjVZL+FhtJkUCx1SzOQOBh5ji12bRytCvSVq6juyyOcp1etfwpH0Yn5aGkI47mwbrP3GKMzqsdyjAhsGwdBzaRbpuDlnTWX6IrZ+dPRLpfTezs/WOuwXEfjv3xd3OzBnK/XARVAzG7mvNF2EH03A+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Faeh5tJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Faeh5tJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC956C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776062853;
	bh=vu6q37VKrKJRZKV3IxflhVbbnUmni1GhUjXZ90qeXEs=;
	h=To:Subject:From:Date:From;
	b=Faeh5tJBuA+ALd0GCqPvRp5om65DuxED+4cQ+Oy5xg5RXGGz1BwhPwOMWVbo+y9UC
	 xr0M4VX2wAtz+SFHX+vIkaJBSRwGRb7fsXc6HhTNfkDSk56g2ZSochcwrxcqNTfGzF
	 dXIFP+jLTRkWWa5CqM8HXaGzZpN+7jxvSt7CxwFEJfWvHkFYxRBxMcgNwrWwjQ0uod
	 OOOAzmSwv4ulj8p96m/pTXcy+wOaW1Zq0k+cwS2s8kV55l9ILYq5b2vgue3NmCJp5T
	 +9BgHMPqQS9fOR1RL5GgkSmg4G9klGDuZLO2W/6NuVe+fN6Ixz0BwlxHBzWjDxjreQ
	 KjhpDwI+QcAJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA572EBFD03
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606285368.14885.233027252991598385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7571e4b6cbc075ce4c84f5893f665e2a48b093179bc185a39d6523b4a94e01
Date: Mon, 13 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776062853
