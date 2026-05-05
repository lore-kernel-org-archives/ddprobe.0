Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1683A48C8BD
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777999054; cv=none; b=uoP6ZChCxXcfWrmQJTzJ5RgyfCL+MH9Cswt8m8ycrfkbB7uP0vANozuFhnvpZM6nY0+otg4eBi4Eld3pGoahPipKglOZEFb/+4TwAayE0qEsyeDJlrAtexCGVouMHBhpz53aQSTDuCwYA5bz1KOwVX6zaSb4TJM1UebBQ+aKoWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777999054; c=relaxed/simple;
	bh=+5trO1zIAJKgz8FaoEPUUlZ0YoczcneDY4xzggJAmhs=;
	h=To:Subject:From:Message-Id:Date; b=NuZfG7JtnU4iO5zJlF8auBUkE2Z0jErYpis+3o3hvhppc6ODffPNrLTTz+u5qmuujdhQGuyybkfbF4On1evr5a9sPEHlWkDbRX/xeaissuYw4gwwfWkEmyLJI3FZ3qz0xMjJ2lx9uF61rn0gHogV9BcK44DzTlNlCpxz8P4KwV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrNFvyC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrNFvyC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC05C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777999053;
	bh=+5trO1zIAJKgz8FaoEPUUlZ0YoczcneDY4xzggJAmhs=;
	h=To:Subject:From:Date:From;
	b=XrNFvyC61suJtSWwrdWOWSAyUSnoySUdtPrnxssVBM+mkMh2ynwzgOLWBX5b0Qjsm
	 OwlMwVwEMM08BaGFklzQ9jpL+k2fYare04nkDiPbAipd2CFs+KogS7EzFuXPVcIlBr
	 J+goFwO62zcRxHyV9VTd4FnZoVFrhlyrezuRgBPK8q8oB+Sv9o7WcnfwNSFodIPHpA
	 wwvWc7n9vL9rPdrvIF9ezbAyFXG3prYPfLW52mXheVaYeV6in9XZ4YIziXBgzYcEzV
	 obz7D979dDGnwLn8I9pOl0llubv93xRGWSMVZ8/hMsikwCBfeJHfX+dzKGR+MFfxxx
	 UD023nWYl3Omw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB56EFF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799905369.1863.16165951714787536752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be790fb6e4bacdc70081c0626916892e4587c909efcd05de836521c0e11fc577
Date: Tue, 05 May 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777999053
