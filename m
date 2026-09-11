Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4866130E0F8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789104634; cv=none; b=VHIQbDBYkqXr0IxVhWotQC8lyzgc1lBpBmhdVwORuUwv40VpNBRbbyiAuRtae+Nz8FLqN12jv32Ns+smhTvJ0mlvW3PwfXUNj31BNz/viVm2+9lBK6VVWx/334VgtZIkW8udyv1tPpN7h82WY4xYXHFjc441uj8jb/o12PsFm1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789104634; c=relaxed/simple;
	bh=9mfuesXgALILu0BsabWVfY3uNv3hKTS9QvI4zOv+Agc=;
	h=To:Subject:From:Message-Id:Date; b=t20orU8mEXS8XvhCuiP0kpMzwQf/txF8JlwCTr3GGFJZE4TPtvfdZ937jqRip0j6QYUrFY5ySpzmAAF+X7EU3jQXOxOE9PjgwAxyfR7WpoN3N8GQT81mhE95pHKPF6IAdyTVIBl90f2IbF++ph4Ni+lSblNTYNE7YO7XzHekgMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5c9uKON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5c9uKON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4B3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789104633;
	bh=9mfuesXgALILu0BsabWVfY3uNv3hKTS9QvI4zOv+Agc=;
	h=To:Subject:From:Date:From;
	b=D5c9uKONHUOapGkgqOLE7745OaDxDytngpTRLaOQyjtkAfYDxn2DdqI9HfbLBUzkb
	 fzY07r6UEJj+6H6EF9JHiaUwKzGm4s3wokjFqYww5odZikMb9b6xkc6ADSGLtzEeGc
	 lv8cR5SMF7VUQIyISF859RQyv2iqcJ9RN+1P9vRks3GQ4mCss2ZjWi/IFgDPlbAVT+
	 Lsri3FbkOiNQdB9T9rf6xI0dIZJ8aWCmLdBgTo/4nzDhAQp32za7ptQz9P71Je+02T
	 JdtdPwqUeBEtkXRV4ldrl6YndnGWHgDV61c/IfjbXymSAOBpTVv/nSKcBmWGbPwlq6
	 G4/X4G+As7KwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C6EC79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910463368.15782.3567867121596095099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c099e20e51a50b051dff30e01852b25a8901dbe7c4f4ad7c584861818b4b0cb7
Date: Fri, 11 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789104633
