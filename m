Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207631A58B
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707920897; cv=none; b=MaKPW+KbjkFlySdiItSKPgdnhJ3Y0El/pr3nA8MLZKMzsdV8gTpiHioJtd1bR0x8eYY8Bbb9AlMYfm+N9yafjadot5L1NHuIfUHcdeB5jYSDkQEqAUTNjmz6rJne7QMS49AU++OnlUY5FtipYLaFfN4Bigr9Rz6R4V6ImTxyHXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707920897; c=relaxed/simple;
	bh=khT+t+6xlIniowupWXT3CGB1XE2FbrupVBb6+hgl5Ns=;
	h=To:Subject:From:Message-Id:Date; b=COL4/5ym8TSyDvsCiWgn+OjBdhPlgNrvoFt53MOHMe4xddl43+48uM2voApJDfcY5fZBguTMtxBuQqZkdEfS7o5/MZjLLndaaIga5OaE4crDah/pq6CmOJlyWrPaKMCjKBAyuJVFMzmL987SareQHT4vlg/UAabWTVWw8Rucvx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHRd/XHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHRd/XHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737D4C43390
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707920896;
	bh=khT+t+6xlIniowupWXT3CGB1XE2FbrupVBb6+hgl5Ns=;
	h=To:Subject:From:Date:From;
	b=IHRd/XHLo6ErxUydxsXRTrMCWs377526LKCOWo2QZuKvgECLOF1rdFb8MmzDEFOfH
	 P9GSeu2s0M7j1rucayxwPcQG/YpIFBBJQdJVvnAdgtZfXCoX77MbI3wFGyIjCk+lL6
	 KUaXp5cSrckRZwc1LbK8Y0nUfcOQYUunj4Tlge3lGO8z733Ym4tZradFEOJ2IelbRt
	 DMtgQjmSRKV2h9o3qzIbPix3XRbIbjp2I0Vn0vYqWTtBqyJM8O8ES3xKd9X2Sk+mcp
	 uxNVseGn26QQ4shA/bJqixQVxg+55wNEkOsYipDT6b81dbzPb3GBBb3vx8S91px5/2
	 S7Rp2cvhqWS2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C334C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170792089637.7742.11393367207444032752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063a807f90cf78ee3cd8a1927841bd8b59012f5aa15da7500bb17b2054895d39
Date: Wed, 14 Feb 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707920896
