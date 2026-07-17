Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C65338AC8C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784289515; cv=none; b=UWjh7+GP5R+2gYV/VMuuYWvGSFQfmTFcG6sAsl2pPihaCsEw0orqAn+UeGpImSjSoRtiSZQ2Acvt9JkE1fwfN/x57VpxUpxY+FJYKgAMdfwCsbOZ4fmCyS1hH1xht8ZQzQ6bBRYceCAgwVt/tvrGFUCCbAKx169fIHwBe3b7zEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784289515; c=relaxed/simple;
	bh=HjGY95qxU8AlizsOSyYGIJwDqHYGeiP3ujPcLFDyyZs=;
	h=To:Subject:From:Message-Id:Date; b=Ih8p/zelyjV02rdot8bnFUCaoym+CLtGjhyZLNCpSDfRSvFlwGiDv/Hlt+vLzopH5ryfQhM0Hj4lBaPmzH+K8oI0493YMQ/zs76uzAPrqpyMWPpS4zc4esRx8tvZMPD3s8v/pUj4hGoH++OOx7jho9jcn1f7GB1sEhqcoO4ws+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uD4Eg8ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uD4Eg8ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25FDC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784289513;
	bh=HjGY95qxU8AlizsOSyYGIJwDqHYGeiP3ujPcLFDyyZs=;
	h=To:Subject:From:Date:From;
	b=uD4Eg8aokpXBGhvKI6xq0EcicOOmuQMPoPKlIow6L8XcAN3L/27JHE+ogaDq/9RxV
	 oTArxCeirzBfz8AcYp+Q0D4Myj3wfyF6eSUSgKPCL4Ua1Q0S4LPv0vyDJ0pCqJxZKs
	 8gjfJKuziZ8PYy/5KgEQdSvWDcQWirUjSYamD1urHv5umSf23tsLfR1Z5DocE9PhRI
	 6hMF5Eha1Wzu29xCYU+ewpb9mLhO9Ac7gbWq71Pc0zbPQzY0+k+B1tb6YjGcPrpnk4
	 zPvdIaMDDvR27gq2QP3NTlOYQseHcwYmTe6ZjT/DmQ80yYzzcxTkW5gMaTcdt3Irsh
	 6m2HsIB/gWAhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD149C44520
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428951374.32689.5206480828468257100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b4fb9e5c79d9face0c3fcaa9e8bfe454fb51b4ae4b655b70fe7cbd518b032a
Date: Fri, 17 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784289513
