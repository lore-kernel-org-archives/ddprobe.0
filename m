Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E145916D4E6
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742573994; cv=none; b=CsN8Rg2X1kc2X7rWSJkpBHB8SzxEAxxzGXYxFeGw1hcLKzvF3sVdPDYCyjcqzfwNQU5/82a0Agu6GZQ1nOQaL2T2ZQuMmsn21AxU0wR7vMcled2dq3Az7dH759hhWbTv6DUbwgfBWBMeXo+ZHGotR02plKSVHdeT/0eXznwu5Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742573994; c=relaxed/simple;
	bh=WYMAN1QPNb8HlqkuITOUe8zrZ8FJmUzvHepaLVz3gzQ=;
	h=To:Subject:From:Message-Id:Date; b=RPhqgPiwClQVOBv+fQP5TAhgsMjj/mSFp2E59uHCPW/PPMpXM2eFwsfdLXGdZ3EgYuma5djV0RiKt48SKpE6+vmv0L0OC9+WADOgkW3I9gf/pifB4e9qj63fxXlj8MTbTYXbv4sdO1NWIBKgHGdVaRP9DUKRN7qgkddTuI4OAS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHaF3T+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHaF3T+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7296C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742573993;
	bh=WYMAN1QPNb8HlqkuITOUe8zrZ8FJmUzvHepaLVz3gzQ=;
	h=To:Subject:From:Date:From;
	b=uHaF3T+UP0fNiWeHh8LFd3dwDGhcIypORfRp/rwHpVMQ9dsDkFr4exUhqoL0u4zLb
	 q9Jmikx9t/9tctfcKuvA0A88vodpl2QKMAv5VA6R7mJGuunVrYvTBvgslOaiTiAPBa
	 w4H8MzdFeB09GdO75w8eLSMK7ZQfersZR9SEQqM6W8gQFcwy3kK9hl4ZRLJiJDK2NI
	 MpoHGBxDnGxCSgt0aIsdhUpFiN4jih4HtD2dW64G0OtoFJH32nk819cuz5xRUoJqVS
	 BT0wwVd7qW8YtBN9vc2gxSAisxOdmTHiJu9KNwJRxJq/jSucgQVxJ4iCUWNCmlOvrq
	 +hZOoEBNyVgxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3680C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257399365.25128.6288721538923078966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b9a020d3ff6f8aab4af19067f709a0624003e2f2f96b49520757dce12b0e3a
Date: Fri, 21 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742573993
