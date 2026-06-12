Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B6E5474F
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781224594; cv=none; b=OddoWg0LtZWMRr0PVhD/tjf2kvZ8gjKN69qoQisMl9tpWeqdFr5I2pIZklEQKobNzEp78HaZqd1U/rmkppo51zEE9AStQ2pyZ0YWaPqX30pTIvIq8gyoAd3Sz9kbQE/PPdZ7HLHnLulkgObj1w7TizDGtfVtBp4RgXA6iNJ5H8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781224594; c=relaxed/simple;
	bh=GbCe02Mk7uGkCQoNb/+qp0YSeC7DdC+X0s5sJSbsvJY=;
	h=To:Subject:From:Message-Id:Date; b=f+RuSCPPgZRY9vrq0BC02BzbZ13hFO+/CB9dh75SdG0wKcA8V5795OECcINspFnBUuOoHK+TWz14gIbdwVvAxcXPQGQ+qYfAJldZEzm9/Sp/C9pcX+e2CeUwx1De+alUw/6bUrwZ0NfcoRmJA6zcym0BMJTQbEAmUhEpZ8B3TFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvAqgjUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvAqgjUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD656C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781224593;
	bh=GbCe02Mk7uGkCQoNb/+qp0YSeC7DdC+X0s5sJSbsvJY=;
	h=To:Subject:From:Date:From;
	b=OvAqgjUWibS3CvNGlK/IoG3xTmPt9Lw6EvPEtMjRQaqR8gIm8nOY8VV+NK9KwzbWO
	 Vl9W33IndutwoGaGwxYcL0lDudv2NbtNinaWnV3YLYGRvBDI+VnEPgcCcAnj+eeb3c
	 IgfIg9Z5mKIcC0t/Wq4JzF/bwYtl0yHQu94RHbLIEUquJXbZ/Ti86gNo4j43Pli8uB
	 bXJboAp0VHMi1Uc5lt8uBu5lgvdDiGaOSC8GyuB9Sz6g0YCuFA1+3yaYz0S/7Rziic
	 sBJSZ6hYVNyODp4b5t5FEt470RsXXU9s8P9s0ZYzaFHSPGL3undCYCiu1SPAv2TokR
	 QjM81kqatA6WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDF7CD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122459369.22012.8002058964993808902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74d8ddbd643a1b1ae536a984fb0c94ba637cbbc12decf308dd8e200d0c5c2fd
Date: Fri, 12 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781224593
