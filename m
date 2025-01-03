Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CADE2E401
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735944954; cv=none; b=n/VkKZh1MxpccThgvAH6Wk0x1bE+90ZxMcyoun2KnfWToE3kWIFrrFg9pPuftENhMB2Qu1QogbW2GTL+t0z7Bdd7xdVJDVL69F6uEBVmfAVU+/QZNodAbLl2YmbpqU/Jk2UOixlzIgUVB/1brdH6WtmLNyjDxUC+6L5QO1u2cm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735944954; c=relaxed/simple;
	bh=H+ko8TYGI6rAxdixs7AqkotslfAXS14IQncsrvVKmvE=;
	h=To:Subject:From:Message-Id:Date; b=TWR8FOK4GJkAGtZoXrFF8wSWqq+cFMZYYJjuAzstOwfeExc+/mDAqLreX+VzKSqy78iZDBkcE7EZuUFhOCdxiY0VmvDp+r1CZhuYJxd7tzmkEfKhIkTBJ66IiZeD5bDaFOH/J66jHpkhmpALsmwKPNVWJlUAVK2265NUCknS9kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1xXJUYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1xXJUYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BD5C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735944953;
	bh=H+ko8TYGI6rAxdixs7AqkotslfAXS14IQncsrvVKmvE=;
	h=To:Subject:From:Date:From;
	b=k1xXJUYoaLwKcdQUs+7JHJtvL6fmnVfAYeRr22VfdU993mRll+xazmlvh1LGFUUNL
	 jbNrvOcj9VkKzaNZiBs1mzWVjUqXgGFLMG/adl3oULlYnl6JoX97EES7P0E9wb0kc7
	 1fMHjEXDiQRzZyMK9cFeGfLmzfERZ4IOAzjSQoi3Qbmo6HF6tO0MN5KA+pUlzgJ0p3
	 dPSPRBqgFjN0UPoAOb55zirWJEIDn1sH5ifsZb1GbW2Ihch3DbHAjw7c9ty0dQCOu5
	 s2F1T+ZJ0xvRq2t41qlv939mC25KOKef0mpC1CEYE8Q4mGURfDCPZIHdgtrFc23U19
	 KV6K6zrj537og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B390E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594495359.5932.8700168154466085851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef89b89954c2eae6b7ea45645841ef3cf397366e30675678fef11e2b2f77049c
Date: Fri, 03 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735944953
