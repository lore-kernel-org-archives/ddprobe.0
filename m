Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38602CA4E
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765063974; cv=none; b=hWAiyIhiPKtRmi9GTeno2vJo5LrB42EhiBnrP1ABlGuQljTMFRGmg65koAZSJVEjODMR8cCJnGMuFvei8zurKfqKeMrAToEJWYAvpkUJKxw9wtqDFkWzka9YH4n+WtC0VtmYfnQtSGCHJYegjWNTZt+5+Vix+rHVA8fofMZLHA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765063974; c=relaxed/simple;
	bh=PJqwAW8XjTf62NdaX49b2BIidEd7s4iL4lcbYycNYUY=;
	h=To:Subject:From:Message-Id:Date; b=a2UB5Sc6y8Wlbaj42ZbT9dmGDUZVtAIuvJBHGThr9DddcVksqAb2WwsrerLlWkHNj2yLTJijp+hi78ZMTJXbd2yxRYUl9MHuxEy/N1wKNcKURP/eDDbpR/0Q4G8p5LJS7oxlnzzVy1toOlDq41BO5z62p3K+0/HqdQ9ywo1YTfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=almlzRMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="almlzRMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FC4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765063973;
	bh=PJqwAW8XjTf62NdaX49b2BIidEd7s4iL4lcbYycNYUY=;
	h=To:Subject:From:Date:From;
	b=almlzRMDtAiX5R6MR9Y2xSk8uUOUDCBKVga0uGNqey1IqS2HH0N5JtmXVF23OWCJj
	 VKzMuC1CjwkajKV7NJPnQPeaeCtOzYRhY0uTy6WPLoRJ/E3xiPqz8yScMmfVhgU1L8
	 Dmh0DyFpD7apojoeTxVUYShgLfJE1pDoVI5gj9ilNWQXtRzdLN8KEow4kqUgWjFL6M
	 rLDQCrhHxwc8P5TYA2mFD0h2h4jeMzHynZhRgW9b01zSWFsOhR4JKwuCkF0GaUwuCD
	 52VSibpk1ZpbAI+5vzUdmVppK9sEHLQQgBzgOOo/3rQ8zMmoUODeT6eA4lMr0ZFHaa
	 /ntVv1Kn20BpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99083D3B7E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506397360.16979.3550001542015018169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862151b3272b32b12fe757ac114410fd6726d3c42c392a2875c7c9e8c19b808f
Date: Sat, 06 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765063973
