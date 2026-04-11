Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E1519E992
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775888254; cv=none; b=DgZlmZMLh+WvAjTyoY1rj6yC49YEHjjBIV9nDeSGCfBRUkfy08n1TKQsbvx1XzthJ6QdpiSo1fmkMdqE2uvBDudnlVAD2UOSRq43BoYg7MDJHGMrH9StInUruIkCDmLD8ZQaxG/yZ51JBl5HxcE2O/ANsQHOjuCNHe27K3YSz+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775888254; c=relaxed/simple;
	bh=Q/NigIcsQMSSEjUC1v8MNE+K+/kWHARsestO+ZfUG5I=;
	h=To:Subject:From:Message-Id:Date; b=p7UP46LYlFe48ZFeAJ1NtfKwn/KgNgLdrpWm7bG5VA+ndbzrAzCjv3L/582uocegod0hzWf1OpQyFd3guD+otl3vPGaxKTh3EWkDDtyjaz80qRw5kaGj9K0CLMStMzkMKpbIoP/pM0K3t0/EHLf577plkjN+NNzakrHq5m5Y9mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRiz/kqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRiz/kqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C202FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775888253;
	bh=Q/NigIcsQMSSEjUC1v8MNE+K+/kWHARsestO+ZfUG5I=;
	h=To:Subject:From:Date:From;
	b=qRiz/kqQAmXOwI/BtUGipHgQ59K37UTcunT7azz+CWTeahiCtPWf7KvbarrLRpuOb
	 MmJLEETlnFk8zDkMERQ5t/mI5Ya04tRudhxlY478y6viiuUwGmeG5GV6scecFBZhfB
	 2ZDwWFIGNSIVjmwFR96Hp6Oh2Ygzrku6CBN4Sjorh13NH6oIkRvVmyGuD8sTeQZmlX
	 4G3yPSNR0pzwOepdQxFqLDnyEEytuubJIvjVH9XHBNyZf78R5MALEotHzboSMPtSZO
	 P1oQiq/Ce1n78FhzFIj5HQTocHVEqA+leZWAO4fG/O4bXGEFrFTpzpHDKwvAiBo3Dv
	 2eHiMwlLYdvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF88F45A1F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588825368.21088.60643913103017535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c419db523c780393ae886a8dcc70f8b5b62cd620a314a4056058711712fb6b
Date: Sat, 11 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775888253
