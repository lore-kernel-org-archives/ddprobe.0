Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECC31EEA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781587594; cv=none; b=oqSfo/wz3iGSztraxaxvNlUAf3oHv/sFQM1xbUbz+awjPwVBlbRaOhvB93GidPWO+f2OuNjEbv0navMClLc+PWzwrHahtOAknXP4BNXBgNrgdVYSz7CG1aWahi6X0ZLwDZodjI7PvQksUvWBu5cSN0zrWagQqGEIfIXQ0XEltUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781587594; c=relaxed/simple;
	bh=cXXYuQM+1Z+e8QQzXchD4sqQbAfXSiSTvrk4B2a+t5Y=;
	h=To:Subject:From:Message-Id:Date; b=Q8oSv/UTgtSTwMBROkQba9DEVSMCnPNPFaNhFMfpGN5kzShShwaZvOaXWxz53+EiPtGVOTDwm1i8H+BEqrOtlu90vXqoALV7iJk7oHn3W51HjiBSwc/ifWBHD1pjiTJQqZF8cxKUGx0XNlsvoBpGKu7a0Qb5KVPJjDZbUXCQgNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp7CNaB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp7CNaB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBCDC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781587593;
	bh=cXXYuQM+1Z+e8QQzXchD4sqQbAfXSiSTvrk4B2a+t5Y=;
	h=To:Subject:From:Date:From;
	b=Mp7CNaB+F8kCcY7OBK50ASkDjNaEHoQOu1vwlQsJ1Ct9Q4SqKFQBfqUD+TEH0uo6n
	 gQQROZcc/rwup8wRXLe8wjaDFqAzr5k5A9tm7TmGCxHaXc98wFu/zEnoz1geCwGNs4
	 TuCS6F4a0VLc/5JHcAGvBUvZlivnI+7u7pCgTOnwYiQsKtUI89/QeV99zMMBd5A0lC
	 pBAUDOJilrg+BPUjRbXlFmlJBqMIjq5A/RpTfQscr1jx38FxkT7/aRXVfnU8p0yttZ
	 UrJtuP3gaKywVM8F3s1k+56bpOffrAaixoWBm+i1VphbZvrgWj0Tfu4kooRp9wjG5h
	 GBg43qJIQyjug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD26CD98CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158759371.21540.12554947665369759966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf4fd1ca90b91afaa8e21d55d2f93bf9abd56d6cf7a34b4f09563ce407dacda
Date: Tue, 16 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781587593
