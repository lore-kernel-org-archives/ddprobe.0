Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEA941A8F
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733716554; cv=none; b=h9OzKaaXetjY7ksKISG20Ayu82d/6kLroMVsjXJBHYztzk+i9q/wgiBgkbjW+oVxJnUzV/vd+7QN+ZIPp6DrjWAiVEpJCvAxbpvClHHmlLxzC7EJBJdYRAoAEZmH0YptOEOXkYHzF6mtWZN4o8abliiI7cwpZjUmn8If6SCT3gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733716554; c=relaxed/simple;
	bh=bnduXjlAPMGlkzTKkgwxOXogLAwlMocrcf9wYIuaV5c=;
	h=To:Subject:From:Message-Id:Date; b=AMEXIyntWX3HtDQbnRm5uMQBIbC8/o1aWpMkqMqxoAISt40J24j+PCKzWyeRDmczufrDf4y5Yf5NKqtlNmwawjeSgg6STODAeDjvyU/sthY5MJtE3CiP2u1AEj3G6b71ELlGBoQmmC32u78us3wlALcNUdvvVxSNlskV/lPMvSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvYv73Up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvYv73Up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1446C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733716553;
	bh=bnduXjlAPMGlkzTKkgwxOXogLAwlMocrcf9wYIuaV5c=;
	h=To:Subject:From:Date:From;
	b=CvYv73UpCR8vi59k1qZBGs8FEUd8E5uKcCXqMZLfpgAmzPXVpUApKj1h4b/QCdKlK
	 tCQcwuASj6XWKMp4ScEhtfoMgS1mq379HEJPAUaVxCJhjiQk1TPmOT5+VETpE5wiaS
	 vq4j4p4V2xebNUNpbne64F5cfpbSz8e5NDuPUTVh7L00jSTEfG6C6WD3Z1LXfvbWiH
	 3k9wOjgnrExeHJAM8xHyfgejI4QoBcQ3oQcrcyae5/FZricZ27GHU0+mhGYd4q98X3
	 S5jL+QJSPl9wxTrDrx2gmMAyrKbcThqMuY/iPFcgBLjoMsQHoER/4syY6St5IjUYjH
	 qvwnRGPWVVr7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA36E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173371655358.31908.17900726971212825806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03ef47c8c543c433a63065e65926776ed0e744dfcb8636c464c12451baa4eb0
Date: Mon, 09 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733716553
