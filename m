Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A882D7D3A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792265434; cv=none; b=azue9fPiu4kGm/edzZbEVwXd7TGWBVjotx03wigrgISqKW8pqZm3Teizp7X9p1CIJoci3KrsdMSlXmtowgjjM3MZh2kDOHvA4kWsQh675fNW0AIC4GdXbQmkgwEcFK1mn5a1JCYqZ+IuyhHmRUGIzStd/4/OP3usplVncp6nmOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792265434; c=relaxed/simple;
	bh=IZ4ILZV/fAAa7RuOH/7CQPwvUgkG0w+fkTLM+qKjP5M=;
	h=To:Subject:From:Message-Id:Date; b=mG22KFaG1lOgARpbmwXFQYB9KAO8/7L8qpIga9gy8PPfcY55X7VDRojJb8JWHM2A3LgTEw1CsZpneuLrhc1fsEzHz4b+kPtIVx7ZwBmTtLqQxBHKYKYeESc30kpqy31e3TzPrCQvElJ+nF5pnzS/FRFP5YBWOiaHknZaICMrDfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eM2kH3qM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM2kH3qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FD7C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792265433;
	bh=IZ4ILZV/fAAa7RuOH/7CQPwvUgkG0w+fkTLM+qKjP5M=;
	h=To:Subject:From:Date:From;
	b=eM2kH3qMKZQtp0eTZm/7HEXAAjzeIecVGn9fJ3EDeabZmXE7UgSX13eRP8dzBSl3f
	 +dteDsHd7VSiSi8N54h5BPlhhow9LtDMBexQz3s7hADTkrZtMwCzCBAWacDFXf1UUH
	 o+jSwbzSOjUOCKWGWUR142dqE4j2d5lhfDgknLs4C5AApF7kLjaxDcZJEavSh3YiB/
	 lspLsD6qtG8Atl6/Syd2DU6luTkhfSckv6WJIJ+7khIINS2I9LxNDNiVCxu9pV+ybI
	 rTWwx6zYPHXP9ffQzFkYSGdbnrI0ZUwQaxA9QeV8pun/swd0bC3/fB0EhWg2GT0SJA
	 Mjjp7CKMqWmAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B175CCCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226543370.17375.2841920706055699939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7454b874e1a96f97b62aca4cbaac34c2a67e78d5e75d987ad035f5142918099
Date: Sat, 17 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792265433
