Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471DA4908D5
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785016234; cv=none; b=AdAukfyY+LdTT3i69hCIPly8OShvzdR51aBO87CiBl4f+XomcjCIJH91ipnsA3TQ8CosD8OJjQvxHnLbUQjmqWuM23BPPxZT3cRRYENOUh1FT3EgjZeE48UPmn4PoN9AkT8iTS+dVrZRBB+x9pQhxfUKWsI0Ekp05YgzZiizFiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785016234; c=relaxed/simple;
	bh=CwLOfh5np64My1eMnQJhBlJ28GZeLKmyt1ImJjAmH2A=;
	h=To:Subject:From:Message-Id:Date; b=jf+n6HLiC9uLja1wsFL5+0416Ql1arTtmU0+tv5WeRUfaWl5VLP5MOwuh+axRX18rXJCodOgZ8tBq6YYcIk9lpqJRr12HTaOgWhLqCOBuyYCRH5PBXCpt8TxeyPGOTUOjKgRZDrqs1uEQNy4fHeRvcsZHB0wMKwY1ZGoCXKtACc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVtXwxCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVtXwxCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60D2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785016233;
	bh=CwLOfh5np64My1eMnQJhBlJ28GZeLKmyt1ImJjAmH2A=;
	h=To:Subject:From:Date:From;
	b=EVtXwxCbXL1/xqP706GxqQ8Y0yLm7QH1FdBIkc+oJzQ1YHI1VQ6ZG7x3m/pazHFRi
	 CbaaC9w3/TDajHWzAwTTQ3+XlJCTZlP3jY1Q4yb2KuWjnM0SYu7EhOUusbqGpIKI1V
	 4OjH8om7xDha3EynkZqHJqzKaL3PxRWQg3oHUwXZRXFSGpXEy+xUTPBMvkIeNtGWJh
	 O6xXVr/6cy7d/bVrKjPigcZyYp+6B4kbJO9MjXcZb+NAsa4a0ITVdj7tnSi4yp885u
	 UMRU2EwYuorROxFNBZE9NtRs4t9MnhpWwGwy2WA/TfxamiPLJ9pwIvqqt61HhyUPIn
	 CT8CIAfSKdyUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1169C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501623369.27640.8854505992972961925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb03f7aa619e020bad0fb96f5a3fa487d84099d213fac7c711557416b64b7133
Date: Sat, 25 Jul 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785016233
