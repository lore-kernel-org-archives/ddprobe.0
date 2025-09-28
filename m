Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F421D9A5F
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759085994; cv=none; b=KG+WYu+H0YdYbRphOLCOSEillOGHgqgDX1LCI6+3chXz04uiiAcmOG6zyK0zEcEKt7eK0Qi3K6hYar02jUyiKe67okec7006401CJnFUnpUUl0kbA65DkHXgSkHz92eydKASwKQtGCMvc08PTyP9UWV6FGEEaXMyH4bIMtI2IVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759085994; c=relaxed/simple;
	bh=yvHa1GBtPrxLKX8ff2rMkHcIEILPlDYBbTNNp75De0g=;
	h=To:Subject:From:Message-Id:Date; b=oMPjkY1TQySVr3PnKYbgVIuJ2ujLd/7IFLeqFG/03Yh9U1m0X0nH66kZC7qPgQw26oYxjdymv+FzFKRugYpQbAvlmuYs0BUarbknWTEe8hFnNnBZgH8akcA4O3yi6Fpu5wxs7h42UUQdQcucz0GpiMYownRY3B0Hzf7W2j5dd7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJTnv3r+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJTnv3r+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03F7C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759085993;
	bh=yvHa1GBtPrxLKX8ff2rMkHcIEILPlDYBbTNNp75De0g=;
	h=To:Subject:From:Date:From;
	b=sJTnv3r+/X6VPj1LZQ+1WFOoF88mNezr2MuFv6BYqKXiSB/SANRMbldqlFc5Cebjq
	 TlGDfXcVHTXL/2t8+A3QPgrcB/lSJ2I/mCPG4qiN4dPJi4A7beMhjTiGzhIAWpIatg
	 evfm3M+8HEYu0KSXDOhNmqq95XAZW+eF87SJvyjnJ5SSlyTANNfl2OD57JzN+XbpM2
	 2mGgVXZ4gCI5mfQ3cHTZ+AyCgxsdckN93IbTeOjrCIJiKajW42VKxaQn8v5KkEo68W
	 VlGwj4gtdzfhsqmveSTmhjD3FYojk6LdRntF+YcU2acpgNqZjtVug8RCyf/3gvvSkf
	 E+LPwZEgqHlUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B729CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908599359.17215.17521013040878890087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205d612fbe75ce2de502a7948baead7974aa3e1787e2f17674c28025fb195c90
Date: Sun, 28 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759085993
