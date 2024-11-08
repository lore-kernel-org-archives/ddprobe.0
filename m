Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E27519413C
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731051954; cv=none; b=p1Z/Ds1bbqTFn4Z32tla+NRaNnHryZNspB6gNXraPUX6k7j1uXybJ2ax0ePosReOxsG7fGC6VdU0boHblBvR03Vqe6Qt2bO+CbQiPtmsU3vXO3aQbXzHRJo7Yzl9ZADIcoSUfN0W92XH4WP+3FrDH4a/WGqbsXakqTYYFO7O6dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731051954; c=relaxed/simple;
	bh=eRQxbIai+AdYq6qV2Oe77kBe0Ku2koJ+Ls0APvpj2+o=;
	h=To:Subject:From:Message-Id:Date; b=TgOdzNbqMLXO57QGbu9PHwH9wgbQ2Xj/HqiecFz8IuRJ0n1Bx4jrOeF5bOEoVvTF05zkGEZjVPp2bgImB+v+OCItbSEwb6GKqBLF82743LNWiC7ge2JBp7lfPTVTZUIgaghB5l8PdejxzFttvcrZqMkLo/c0vTddF1ORTmIdUoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuDWfqbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuDWfqbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A554CC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731051953;
	bh=eRQxbIai+AdYq6qV2Oe77kBe0Ku2koJ+Ls0APvpj2+o=;
	h=To:Subject:From:Date:From;
	b=nuDWfqbZV8Eqawrv2Iu2Ov+ckg0+X/MxO9COykiuCc2FhaD5TvYh39WE2qfVHiucw
	 Al2ZThVVo/MSpVv/PYlLbDBERkCZCCDOfnA/RJvGI5MeqwS0sV34hXOUFwrcYSTNR8
	 oDKS85AVi5KXocbMcXOmaN9oD0N0jT1C82x0anfx9o5vKYMq2KH5PG3Iujm7jUa5sq
	 BCWdPAr81Kn5dAP189OD3HjnsIBmxEgbTwJk5JeYrevGcmxti1od5yQp3XbrpPGHqi
	 tjsWB3+KKYIZc+CkzeO8LfbZyNDZ1tDnYAs+G1WD5xfwgmpnX/qkGxi22iVlgrlkXp
	 Lnkgzy/IliIWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E35D5E145
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173105195359.31412.6008434412158071215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2301d112fa8c7838dd1f799136cf0200619b113ed8906d07fb3c6f1df182233
Date: Fri, 08 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731051953
