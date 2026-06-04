Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432B0283C9D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780543474; cv=none; b=kUipeT3hZyGkql8yq05+TxSDbUoMyqM+CEoXXWJuSWlfkQ1QfwHljK+NbKkjPrsEgLD4ebJxrgP4OrfFWofZdddiGVvlHkHpTHlR6TT2xRP9CnwdIxDd0Yndz4+VTjUnQWuAjIh6y8773ynLlsY2evWkTXyQdqPpenF5RjmmNh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780543474; c=relaxed/simple;
	bh=HBytG+VObjylNxWJfkoCOdzxcENXgJCQOMejgYSeJO4=;
	h=To:Subject:From:Message-Id:Date; b=LagP1JKmDWJbscDAJtB60C/IaiRMPYFtkRGDBP35a2+VJbVNbaoFDG6+jfgIiJqTzaMelWCMa02rBaEe6P9ywGxRFUyODLyrU/+mbQxi20eKJ8v8xgQwiksaten6vy2nc+qp23MMXPV12K/3vKZv10hWPCucNo0pl7MdYmIAmoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHvoZ7nN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHvoZ7nN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D4AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780543473;
	bh=HBytG+VObjylNxWJfkoCOdzxcENXgJCQOMejgYSeJO4=;
	h=To:Subject:From:Date:From;
	b=RHvoZ7nNKpMgeXhzsLK9TVG4gCmt9HFONBNFEEqqcah/x/F9DenlLBb2lH39fW4GD
	 cVvdqr73DBib6ofQ8RsRfIApdrjU1IptbYX5v6cRr7E9Jnm4M+O0gQ4ZJYKl0bSm43
	 BwZ5DnQqJ2H/sqClyN8zHLjDtThbntHCGB/nk08Gk/vxdLTd62E6rvMcZkW9iA1GVx
	 ADN0sQwM9jLASfWDAigHKc97SKd869es+7y1Kdr3WQvhOTAikkgqUGzSlKcTN4QJeo
	 NASBlCIm2yfNZxaH7vGOXdKzpNITghVHCrlzsgW8SItLANq/aErzY116jqMkmjBgv1
	 AhL+dlKrLm9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE325CD6E55
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054347369.19747.513936836681973571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37fb58105f095950f59d3c0ddf33c6f90628c702eb715a83c7359cc1f2b6ce6
Date: Thu, 04 Jun 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780543473
