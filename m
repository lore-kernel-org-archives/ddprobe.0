Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533CD3B635F
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787262034; cv=none; b=OLp7R9+uKUnsorCtdvAhPecc6HsZ/nOyG71Y9IQlS7W6ZYYQzaVcpYOml7PKtAftNuNM389TkGRL8WAx3onRepzFxJ69k+iStwmPtsijrE4jhvVoxBUXQ2iEEMLf4sTk/07D6yW6lnL7TQp/v9+d7A1UyUMO2h6rdH/SBcxrRVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787262034; c=relaxed/simple;
	bh=B7R4tbSUz9VEVsgiLHS5fCYLfRJDu/uyTcTTOpW5ZBE=;
	h=To:Subject:From:Message-Id:Date; b=Ubpq8KpH0BpY09+fks8hZjutGGfWeWzYP6wQdPWToChMGVwtac04NIbMxj3hrdpYuZIEO/pT9Ityis50S/4t04qmYKh5FXvhQI7iC1N1hAC0yq0MDi1zVJSwSbyIhXRIY7D3YCCClS87uTO6HSODs/mS2Gn8WUNNGEnjtP3FZNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJKQ/dvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJKQ/dvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29C4C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787262033;
	bh=B7R4tbSUz9VEVsgiLHS5fCYLfRJDu/uyTcTTOpW5ZBE=;
	h=To:Subject:From:Date:From;
	b=PJKQ/dvQ2nOSaE8i47f8HPYYZFqxe2AwK+3qnU0WEbS//dpEGEGv6m88EMi20tlrk
	 tPA8s+38MKlZOJj5EdKBBLIfx4nnuijNB8w7LlwhYDRhVC1pnFAwZrlYIZpeI0VZ30
	 i9D4iDPyaxnUm1qrS11bbLBLZ5jqiToJ8XUqmliOcJ/VxjmajZkmtTg7tKf/76be5+
	 47LJ/ihvs4Dt0SMOZRBzdrYHwR71qzYBvxexRS6/GOwldBH969q3lW4tEy+0E2Ep84
	 6Y4MQ4KoM7ap8LDG0hhK/O0bJ6bfnbEcM92x0bJzXqI1ow/+apBteiXeSHwWQKcsLJ
	 Ls52ikESdRJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEFBC5DF8C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726203373.521.997367700548657262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b66e27e3175650be1d9dec724eb314e90152a29d41a52587def44da0dccb16
Date: Thu, 20 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787262033
