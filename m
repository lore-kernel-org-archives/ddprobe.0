Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407F329CEB
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742674194; cv=none; b=oo53ahOXSXjmUo13MCmrWIlawuVouR99GxYxgP2Awhfxm//Vu++kBJZp9W7Jxw/ycFLYrfy2aoFqR0u+7WV+Rb2SGSyoHwSfY95aq1+8jKag84vuqWVe05bG8h6nkmY1y2r0QJQNv1Th9y3p+2ISHpV5IVtuMkXbJCD5Jqf/yw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742674194; c=relaxed/simple;
	bh=k6q35TtGDDTl6+Usvk1iPgLTvbNv+2vyAsLosvJEHmQ=;
	h=To:Subject:From:Message-Id:Date; b=Wi7BP5YDxz60tWJAeFkcj42Lcnxvv/Ou+WYyx71dXOfxjUUst+zuLBgMVtBimXwBqHGD7/122zb3R9OOou3tg2ALxc99zcHFpLY993Uzr9EWFmHj6b7zZBOwdJVOtbPFXXZ5dGfg8vMnso6eAdsgvv8EkPFJ85NAKZIvXgBPidE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uI4Zr8jY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uI4Zr8jY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E4DC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742674193;
	bh=k6q35TtGDDTl6+Usvk1iPgLTvbNv+2vyAsLosvJEHmQ=;
	h=To:Subject:From:Date:From;
	b=uI4Zr8jYznbGvDVGW/yibNS2UzX4Ld0iRk7bByZzFhuOjodDrxtL9r3tDuD1eE+tg
	 B6K+332rXS56CJ+5qnhQKtpJP0IjzrfYE7xd+eS2VGPKpbQggLhdqitD/bhx9Vqn+x
	 22A6GdcgcbnLgZddK55dUyP+YpWQwOSVLhZxAC48iIRh+QFeROK91tbZSwtw1kB5Mv
	 fRs7n5fPxxJ4yXL2dE+4enoiDpUtCBhUDqak0BmCt6bPEnIDNkeKWz5J07AZ2sVm31
	 ujJYLIW7yBQtMK1IgG8fdU6mfZoKJKf1kYJpOPFh9bQTWJHqZlklsf062M5xoGZhdS
	 UDVqnD7QYvE+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A04C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267419359.6310.4506359211474789708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79cdac7f9a22fd077d8f1df80a0fd68417df627c7f50e2877475966a8fdb6fc
Date: Sat, 22 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742674193
