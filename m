Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436C71386C9
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780198474; cv=none; b=Qk5FwurJw5KW8z8U/I6SsesP6FFyM0kKUz/jBFrs8ou5wmesIj0lgMCGaNq1+bxgl60BeySUTcMjUEzND5VRewABZUVuLHVtvDqyswcRTxI3BGxt1TPqQl8YgG1zwDrQ3ouI9oAZqpWlK5DVb3UadDD7whQSA2icsjiXRzA4iI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780198474; c=relaxed/simple;
	bh=4BIFlDTfLFrRC4+/n/wPaMTGZZkuVygz1CUADY8O71Y=;
	h=To:Subject:From:Message-Id:Date; b=eUVWknKM6Jb077RaK7IgLURTQajCT+RvOgqRjW3CzNEonqm7kurts36zgvB8A3NS51mZuaPBeBKbaFkHyZ5s47hY26Wug/wQNamr1OcitDnZoffa0AcXg3pDjpomZNEWdVuV8e03cKMIafBxwLSufA5mgXIVA+uz40AvR41AlQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOEFEArD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOEFEArD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA699C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780198473;
	bh=4BIFlDTfLFrRC4+/n/wPaMTGZZkuVygz1CUADY8O71Y=;
	h=To:Subject:From:Date:From;
	b=jOEFEArDyLNhu0y1fCPzuV/12kuSJ1cowGH3lmHzB82tZHGptVjn2CFYhWOIorCwn
	 L23hhp4MiB5qPcKgeNgE39JDGnvdGjYpqac/2U0Bl0xS+qmmS4bL+DIMWfFkCHAg9n
	 mghDPb8FbdyaH0OXFYHEADRCVPQUg1vOkqJhVSvvJts2PurTuPuNQ8XLpbPkR8BTML
	 xS6Ve4rFkpxgJJOzhPAM+q+z8bGiulWYXALJvgnyTdxkj/SLkhm+foTKO9Evro6+4H
	 1CCnYCg01hsyuhWUVVC8jX4871awNqSsGi8l0YIbvxkn5o4xdo4wlsNY04YGYFQ2DS
	 EaO2pd4LIeJsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0CCD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019847367.15569.14302136240731012355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364d41b3a18bf2009c697cc517c9ca715725e8e4674546eff96bcb16e2531e00
Date: Sun, 31 May 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780198473
