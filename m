Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5181DEFDA
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742338195; cv=none; b=GTKY+EZOx4mInwyfsAKRRMu27OjPEzS/Rp5qw/NLM4XUn/Zz68sp4da4zpTzE3E7XqzugnRULO7tNGSc4kexr1w5EmwGFC13Wru7Re6DYoPbkCwg1HPwfOJ43Li5DmqsGqJbIiMI7IQfIQhJ19CL4Kz1VsM4jdkLkwMbkWThDHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742338195; c=relaxed/simple;
	bh=KtBc24DAX+UC3B17G6hp8wA/Hipm6LCAuExLKpmSWR4=;
	h=To:Subject:From:Message-Id:Date; b=hj9iWqC056Jpk45XUX9A7mbOWgT7kpPKursSWf4/YtrSgEDTtKQ+rG/LwvKH6li8fXoiV8CQ5SGEDTlYJ9Wa35+uJs9WjHVDcgtUBe4Es/zp60jBZk6knjXXIxMw4NePzu1yB9GdhmCx41M3anlVe5FVF0TsqO5ShrkZnKlifRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtXVpDpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtXVpDpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA21C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742338193;
	bh=KtBc24DAX+UC3B17G6hp8wA/Hipm6LCAuExLKpmSWR4=;
	h=To:Subject:From:Date:From;
	b=NtXVpDpl8v91bjrTlFglolM9s9KXyqc5mGcW/jQLH9siHLD0mICKQR9ybsqQnhgqK
	 XWOvU/iUJSJFy7Pd/ThiPusg6e285hGQ/qqQEcZCUTr3LL64nP6ODW9mkihAwiAM0F
	 sqLFVaGlr/LaNScXnVI3dzcEbRcIC5jcH07D+vZUWfNZPG8S5QVo2A067h4p2ZiMjs
	 8zO0N3Uxkysnx2Yq06qA7o/bsG7t5EJQBbBzw+o9iWkHSosNWNPoqiqr5isUg3y4HV
	 +ecrn7n6+2/fffwoLjGUePhA5gY1kls+p/g4uDf+Y4wrPOcQYs15IQTrkeehUwPO/T
	 XWGcSG9tDZVkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B449C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233819362.8304.1087450734735713434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d6eed0c199f3428ff1807eeac881eda4b876ba95a919fc14ea1b0403b1318e
Date: Tue, 18 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742338193
