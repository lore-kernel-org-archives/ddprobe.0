Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF6A64F
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 02:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717381523; cv=none; b=A5WaFLbv5KfpzFOIOIh1JOIxw8D5GRUHMcRMKyAwqnJvzrZSJHCKL/AgN2Txcd/2Hpm7eMgs8GrCTAxVrICUCdSPUF7oB0G8qDFlCqafuOIZnb/oDAe/Cwx/ln9CYrdnZkvJbaKD7CcxJEqu5CIyhqDcgUjBuS0Hxrdp2CV+wbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717381523; c=relaxed/simple;
	bh=Ej1AaVlwHy2qm0E60yTzgh3JOzZJn+ZFgDyoYfLl5Fo=;
	h=To:Subject:From:Message-Id:Date; b=juH/R0BGlUzyPHyJvWqOamY2JKE7Z+CcscqrSNE1cWJQ0zaZO7TJedykwMUPe3nCuI9uqNoEdAG32Wt4ONCNdWif5sgPUkhA0WnvKdaZNUh2GGuU8ryb9rJFdld9cKc1Y+fhQzlA/StrhbHUEKvWZTQ9Uff2VqeTGIysE+n1dXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H88hIGVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H88hIGVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28D9C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 02:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717381522;
	bh=Ej1AaVlwHy2qm0E60yTzgh3JOzZJn+ZFgDyoYfLl5Fo=;
	h=To:Subject:From:Date:From;
	b=H88hIGVmo0qKlkfWbNBz0y7pKg/dianqcyWc/ZBbP8QoKhuq/oJBfJoGef7H67j92
	 tUsPRj7P4MR2MgbbG93r27MUfYRar5a7KGpeKcyh87WYCHeDX/5KmJs+VoOIR4Jzch
	 aUfzV2o9fW0nhSMVTVNA+2nC1z8MlGVshZBk9I961Bd6xTPCwdMe5C1InQTRw/eZN2
	 Fm9fO1AoGrc4KPR9mFS+0J9tBlfIa4o4XDlWqYgpFccaPZ+YldhTxQbcugU0fFAuya
	 nf3htJ3OOBMlHT4w4EonzGsWehJJPQf0532y4MuwVKWYEsp/QjP4zPiNx6VssTobZG
	 4gUJSyPSN5oWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCC1C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 02:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738152275.11645.12357902219030872111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8d9a94c2f0074496713e90559977d9c674672af2f6f4afbe76399c609d85af
Date: Mon, 03 Jun 2024 02:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717381522
