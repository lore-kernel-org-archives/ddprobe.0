Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498C818EFF3
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718720963; cv=none; b=b9xhjEGeEn04P/QVlI6NeDzQHJ/W8+bdqhgQi1BY3moHUzQF7sFF9M8SpgqPUrRD6aLKn/5dirNm9E3dWUDV6S7f1h8VO4IwxZTjd2zVFZ9bUWcXMFi8Z61dYXJbg125CxNjhP3wd1H3d2eV9DFRZP/RXn63tz/8BTRSVDBgnNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718720963; c=relaxed/simple;
	bh=QPgou5HkdYuL6NYYApPx+lINtgyLHibDbSMiGBZU5NU=;
	h=To:Subject:From:Message-Id:Date; b=sLfuX25xvEjzJhwV3+isBPB3fYUKdy6iD5Ic5EMqxZdzcYYOYSLvbPgS5tci3INgsdThg5Yjstxsy3ewxoydM18otfRhzATbUPJiYuCIQurA7t1fvO1c+jN9DTM2g9WqucA1h0+G+ZrxnnLD7k8/7FpTr6U/V046o81lWkSle/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7eDHGNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7eDHGNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87D4C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718720962;
	bh=QPgou5HkdYuL6NYYApPx+lINtgyLHibDbSMiGBZU5NU=;
	h=To:Subject:From:Date:From;
	b=e7eDHGNet2OL+IniM9f3PDOgUxuf5zuTF+rpf9Opg/miKTDmE+5bjxickYEEDHuSo
	 Y3twNNAyHVkGODM7P+ZwY2GMoB/cuT+JEThzYnQScM31uVyeTpuN6psRCTVSgDWaSa
	 FQgklfU8eZbJNFhncAP7DujMMYrVpjAVzzUrWdDjCmLx8a7cjPDk5F8QgmjywSqSMw
	 eNFhdB3ZbuKdnC6NJlT+biuUdzT8Bh4cAK638G/bAVUYF0FrJbc6/8Vxrh0g+f0R+e
	 Bl8MAnhqK3gC39bSFmvIdjlA3/OYzodUuGIRHT4TZGC2ogAxAr1JBuRaxQwpm86jga
	 jaG5oMGSwqExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9682C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872096280.6327.17112812013454482707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6f1fe780bb3cf52afd80ca60652c7087df6216762e35bef50fe1bef49baab1
Date: Tue, 18 Jun 2024 14:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718720962
