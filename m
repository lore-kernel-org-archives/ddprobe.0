Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8273806B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783020514; cv=none; b=kBAb9mnFK6I3ZDGug8KNGVxzaYwapQaGe1dAVBL/w+drLlBhEkKyNM1HqE/h54IS3+2s/SQfFBIIeZjoO3fnR6HjbVd6SPova0iFfl8By6xxWZZKvhrms4kK99V2u1JFIpTI3UWLENFGwbpgC53y2rqf3OpYYmeGkMm28oFG4v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783020514; c=relaxed/simple;
	bh=8l8v+YnKaMImubizstcy80DjbroGpGWQFh20eYeIbaM=;
	h=To:Subject:From:Message-Id:Date; b=RJQF5ycY5MU4oVTo+uzVpODV8Bi2hjKEeRYeZpQj0VPVgqfT0tshpxSt2NFuzG0aVXrkPUJwaTFVovPTqpInZRwICUitY+rqBXNPKeGvEvFoNX03fFs6RQqL4RhWWL3HxHZCibgtDYEX5osctwt27/4s1OuBZljnAyX/CvLh3tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ervmeo9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ervmeo9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3CBC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783020513;
	bh=8l8v+YnKaMImubizstcy80DjbroGpGWQFh20eYeIbaM=;
	h=To:Subject:From:Date:From;
	b=Ervmeo9GjFvM4jSFQdF7kSXwgVId8fP7eaooRTzTem0d8Le/4yCrM680psmGyX7gp
	 tEylwhiavWRhvAL/0kgWRRhVu+v5G5MIy71fzPeSMPm8uyThZxoq4QLKr434jg9GJy
	 QInAOtkwQurkMiiIonAuVaxgmYBd9PEHtYTI7XX4bsN9crp8MhADSYk/9Ds8XmcMcT
	 nq+EcYDoAtoQahNMm5eXWtaZ/C1hJezcmVNdZEyuMl2DA8WfCodOJ0/WWxY6wig91I
	 j39hJ/lwuCdLIIdWgwWh+4rTNMlPTir4+YBSKLBIftqEfZMxOb5A6gCjM3dT1SveFW
	 bKEx4VpDwn6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF5C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302051368.32172.15355286681538776515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1facbd5202351abc73419c95495c1d560e6ee6cd6dadd9acba9bdb8c8b0fbfe6
Date: Thu, 02 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783020513
