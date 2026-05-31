Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFE630C34A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780231474; cv=none; b=orOu94O7/iluEo3JWdhseSUYGwcUlBAPJQ/wdKBoTpNNdCzHV56rPNpDzmW3+/o9YWm60MBWOw4CPA2bWq1a29qWoXSpzrdyjFpwwZGbNuWdg/ZGJACceRyZ6K1kgTiGDgbTCwwPvkEPxWwu3mxwipqfQSLS2X+RHyADC0/aSXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780231474; c=relaxed/simple;
	bh=g3TzaNbOgenJTd+7NVy85rEh2z7KtKIl3gwiul5Jqzo=;
	h=To:Subject:From:Message-Id:Date; b=Nt+K6QMCaajM+Pbgx/R5jIvwuV9XbuwWJiitkyWRMyvckf/EMSSo5REOiRzqFzGZvjeEWt9tSIYVThTx7zS70Vil7l8BpgNF05Nk9ULp8+oc2fdvFY/3wXvzw7iUaWaL7OCZOWRqsx09uwrvIhnyw29Y7Q0Ou3BpZUJjFVfHS1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCng5kH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCng5kH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AE0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780231473;
	bh=g3TzaNbOgenJTd+7NVy85rEh2z7KtKIl3gwiul5Jqzo=;
	h=To:Subject:From:Date:From;
	b=ZCng5kH5U+UYUY6CRzfLM5dwO7h/oP58K2aGvJKOc4OzJDd5/aTF1Ku5Akl62PD48
	 5XfAWa7edjxS2mkShXyFw2bBCgh0JZPS9kDTUcXowTybFE1QbswChgrqsCNuXnb35q
	 eZ1yBL4YFMAwY6IemVSlG5IGKDNbHQIUk2+I1gPIpIfA2LDM+yf7HuXKU2WF4G7eJG
	 fIzyaFraKmbDuOE/M2F4fUum84aSPO1KnE5vgIpFx/f3ZQM1IhFsEPT13SGCxe7hji
	 lPuQvPCLwBccoKUOsg/oEZRpW/SLzgOcyoM3wswabszcExNZ2z8RlnyTEWxeGBbYjQ
	 a3TvQDUuhQrzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4236CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023147370.14226.11515611007228534836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede02940b1ae48e8c56df4695b47feb573bb2824126dbd657abe849559554d74
Date: Sun, 31 May 2026 12:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780231473
