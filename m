Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A873002DC
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765916034; cv=none; b=gT659YlljvYyJafM0HrIPr+otzRyEJrSIZkY8iaXpccX3fQfODaMq+z6AjeGxNEbJWbnwG1e4w/yiXUwiBnwZ0ApYn/w0o3UL6lW6k+DVPA8ATinBbi7n1tw/NK+ZUhCnPjkVJ62GOU2h6V3NBjDWeZzOUojq9q+CX79siJUEvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765916034; c=relaxed/simple;
	bh=N25ZeByGWmluRpZzqdHC9/sU76bjWRgZlo64I1U5/7U=;
	h=To:Subject:From:Message-Id:Date; b=URmJiSRpyeh0ST7irsBnDW0zq0t/1Zb2d04QhgFq9I0tC+bh9Kw4R9C1K2JGjbx4Ht1t8+brXIwQckoLQ+fx1nHNd9Aa1MrdEWUByfnNzKbfxuxgQq1WnJx5xl/92q+GIA905/sb08CuMInmEzszPzCJghzW6/lMkqgWlf8QwZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4qfjUyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4qfjUyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765916033;
	bh=N25ZeByGWmluRpZzqdHC9/sU76bjWRgZlo64I1U5/7U=;
	h=To:Subject:From:Date:From;
	b=S4qfjUyA0YbxN5+YOF0+4zw8M+epJTgUBQjMi6hqyXcArLJzCc5RhqMVADC7GJTpX
	 tgEMiLUasjpWyZ1rw0kCwk6vtmUxMAQNwxhY0tb/trICSN310+M4Cw7hlFQybrhxnq
	 Ng63viPjR/XRTIDRR+tAx15ZXqB2ab7F2z0pXMnZCg7AE53/eOLR/JNLB0plxz3vRn
	 oBZeQpBsMFT9u4cdNbEaS5N1s8RqK1iM9oy3JYZgOLB40cBtzEsGrUBq06dT79+Tku
	 tf1SLCLDquLo4YYc7IetMkPCLirDjCw+mTy+81pWWMLdZGvnOIkja3YtgPf/tQmLPI
	 N8Ez79OUJLxYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111DD637A4
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591603358.28497.5142367693574361602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ae0fc60d8e8fd78d56a9eae650afae18980780682f31061261c6dcf5c0f89b
Date: Tue, 16 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765916033
