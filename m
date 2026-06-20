Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DFD1F8755
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781973394; cv=none; b=KwSkvMok0WaTGJ1tyl81149l5cHJMwk9nmgwDGcZ/tnKv9fnb4EIfN9fmvFrdQD7ccIoHcVgSdS0UXkeSJzHAYrhkIbDbTamn7k73lkt3OpVe+e1dpE38INxHhsNp283oDX9x+3rxHLer+6rKLTVLdtdoOgbI2cmA/qzaI50mlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781973394; c=relaxed/simple;
	bh=d4j0L3r/nfdjHMdBshiGwPmLJnlSbtdrDa3PuEfxCoc=;
	h=To:Subject:From:Message-Id:Date; b=qyvmKVtN+go+7WeOO/XhkyDWpOEvJfQjrugJzi64VBKNNbfhCGazyx8Z1Q4/p50CecXd2ucf0gNnfWiVNj6uW4AbZvYylNKQYtGjsAaipFpk6WhogQ/oiSoA6mMMde3RKoezkItcyyaxK0/2ipOUoFMnhe/R0tNSVWhkJSFFxaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peRqBcxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peRqBcxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8702C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781973393;
	bh=d4j0L3r/nfdjHMdBshiGwPmLJnlSbtdrDa3PuEfxCoc=;
	h=To:Subject:From:Date:From;
	b=peRqBcxRuhFZup4/VXn/tZLJ/LcU62brhbB3JcF2IHNTbnOMfsTWgVdnDlcdnufyl
	 sEszzhCGEuv98aiPdEJgFOnL87RGzQ/ZP/lZPE/7CC0xjAZZj1Nko52M/7UWo7Cp/k
	 DmnMD5KgLny60T9I7u5jQ7rLHdUAcGLd6LswKee6g+McP/U/r8MsmXnGDSVn8K5mGg
	 8j/FVgndrHVY95M0q0YGrJcwJwzRnA+Or9nSvm2VfqnGJj2l5SzQlfEGQTKbcwXq3q
	 3fq2ogWn6+bLHB53Jk7ILNVzPX2XKtxpwlGWPM9J8tSfThlDB6RktHH4W5F6rJM/ye
	 KO0zB+RxyeSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC95CCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197339372.32414.11679433717691392659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b347bcd4fd65bd2791a783580e02d775d162dc9d6eb4125089d2faffa7b05ca
Date: Sat, 20 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781973393
