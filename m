Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5833119F461
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739663934; cv=none; b=shSEhMOmDXC7Jf7T7pSTUSyYHxIAQRpfnV6/FEIUmuPxgu6bmSh/yRqYI/nSPb7u2wZUdNVCWHKo9M3gTT2G5g+W+CKMupnDvPzZ0b5r9Z+IaScg/xKoU5taa8e3asaBvaEixhLsTu4GgGCcz7Fj+LAGYdcR1M+sJjGGxr6xj8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739663934; c=relaxed/simple;
	bh=e579hLo6IWF/1tNorxoi91sufjcWacKp2dZoJBKsmOg=;
	h=To:Subject:From:Message-Id:Date; b=GmNZoLD03Ccaw7ENKisnF8wdqFVRpkNe57O9IdX5V3AO3Fu1nWOrgMXuSppjQRY5su7QtY39wgchZVUDGyDmb6N1fssiIvLXww23QtgmEZHyMXRfXGvNQLqofE/605G8e7DLgCEupLcRiS8JQUku1PqCl8AwgDnTVdvPCRexfd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWIWvuZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWIWvuZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CFEC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739663933;
	bh=e579hLo6IWF/1tNorxoi91sufjcWacKp2dZoJBKsmOg=;
	h=To:Subject:From:Date:From;
	b=iWIWvuZYZiPrAmUCOxaIu7ILpYs0LE7RcFCP/x5eVFYM3lVXDcwwWgOLDaxrWmlEL
	 m/oq76yv07G5ghw8fx2P18gLtJhW/2193j1f8X0OClRc3uLBvNi92PdRnoaFS1BLoq
	 wzrFNKVKS4EFbMFR5YSvjKf572zopfXSwvZuv+Sw55HS5oWLP17Q6xEEy8Odmi4x06
	 xtyIql1RH2K4QyBc/TcVcxxlNT0tdRyAMBr7d98kH7gHWP61Bfb54Vg4Yu2w5seOcr
	 qhrSB9Uvu631/EKbYKfTTePTT14cVyyJiLlKJhnsyV3GJPWeVmaqhsOJZXIqA29UoU
	 6hRBVcbpE17gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1267C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173966393367.17360.17361823807866821257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc17a9a27cf42f66a3a083bffaa13d7fc932514adf2cd0133aa40e26bf58883b
Date: Sat, 15 Feb 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739663933
