Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464A44595B
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731298554; cv=none; b=dxWpp0OIITihsPrJPPH0SxFZQSWsqphqLrO1pOvQSiV0GmoxmYHPVWYSg3i1BoIU6iuoOgeMdbngICAQ6PfzWehLr+O7gsYg4wzrUYFSrMGxx6rp+PqKHMk+GNEiDTU+1CFazc2Ef7GLYj6HTX6/GB5zba+ebXVxAh5SAF46Zr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731298554; c=relaxed/simple;
	bh=mLhAqu4Z8NxmyBl5ruwuw8PXv4b1WuGD98bTelmqxQU=;
	h=To:Subject:From:Message-Id:Date; b=mgQyIPXtLQmAhE/nkRw4+d0iWEVozoZsCfzt7YQuv092WHTGVPJyqRIJ4MHKaSQHqj+bEdX6gAjiHqOOAxyivtaT8X2RIzBsVB9vHbdVGF39yCVJW13Ao4UuAuuKACms+xCkxxE759SvJwmnsNdYiA3zKDIA1oadyzipjjjeK+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTkMLQEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTkMLQEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCECC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731298553;
	bh=mLhAqu4Z8NxmyBl5ruwuw8PXv4b1WuGD98bTelmqxQU=;
	h=To:Subject:From:Date:From;
	b=qTkMLQEYmBZUF8EFlckZ4cb5sG8r4grFJVA8MZBLOUr7s2/VzhdT6WbzoItjCrjJI
	 gvKCxQuP0L+/VpeezCsDsP+1M4gPWr7M32FxN+xBsTkTYsiHjhlDC+BCT8J6aHsJrL
	 voh9/l2wPTEEZauAj5C9XgzVrd67F2QHAjILj2ddxl+jTvBa8edhcL46uWUkJR86PE
	 qc2y98snN4esEUyW5dbEv/P3v4DV2pjbcNxYBJa59GzUlSBe6a/4NyXm0RagG03a5J
	 4uUgv5nugb3QEZmWCBRZa1Y1uQIsXfJaNI5rjyheRQEiwVnDr9DNDBch/vmFgzRbfd
	 RxOZ+4CEYa5bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAECD12D6D
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173129855362.5330.17503897921637772733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8420f95cb26597902d7c672ae7990f155fa2f37b4977e1cb60758c8e27b6fba
Date: Mon, 11 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731298553
