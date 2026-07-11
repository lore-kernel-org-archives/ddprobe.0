Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE6424336D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783754314; cv=none; b=jRswCOpyTHs3xsYpiBrq42nYHjvO3inpkL6G905Acu5eGssRZ6HV6n/Y7XqgwU5XxWZ2kS4WF5n/UNoU7+o2rR0ntaA5gtIAtvgE9AJkQF6IlYVNR10sQQR1ISWrlkY86jKWjVglZGXA1fwLdMjGj3sHe5A0OTrrwWYlYUdJT6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783754314; c=relaxed/simple;
	bh=Le+iLZ4l47ru09hl3sT0Ps28DVVugAH8lBu7+x0D9mE=;
	h=To:Subject:From:Message-Id:Date; b=IX6KmRh6oQbhHno1qpC3QEApt9u6aB4zaZ5R6SHHJ6kkPpsWCffMBegmpCNI6MPK7RQHZNiNwmR83C9/1vO6y4qnwrV9Za3H0872CIgQWNZguaDBtWckUVMJalt5DmElvwktsIUXVfMGJZvg8WF1y0ICSjTQ5smDGI/d4W0upJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyvErFMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyvErFMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7083C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783754313;
	bh=Le+iLZ4l47ru09hl3sT0Ps28DVVugAH8lBu7+x0D9mE=;
	h=To:Subject:From:Date:From;
	b=uyvErFMclQ72r99wFA0sMdYs/clv569KriqYWrzxGbgRpzwRRKlNiHudjD3YvR5N9
	 QlxvXGA9dLHy8SBxUOEqRtYdWibTVXt9ZzEcfZ+UMeto7C9u3uSOgbIJBOLkRXAWW2
	 Vjp+NCTmsHtLp4EQN+zmZAdNgTYu+Dioi/h68DSKtDTVE0oa5DPSO2CpIjzEUujhqV
	 gkhhC3zOK5F5/2Uy67iCEyMIqaSV4Esg0+Amm3xJpc3b4a2UpxBc8ziT3SHjzrMnu7
	 +U5LMw3tVsF0fjQo6SiKXOxgHqeA/VhEymfP5GaRONB2n5mKxsvLgwSb9uirjqZeov
	 kFOUFnbSggi9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF4C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375431368.15840.16946718265619171167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812080b26becfe3ac58b09adcf4a606c493e8ace643ed27966298c70d208464e
Date: Sat, 11 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783754313
