Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7CC2192E4
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765825374; cv=none; b=M3c3JnB7msntWRc2t+QYpGqOvdRiYQs5nCHzTO6odZr5hhyiF7vMteam2WEw/gDWl+MBN48nIWCI1cDn8q+I73JF8ykw1PnZTKBgz2aMw+O9/E1dZYt+wASWheJWYkFOfNhHj8civUS/9wypMFN/FtOYZ2EdOTUSueGfwjr+a50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765825374; c=relaxed/simple;
	bh=uibKUMOolk6AV1VvjS75gJt2lq0CUaF0oxyANWUcBMc=;
	h=To:Subject:From:Message-Id:Date; b=hsn9iLUHdOXrQxeaSCd1wP8wv8GtPacFThEVr2lNmaRbcNuDte1xnp4lQxTv7cFk6R2fTbrAwYvngp4s5aTrPmOh3mxfouUskbU8jNFaWBWjnIhag/5PDDlDr6LXep0jsEmT/NWdsP++1fAYYCX4otj2/E0SUh9ty4F8EnT1yfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcx3WSnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcx3WSnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4291C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765825373;
	bh=uibKUMOolk6AV1VvjS75gJt2lq0CUaF0oxyANWUcBMc=;
	h=To:Subject:From:Date:From;
	b=pcx3WSnSM82WMAcA/NU2RHQHMnTyVn9PVIwROxYi4hpS4IyFa9nHbBSgzHKdIHPyg
	 gvM3OSbkDevb9FDX3elQUw52uiEpP+fKoI/4XQSreha1Y5sLAIksESiiIGcb48zbuK
	 u3+HOw9ucBPkRyI/GXKP4Q/p8/15+glNVG0DFQZJlvBfIAxvFa9ir9tkUhPFUsYIEp
	 ccC5sb/dfmJfO+d51j4ONz+52lhhQUFzBZM3rDGM4mlOg405gnfyxC4VkDDmTmQom7
	 HPPv6QFARyXbuX+Je4quBonuPR6PuyEGrNgL6D4bbso+55IccHUHOcq5D0QbqcJBy4
	 lIbpr28mL5YgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C3ED5B861
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582537363.23000.16347618916334878260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e72e79d6cde7d77e3128753481a0d7404b41242720778f1721905f059f3c8ce
Date: Mon, 15 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765825373
