Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C5D2459E7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760354394; cv=none; b=M9/4l1d57RSSTYw9gbE0lvFdvuKP6ntmjO/BYEmyy8ihfjbR3/xNBdpU6PTUP7FQ1dRORWbi4lEUwMqBlD8I9VffYdkmnnxame9KekTRnz26cWVAPwMg0RPuoX5kSu2mdIQ8AoFViqw9EO+cGx7dldsHFt104hCGCrIfN1cOc9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760354394; c=relaxed/simple;
	bh=urjkXvR+WntjWIQqthz6dDBtehuYe0kZDBENR2gJ5P0=;
	h=To:Subject:From:Message-Id:Date; b=onGAzJA0aPcdBMWT2KLDA6DGcSjvzLLgdOZmdy7rC4uetObvSiQOZ+N8jqlvM7W0M7wgj5UVVd8A+FHOxSJd/XKGo55AzV7qiX6QRtehgg2w7OcgMksQPPJQPf6tEsVBAk1cRSX73EoEYSjFEUEcJy7vHSNJY/s86/HgNcjKVPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj+9RdQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj+9RdQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F57CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760354393;
	bh=urjkXvR+WntjWIQqthz6dDBtehuYe0kZDBENR2gJ5P0=;
	h=To:Subject:From:Date:From;
	b=gj+9RdQm7UAILmlusu2KX/YVERN4NqErJbOui9aq5LiWZ/rN8PUdq6Sl4zsrXiQnv
	 8bQJJ/3/DQeyLHnsd6bqFgRPUHDAuZLICevvcEzdvg2iqHtPrNQd5enrqKRPstTSg0
	 NlvIv+qL1kJMAAgtVHgcAmPX+iAm0S6NP1D5dcNhjJrnMu12c6xSgOVgdCwpjlS3q7
	 7qvkKMtL8vOrdjdvGOjU5CDGFgbP2+vk/R62mOFauZpQATe2HfiEVDOgpqcfx+HF9h
	 pWPSii7nMeMiQdzX6oEPjCORUSsq+62ZCgpYOIMBHecKWrfkifFlgWQHTDD5LVpqCe
	 XG1HejNYL2IzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3FCCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035439358.15994.5119937320048214547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1156c13fc6d8deef0d62cc5ce9daef783250d0ad17a779056a7f9fbf141662f
Date: Mon, 13 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760354393
