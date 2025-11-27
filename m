Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F58770FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764277974; cv=none; b=dswgAXFWSJVB107Q/jA6mwzkUXZn0gXY0tqpBdud5hJQNdjJRzGrv84a2UB45zB4u5w+o/AAzAQaRdoRvkj9Po7gj/lcscZH5AN9PPD+/oELlpXj8X3wN0UA3wIJmWZmAF2Xc6wtjchUzGb6C6ekHZy3qnggxWE+v9snpj9pfaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764277974; c=relaxed/simple;
	bh=X7KTsYwYEb/ePYRP7PmMGtNTIblTkfA4FEkVyacvFHg=;
	h=To:Subject:From:Message-Id:Date; b=oem3dOnEEV3i9L4mbj+BKKSXiMjrUD/p4+IbJ4UPuMXLDMN3eOtkxbIKsy0lD4ueN7Q4yiVPdb1WSERFZ6lYS2Ss4fFWbmmNEsCLEgB5waGicAGeyqWBZfoFES5oPDX9/fntdz2xqBYrDDB3q7o7VcOqaTYvzG0iUOBdIQaPLUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2k3XLtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2k3XLtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC180C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764277973;
	bh=X7KTsYwYEb/ePYRP7PmMGtNTIblTkfA4FEkVyacvFHg=;
	h=To:Subject:From:Date:From;
	b=D2k3XLtECphuYKStE/5fYLoHVf8clAfZ8RtH0bahP15lj4EDxc9IdRzCxBCGfCAJd
	 mNeRTl4VDfLKec3AycKgFK5ZpWorOolOBp2BecZIKllsg8cwwJwG+zh3UpBEPQtwNM
	 usUCXgpDoqZym2stqyQdLDbCVL41USkA7Ng2DaX5nuhn/dVtErRxXIcVpsE4sMxj6e
	 WIGR6UL83hlGMIrKOuBCk9AWaK1FSznY46tnVYmAfAQ9Cu55m/ZgsGf68Y4lsQYwNH
	 qSlO2ychMOo/KhdPgHxt6U4+J4zw2GtCF04UXsfXajT48sljeSMSODiKv6vvEu1G7r
	 KPpwiriIdjjiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9939ACFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427797359.24719.14300014962306387841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa675777355ead6ce14f0ecc6dd515b411ad655bcdfebe24f96c74a99d6ba5c
Date: Thu, 27 Nov 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764277973
