Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8F82D9ECB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770674634; cv=none; b=ZZmFKcHG5DlvY1U8W/tAb6SL+KBkWxbigrXdpDPC89HegMcwpj9i/6XogtDaP9r77Q6BLslotTe2jcbZ+Lsz1U5xtyw7JWns+XXI6T28e0bPC1jiqC9JohixP/53qM4zxs35xQXgAeXDkmjPauvKMIQm4Tw+v/mnqVBz7c90NWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770674634; c=relaxed/simple;
	bh=XokLfHz5PpNvDuS01lFqQNaicnikyNKN5qU+H99Glb4=;
	h=To:Subject:From:Message-Id:Date; b=OWcw1klTMiB/z62rn6rgFbb5DSDrBif1h+bALv6tpDlcGd/9nijz7I7BMim+GTeCnovffUrtrubK+O1xNLqibg14k4OtmY2BCfM1wStjQPrS+9NY8sGipuNNOubokK8F4cZZIq4beqBSetM/uPnm0fLegAzsta1Y0hsDl5k4F8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIYkrPc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIYkrPc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C00C19422
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770674633;
	bh=XokLfHz5PpNvDuS01lFqQNaicnikyNKN5qU+H99Glb4=;
	h=To:Subject:From:Date:From;
	b=uIYkrPc/IpN8zq3qgngrFVOjTKcp092Cj9Z05NAweLA9I/pG2510vEwWxOkick/Bg
	 lCOMcISJOqjHYXuJHxTjQlmeUyEfszZZBvICor+80QhyFHXwljF6n5titXyCrVQ+xv
	 VcR5DAssr7ZYD6j1/4KfrkL0q/2RdElz2Ous8cxIGddEBGmTzGHHQtbiTJ2T4ByLmb
	 jcpg+28BVvPPKY/caV63HZzty6Ph80wLdYLmrBtgWRvgKL312IBsYW8UvK19rdFoR/
	 jc5n8c+BFlh+WK0mZpCTTwWVJ6R+OghmoFxBpPIJrDfaiSfrezQsz6l+oqSXVi2nJ2
	 EOINAjYhzceHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990ADE94615
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067463360.26195.7575893114504985978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b53b5acfaba80b651bb3452b89fac1970b3befc08c919f915c7b10cead3068
Date: Mon, 09 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770674633
