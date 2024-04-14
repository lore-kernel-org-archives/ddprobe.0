Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553001B94F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713080963; cv=none; b=eMYWBrrzJ3CO9ZL0wBcQJ9WsSi2B52UTYA1+o2WWkomzbMzbnzzKxjSdPhc72EleD2wLVKpYwg6+LRymMHDmnkvTbCw3Xn3zFPn7zfWotMpCLsadewZqZdM8x+bXnG/mb6U8bI8V2E/nIMg0sfA0Lhm0lkC1e5QqPEcpDG5Q4KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713080963; c=relaxed/simple;
	bh=Ph1Rss5MrUPhZastWtAi+99zBXXdJT5/FyYBImpFCcQ=;
	h=To:Subject:From:Message-Id:Date; b=jU6sVbFiJNMlTBNBZ2lBl967E1Fum+sA2DYEb5VsKSvRFwnUhGZwHIH3d0SZbXlSmlHXe+t0kx7pCXkWSq5rggaYPyGqDcom0YTaYpYIRjYYD4T3ODR6sQUDF0/Ti099RiWB7HW6S890cPRfVhAQF2UuAw4BG+dRdaqvt8ZSJkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ybx8/ssJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ybx8/ssJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3625C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713080962;
	bh=Ph1Rss5MrUPhZastWtAi+99zBXXdJT5/FyYBImpFCcQ=;
	h=To:Subject:From:Date:From;
	b=Ybx8/ssJOCX8HECj1xMkCkPRVpSmecQ7j/ePl0D7hz98G5L6rPsO+HnJvNFqXi2Zi
	 GdT0Ts3EebzpQwMMDBQRiXKCjELoGMmO04KWFFVx4IAqHtxvQHW1N3br4xjYa+8G53
	 n88+GnyEShhQ+HyY4fQwanZHnNvMt2mM6JDXmNcQWTQUTuc1NjdH2UfgK0q//Xdt4v
	 h04cCkOswOqi/XLRM/7LmppmhmltzRzJYA64dBajizjV7y2gZHstOrIm854ODO3J58
	 XQ30IXieqpdsjzXr/cOAjpuLNV2c5X2DTP48nEpa/e5Sm7y4ajryZzIw1XtjjS8khd
	 u0GR2tHZm4vEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA21C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171308096277.19011.16889749815339398167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6159d82f0362b69bb8fbce6cbb1f92c85f548b86fb7ea4eafd864a4856c252
Date: Sun, 14 Apr 2024 07:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713080962
