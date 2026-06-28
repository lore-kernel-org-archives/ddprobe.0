Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424AA22370A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782623314; cv=none; b=iUxHULfz1yvkSmR0YBXCgV/4u1M5RnTPetYM/4+6n1p4lZEl5NejeIQH5EwjqBH1s3GAN5QAtEa5MT4de+/RfM5xKt5LGfzse7Vu1FWIlqSNx+IhWJY+qiAHc2Ld9pC0wRM+WpwleliPpTzXF/OQIdrkSghXWHKc0IuStHAhsjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782623314; c=relaxed/simple;
	bh=faoH26izx+0UBSgQnUhwGKyD0VOPp5lez9zRk6W58m8=;
	h=To:Subject:From:Message-Id:Date; b=X1o4V7nJleqMS/P98U9FjAp0z4NY3H+AFh+Sf8yLIKHgh8QgnLjPJ+Su5oloc9OdTci9292HxEeqdqurb0Ig2QmXXKmCxeS8wY++qa4IcHzeflV6CqpoOUKNeXNikjHW3DyNO253pP0A0ULLpf8uKytCZzMPfpgVIiCLOp4ZTqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXWBuvpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXWBuvpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AF7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782623313;
	bh=faoH26izx+0UBSgQnUhwGKyD0VOPp5lez9zRk6W58m8=;
	h=To:Subject:From:Date:From;
	b=AXWBuvpqIaDwyaUajYuvkMGT6vTBpoHSBKzZDlm+gSNfqtHZkbvSzuKXhy36pLpkR
	 CXG12rY8tgvGZCFwOHJJCoDXW5l+e1Cd+Do9X6iZUdk87oBnn9Fl067+YQcEaYz+CE
	 lZ15UD60n2qVWi65D0kE68I87CF02BEwkEY0xwm+QggFWLgeTBFz891dvLgEEiNdHF
	 9xWFw3OpY5P59/OQFZ96QK8E5GIggUhcteUEZ9uDHybLLbQ6+egvb0vh5G99c07rLJ
	 C/ID52C/dylUNqsEsc1cMYA6tWpAf/r/DcOrnCjpESR79xu+C0vTLIfmsx9o9tOnUR
	 f+dp2nUK6yO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0339C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262331371.3058.430624318345177011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b9aed0686bd22c8d4e89016795f8f8fb1c88953c2b50f65f66a3cc53a515e3
Date: Sun, 28 Jun 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782623313
