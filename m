Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1F14BC028
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781715994; cv=none; b=KkGLAV+ZYKMhmyluFH3AkiM/wzsqDVknRrwTK1MxZXgv+rMrcECbXLe4zTa8XbqtD4HoGBSdfayM2O04Jcz0VX21IetveqvrNUSPEJElq4hRdKU2/co4gOc4WDdBuNWjP02caIyJvonuHv12pcEa3EUtcwPVtFWWfBApluwFVbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781715994; c=relaxed/simple;
	bh=b+SWlLaB3xhGbXV1UcmjAkhDrG1YcXZGJAvNHf4FbN8=;
	h=To:Subject:From:Message-Id:Date; b=s4r0fluvbFAuEgN5jxiG7A/p7/YyZWMUbAHtdqoiklAPld19/s4lyaI++xZCHp0jWtOE8akWGO8ILQ0AcggDFX1+eQjZzvjaEH01sbpEEF7M8Eg+ZDJb9kDCn6R469aE+bURwCQ35huwAx2rb4bZobcThlI+5ejm2pmvcw0CroE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGsi3c1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGsi3c1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F8FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781715993;
	bh=b+SWlLaB3xhGbXV1UcmjAkhDrG1YcXZGJAvNHf4FbN8=;
	h=To:Subject:From:Date:From;
	b=pGsi3c1B7x5w1OZTIIzmAA7w3PjnvPg3FWWzHROXM5LopqtXsoKs3/YyZd86Q9yad
	 itoPq2Mg7vfSOV7wjMiOLSBuFNTth7OpI6IU2FkduxqRYVsSxuDSpHuCXXanJBFdfM
	 p70en3Gr4A2lX85vmv+UwldZrsVMEUmxYTH2i22egqXY6QY+Yq9nbprkqs3ZQr8xjM
	 F3YpNgOvuIB51zRXWywHBq77y/KJV5D5FyRE47hLM0M4l7g/qUABu3UNXJGjBKcfIg
	 GAFFeHkF1QymE8i0xECYNEOgNyr0tRxnf7hdLYDPWR7Ts41T9CJcDZ2+pXMGLFxeFt
	 1n+qmRuadLxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC12ACD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171599376.19707.5794690927658881143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e3ba6b552ad3ccf5681491133ad765b4d9cde0008c5e8e82519307c0ca8db0
Date: Wed, 17 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781715993
