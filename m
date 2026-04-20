Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CD43845CD
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776713854; cv=none; b=G2W0ik+iCh91Fur6fRPFPFgZ7UfKch7dMIvqOECEtp5DoaLPYhQALWjw6Q6kKAIeN1wvRCNEp0HOOCeutQE8vEu6ZjnURLXE4uEVc2WkHvljyaqpQ7D8Rcd7woPaWWvdbnVMRGqZCc7/SyxBR1KaAOUnbw9HSKPIZC4OyCoepVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776713854; c=relaxed/simple;
	bh=7QDu0gBKnqOsDVmiM0SQEy/rbcr3p77/l687Am5neuk=;
	h=To:Subject:From:Message-Id:Date; b=dGfYs1+IftYbhCkzmvvaJVqs887eqK0Sg1Z/fAtoO88t2oOrvOb4jn23OT6otfcVz5acmFoil5zlBMo2Jz56zL//Kvb+fgE8FwUydNikyOXvM3e6QUvd97jOIE75stGMH/ynGMnpZr3D6/Wx/Zx/rQvcNmFb3ajrtkaKh7lAqWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY6COXjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY6COXjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E5BC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776713853;
	bh=7QDu0gBKnqOsDVmiM0SQEy/rbcr3p77/l687Am5neuk=;
	h=To:Subject:From:Date:From;
	b=YY6COXjADko7nzb60YDsvbogjDbAxfgpYalyRsx9gALw4H+gOvgVSF/77cVI4xGDw
	 EEvWmTSPuLjc3QMgT4PGUdmUniZwiTxEL2+0KuAMS26+FM/OpQ8XKbDGsf5k28RGlL
	 RHDhuPAA5b4qMZfVzLXumuVis6wrljwgT7x44LTaOVBYBx9FZIW58V8Uv7LbE/pWya
	 GA4QQyaheQlbyTIaluJlknimRqvG2KKivnDdGNLACVdI0aL3NvX+Q/cmkaYJ9Gllyz
	 zOvVIjYNs+mizDanqpF2vjMQB9nheY20NBOCpDAiWa022qUWE43BkPKy5yts1JV+fm
	 3DoUWpWlGKv0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDB5F5A8B6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671385370.23544.12095778337330987602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67640682f80f38fc0ff3bdfcc5c10ebc7a87bf149bee494705dbaeb3b636e939
Date: Mon, 20 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776713853
