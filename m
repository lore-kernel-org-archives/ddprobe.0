Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB86282F04
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779524554; cv=none; b=VBf9zfP1jCCqUjTaM/PqC8N/weag0hGI574IEYAwQ3d8s6PpupdtGS4da1HW0ZT/NbX/EsIRigpLnjb4tVqHmd5ivHUgEiNzq9X6pMRIM7sOGxtT6AeXeyymknk+ypmPKqqkjQAIPfjmli0HBf/Ga7OutuGHG+ThQQBHDA/jA4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779524554; c=relaxed/simple;
	bh=Vc/FgXwEdw/DnqAPOGYpCo8lcvbEVOQI8vPBPzrsX+U=;
	h=To:Subject:From:Message-Id:Date; b=LtGNYAphfZQxm69vwxoDNTa4MfOmhRgbB6LYvEL0yuWpLJj6fKpP1QLNJ/pzOfzCCd1+s/qOBQOUgVUgJCfqPUJPAhlOEqKlQKIgsqqkQE+CbMpyZGd5Qla5gGbibDuvsDMPXjxcGOopnHTs9APK4Yl53tCzohNT2XNcc1oWKs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTz7w93Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTz7w93Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19A5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779524553;
	bh=Vc/FgXwEdw/DnqAPOGYpCo8lcvbEVOQI8vPBPzrsX+U=;
	h=To:Subject:From:Date:From;
	b=VTz7w93Qonw1uyxIMXZnvGMGrSI+cy+W3SWLzgTk1qLRiUJdZtkpWb30QXNOk1SDQ
	 WBJUOacEilynkhQ8YgIDOM1KlO6Hjt59A+tZVRNIkNlMGwj4QLQUNzCdKdGOCWvYST
	 9sC3IOMTlfU3IuwP2mbTWEm/wm6rg/gAHSPG5ItuCBOCW/zaOlFaZTJFQFefVYsnkx
	 h+J5DwwfE85ZNq00MHl6ZVNOa5G9pISguKW4szh+yMQZb/W33oIN1lr3nz4DXhGQqz
	 MP013RbpnJ3SjTWmyOMV1lQ9QTflHVWhUr+Xdo36D/xG//rcUXQ78iA8XwQCZo2dN5
	 SkKxjwp4t/jjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90BACD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952455368.5089.6633396336120695699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103f35cf0205a335b191275b2eb129e84e1547109cf7f2128a077466f784bb1d
Date: Sat, 23 May 2026 08:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779524553
