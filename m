Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A322E7657
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776658053; cv=none; b=aBzAokt44BiArhakrUxUy6Au1TCf9i6SF4x44syKGIKTfGkBcD1PWoTqglrMG4ZoDNZf6mgwhJJXM/9svXcN1nCkaevTqW2fJ+2FXHjdLTV6ZCaU9sTEl0vIZ/qs4Kxw2UX2csjq6FgY9v8ldb4O5mGRiKI0pkI6TgIshSW3RWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776658053; c=relaxed/simple;
	bh=849FVDlugxaOsoaUxOWeOJtuXuOtnhGHHMBIU1Z2ff8=;
	h=To:Subject:From:Message-Id:Date; b=WX9rFql3k/aT5xqefE1t6pNlLK/YICXKJiWfs4ll4v3ZCe6aPledNNI5Qffi9XC2zleLCUW0EWAsCkQ4B9gfrffPuqALwwZIUIlbl/D/d6a+wyAFBQWyDASAQltRC6gwVmNxL5cYMykgMDxAovx1OPu2fpzZG8F69DaKzIEmbjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpVqZnTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpVqZnTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB73C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776658053;
	bh=849FVDlugxaOsoaUxOWeOJtuXuOtnhGHHMBIU1Z2ff8=;
	h=To:Subject:From:Date:From;
	b=FpVqZnTbpKzhC9wgUh+DAtj8GxLG8Y8448vaYuVoi2XmPY/kof8lGAP80EGCEnp0x
	 XYPBayZ/MGqS7qXHvNc5eFgl0UvBwf8PaYeR1vJrcZCDNyvijRfNVKqw/dfe2dRa65
	 dMzgMt1+QYJvqIEq1r2sVmrn3yfayL7L8Z6sLzsutnb3/0/qIRCB54NcZNxdKxvw4+
	 umyva3wbQ4LQgw1FhOMnXeCVSIL8J6mr2vswNQq6AR+Fy4fq0w2lFG/crJFzttnH3W
	 i+0pY3QSPspVIpgf1QTfZhVOyO4a6Qb9ULF7XDXqyjsLP+Tr2hevOOtWKZX0O8M489
	 M1INdaC8mD7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAECEA7185
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665805369.2425.10637285878552473763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac89ce9fc79dda447bea297a93f702374097ec94211b6dd02acac9be361797c
Date: Mon, 20 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776658053
