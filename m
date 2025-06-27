Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20843217F2E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751053194; cv=none; b=CuUNAzil5C4hMlUutNoaWug5XPlnQg1SkY3woGxUnsF54R79Qa0/mM7O/v+Gv4GgR5IXmK6HY79nrC0cPqvXrjlh9C6zN/SLaWu1nPvBsf7TFimEIGBqT3ujkxfTiU/KgNonO+DNHMkrnb5BrDAGmOIpFfG6FdmAJ0ZkaM1ckl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751053194; c=relaxed/simple;
	bh=WCqZ0zE9REL7r07eiL4RW1xOGzTc2I7LiqgadRqzUG0=;
	h=To:Subject:From:Message-Id:Date; b=rNXGyadHDZK4uHg+RvVpfMfU0GjY27P9KR8TsKnYvg8h/9ZRjW2S8STKEZ37cpEVO0iBcNcbD5+RC1TPRN8trqrhOdgGmsHXEakDo4Qyub9AR7oUDjvegt6RuzbYsQjiEAcnOvsVdsbt1y2mCHZG+bRO4L1NTKcKXvfFW8vLuok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgmDYLZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgmDYLZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E743C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751053193;
	bh=WCqZ0zE9REL7r07eiL4RW1xOGzTc2I7LiqgadRqzUG0=;
	h=To:Subject:From:Date:From;
	b=EgmDYLZKXC2WEIz8xsuK+ItH773a9I+fgAiN4jh41RMY9tdS+tri73fSxTBn36U4i
	 5W+Ib7vTvcjx4mBm9r9uTIT5EZ+DOx3sKO0PV1hroVMo8VjM5QaLIZkZ9skD0mbjyI
	 /IapCLtRzaBJFgwdGF5xuSUWiex6X1wZuPWe3nzWhuE1zTuIyGmpKZDCNB3wUPg0Ai
	 PM9hRJYQBTYpunVoMYE6NddZAgP5XWt3IwT+GXJwMO3W/PV/1mAmXUC/FxdU7QjUVp
	 FzqnqjumTnDT0t5/CrN5eQ/d5hwPAUysUKxjMwBdaJQE7HyuddiggKkRIcmPle3shm
	 xp/ZGxT3lVATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91104C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105319358.30535.14706448710019908367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fa429db41b6b297af256a4edb175862f19551f171d2eb99a3392d5cb08265e
Date: Fri, 27 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751053193
