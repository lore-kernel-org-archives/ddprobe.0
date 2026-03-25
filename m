Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAEF3E3155
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774460694; cv=none; b=QCHhUU+LzNi/pu2rHUeNKdzVokvDCAFpoXu5WfpP4EgVRUGJp7v0wImN1tg8ohMMt8lnVafVzFDxfqDdwYqxdSPtecQThJk7XNWJML9gYcHO/0NBEk38YKggj9AiDuzjGtFSfCIwcExDxdO5m8sAzqldYT5928YziyfcTNneKLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774460694; c=relaxed/simple;
	bh=lIOfQKM0rYhKHKpFDNWqdPXQfwh5XySxQRkOUkx6VcI=;
	h=To:Subject:From:Message-Id:Date; b=KqitSoUx17nbXmdXbGbzk0xBSfxrR5JfmJ75PoS912BrbnM94zXc0SV2Of+v0NJixd7cPsS5AGn+A3q0VEjvqortvuPOLkrwY+Anhp4piHkmUwKyxbPmA9IcQ29+LQrhq+9h9efV0wk+Gw64Qekm4y40dO2MbnOgZB721m6Cb9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdxt1O6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdxt1O6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05D6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774460693;
	bh=lIOfQKM0rYhKHKpFDNWqdPXQfwh5XySxQRkOUkx6VcI=;
	h=To:Subject:From:Date:From;
	b=mdxt1O6IZ+yXNyZS+ZDSfT/PC48S6CbN/knSuJ3M8d7LnD1jUL50+Kyz7e76Jdfs7
	 NEZ0AvQ0XJFV+RwcBLmKzcKjn83gjnxeCJhGsoZTzXKH7UVNTKyKDBX3f4WZLylS+D
	 Bnm65iSMhByz5rPsC0tUUwApSrVJl7ZC/QUpNX5KqsF+EVW6qacUPCudQ5t+2JB7eT
	 3VOiPV2BwtTdrwc9gzdKjlO/Urljg6Kse2/tBj8V4WPiVjOxqEwY3VXszSAUUhgqzA
	 Dp1UBMukLgjoVyTyQr1je25xWloZGGBWDKm2+PfLBGLZssCzvtWygJtZ5X9X0qm6tu
	 10vbRMGp/GcIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A803109C04F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446069362.2187.11148440820391165112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e03bbe60f21400c7f08f4cef43164a29fa38be80ae5a6fca97bce7ef0e07924
Date: Wed, 25 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774460693
