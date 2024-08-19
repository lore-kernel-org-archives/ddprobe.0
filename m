Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120E117837E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724097954; cv=none; b=Vuk+FNMMp9SirbNk8i84dcpIr6WTGXfhEMmPPSjwYnXz7tYedd52Hs398oP4ayyjJ7f0T+kYOArBzDC963NSdAO6Ydh79+4+k0imKgODxhGWuFQ32siLJoz/3DQCr7OmpClkUg5UQD6l8UbMHh2nMkoO8Ii6FDkjuRQ9o6QbMOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724097954; c=relaxed/simple;
	bh=v5ycdrdcv7fYyH6pmWH4SiDwJCNnsOQGWdKjfK6Q3o8=;
	h=To:Subject:From:Message-Id:Date; b=TAfl0g7dO+BpOx/yOeEUtlaehgeKoLkxCLQRjnl12sG/d1foH4WsBqqaAdffZxkrxDZW+YLvHJ/wcvWedogLZcrPruE26VkXztbAtuZYJhdMbRc5zxXjCWBXYWxSb1XyTp4QBr9fK0x2XCNMB8tp5A+Ay1ixaaE521B6SrHQgjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npX8hp9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npX8hp9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB0C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724097953;
	bh=v5ycdrdcv7fYyH6pmWH4SiDwJCNnsOQGWdKjfK6Q3o8=;
	h=To:Subject:From:Date:From;
	b=npX8hp9c68WXTREQ5ItMcJwVGnczQF7R1ZFRvr9EwSPXQOHBoEGUynMd8sLvqUXMP
	 K77bOhstS5iPwzll6msIMlYcqP6ThdcgeZ2rRkobYgvNXGJi8sBzmemQ9YFfLLLxpL
	 4NbQThnlgP1zqiLZGMkcSh6+oFWQblNsVzbR8ygo3tKrQCcXHKxBKDY2zHywV0jZoF
	 zDC7b1XX+PSvKxFiADRmsXw2w+cDsCEErGyfCQYIxFp1d3IraCmhcGVeMTKkw8GSld
	 QLQF5P7ykSuRd2P/O4rNhg3s+fOvpl/C23Li3pVD94qbfARQP0NpSVfksYn/oSNGjF
	 iuw0I0YaHWPIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975B2C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172409795360.1284.11347659513536837533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8719f0c166b9de5d7a368a31a121fc5851201b05bc45e74404267580fb5b2634
Date: Mon, 19 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724097953
