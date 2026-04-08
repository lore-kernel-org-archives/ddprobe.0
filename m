Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AFE18871F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775614534; cv=none; b=GLZPZwseCxS5FMwthkpqfBPInA6RB0Pe98s5LACahefuh0EIZnaSC0xz+MQrSXrZkuPUkvAqJMYLhOARfe6UCoubF70HibwMpyaXIdtqfStDzC9EJajxmQ+ZU+7pZvZMxthX8i0MVzJBZOTlPc4tHvlTRtjw5ibOh8NCU/48Wgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775614534; c=relaxed/simple;
	bh=niA34IDhxfOIwVmmRlmTTCMEiKZOPirSVS5KOMuL9zc=;
	h=To:Subject:From:Message-Id:Date; b=Kn67Npw9isl2JDKfODXFiILoFvgYzu2VrLQj8nbRGEgvPGFygZ+FBd6voNQZMAzWAtMc063rwyylwTgYLxOBPY1ivVwQIZh9RHUEzrXrS4Rgo+Uel6xWrNcnS4Trn/UqU6uvzkg6akMAmSa1LUPHfCaIcBgqipNqmwgIHPUjlZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUT6G+il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUT6G+il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB366C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775614533;
	bh=niA34IDhxfOIwVmmRlmTTCMEiKZOPirSVS5KOMuL9zc=;
	h=To:Subject:From:Date:From;
	b=fUT6G+ilOI8Bm+PT+TpnZWE3R/dSwpxsgdY1hBT4HF+SVbnpxsKVTnm4z2NnZ2w9l
	 QFYsXNWS8Au9FJXuVNXrnvrwy5aOKJaTk1mwlaRdt2fJBQul6QNfIohe2m1b+TxFRN
	 1UgHnAwRJIYqh3YVDyFFu5JluauImU7pyNvpGGq9pR2VTWLp4JiHbuKqxQ94B+gRlF
	 m1hd92fsGrWK0LrhKP9hBFVhlHIGCciQrqB9El/9LGPFMCZ6rpZ8ThJjTMsuwwiWzc
	 t55ys9NkyC4XXrmAVTI8nIlqzkzJ5rXyvY50IdSlATsW8Bf0y0ytiW0dkOMLj1aDor
	 QrN4ePohxuPyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CDEFF513A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561453374.30380.9231280784503421909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1226ede80415899f99cbf7dc32481f3784f743f7f9e68ee943e283f0015aaf9f
Date: Wed, 08 Apr 2026 02:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775614533
