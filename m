Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAE012EBD4
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 15:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716566003; cv=none; b=SmpsboFH5jzwG4K+KOsgiheTnRPbJT+tyWoh/Fva4PtCAxNOyiOILve6gOO7C3kTtAlMUnTuNDk4drLAAQ1MLilJm9sI+H8pmJpkRn9v7i+//8dIOBfx0XuKuKUn6k9uBYk8T2RJEptLq5nLeFQcddCOiJJJdRHFVRL2buFjHWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716566003; c=relaxed/simple;
	bh=6m496tfJypNSDO++lXjiS6r8IqF8fPBc+mdDjDriP8s=;
	h=To:Subject:From:Message-Id:Date; b=GaLdaLrsD2s/QAYB7l+KzQQ28BdNw7EB51Bggl2om12ikMbaOANuoKuEGvH26ImEtcYjpQPwwDmxsNCEDvR1i7jROYmeGT9vav856iIFG6JGpuy9cefusQoubzUr0d0hPP7LingB1xInjuF0NVoEDR7zT4/BYdOfEYLo06HOOxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6deqHkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6deqHkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C779C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 15:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716566003;
	bh=6m496tfJypNSDO++lXjiS6r8IqF8fPBc+mdDjDriP8s=;
	h=To:Subject:From:Date:From;
	b=m6deqHkqRP80ya5ThsaJJ7zruNrd79CkvMO80iznWeM28WbDMrj42Igsnnz+X/Alk
	 CPMDUnuUMMTe4tpfMv1p2OqoZw3gjLvG3peTlFqhnpa5okpm4Yws3FzWy1L5haN0aW
	 LJtcv7e3cfTDPqa/NDMC397Z3IdoHFDDUY0tPuxADrkOVTsVs4aOHLcnNgTYwxMweN
	 IPE5VVsQr0N5HAYf6vCYO4bTgK+wuOQNG828JYSIqP2tEPha5qqWELngUk/gUx6QwM
	 y4XOJrJUaeRind3/xURKzlzEDuDIFWYdAAPijJb0LXTFmtNeQEd9ewt1AbWqiRGj2m
	 jVbv6Q5Mtbf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E23E4C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 15:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171656600286.15310.5998198445115568413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e045f5785d6577ea4fe45be0b006ec5288d168261f9a796a7054276c62e4d670
Date: Fri, 24 May 2024 15:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716566002
