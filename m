Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4101F3D524F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785402034; cv=none; b=cJYSjHEPoyjOFgEzEnCtWuPtR66/DTsQnJKi42zwyF4nHhypjN36t/fFbGScqS0BiH5m+UXKQbqpueOk/NraSBXuNndfCd0EEF4l6Y2hoWv2KiL1NDAKOow9Q5HK4Oq+um2ze281p4AdkSrfR+mXIxQ6O7wB55B8aMyDzyyWlJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785402034; c=relaxed/simple;
	bh=4aSkIFdfneQy+wg+WKtTyFBMTuT0T0b5NO3qEm2Bc4k=;
	h=To:Subject:From:Message-Id:Date; b=hNMe99pNa+hGNCwE7BPAWYoQBGlzXJlvtZ+c7oCK1+aoFGIEQIiYgouuD7KNsockwq6YQAUlqvzDbdu6wrhXGFvVB7b/GhR67EZLOb3yLEIva9GXHGxu+W1Xm+gC7VcqwjVHAMQU5dNexaneZVjxugnZDqyV9zCuHACrlh9rhQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmgDk253; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmgDk253"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE486C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785402033;
	bh=4aSkIFdfneQy+wg+WKtTyFBMTuT0T0b5NO3qEm2Bc4k=;
	h=To:Subject:From:Date:From;
	b=FmgDk253HQVDLhti88oNcls69MP0ersBExMAdqfzHd1HZuRYt/BKXFS/c9N/ZLKXg
	 4CT6LXhZvoYzpqMDqUJ4PMLXZ9/Q1ma3CnZSbIHsybUUD5XvzIcLWOxgeYvn1+VQ+d
	 v7pVTqnFSeZgYHUncBxooPw49V3Km2cih9NLSgb3xo/eU2y5ZRXeWadWrNDxns3PEz
	 8jG2KPFy3pJFhmi5tbRmGjbOxA/4eXRVH1zYmpBf6Pil8ZuZHVgc5HtKVwj82lfNAU
	 oWW7137iUBOfDSfPcTrSKptsgcSO8Hl5VZT0uEhJbpW3e5exLr9v6S4Tlf+Hwhilyi
	 1f2dP8QSSJ/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95F6C54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540203368.29774.3240106907970356902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be28ddd63bd5f06ab8d07687f6300a390b8bcf616fb6b64216a2fe34b495851
Date: Thu, 30 Jul 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785402033
