Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC60324716
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778522434; cv=none; b=NE6ADL21ij1esiLqH5R+elyF1HUPdoZEv0ioIcwcfhgpKtJ+my/Ecu3OhRUToHWCDvedCge0uHLIm89JL/FgHLcnuFFy6RjR2b6tWuYiSqXY58T4JkC8h/+x3MCqFBgz+XMSTSRLyZkcafoR/cvP3//M3G0rCOFnEirKL3Yy3uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778522434; c=relaxed/simple;
	bh=K4x3XlHeF+pilMHe1jSy1T5kbc6AwKPPjfDvmtnka7M=;
	h=To:Subject:From:Message-Id:Date; b=MsLEt/gweo1UOPMZm1m8IAWh1RpV+ugoTS9uj5xyH2NpSDiBNsMJAPv9FJPGmbo8QM20sy5jx7AAsvJwJzdccckPJChuMy4ONFwrdoOuQPpJ9kskdp37n2uyGqLxCmO6GOiEbaoXuY/HPfje+4742IHKloDNi9HVT+NhhI2dOA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWzio67/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWzio67/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5AAC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778522433;
	bh=K4x3XlHeF+pilMHe1jSy1T5kbc6AwKPPjfDvmtnka7M=;
	h=To:Subject:From:Date:From;
	b=KWzio67/73d+V34Q/ZjqtL5fN6A9qvU/QV6belHZOvMFPeVrQ8GD9ZZJXn6QbtuSR
	 G3ikLRk0jcjOhc+gPt4W3OhXaQSDIM+J/hSnyjeAfd2lkYxvQ1+oa20r7OuLYTgF2f
	 Zg9GLxn/Kirg2jOyJJuflKA9AFJRoT7dhGpFBP7ahVmtNBWDI69EFr+1BavWN9BDV6
	 o5LHtF6OBet0kGRi5bBgAqqYvG+/xmMy/Oi2QHfS63whes0BKwOPZ4Ud2qwza4S9fk
	 kUCaidfsxBtI/P6oZ9jOO1Co9Fy+EiPwBMFB1IRtsd2RTMs/W3m6OI+u5h/uff6LUx
	 ewSuiO6FXowFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBA9CD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852243370.14934.14040970369602593896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f60c033f210e3ae78befc8e68eb0fced87bc498b79afb02390bf9f72e2a645
Date: Mon, 11 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778522433
