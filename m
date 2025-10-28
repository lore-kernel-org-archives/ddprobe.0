Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3710B34DCD9
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761674394; cv=none; b=qjSZDU5fwe3i+43TqXG9vB+1JqcrlAKnYGEmyL0NQHtJREfC1X8cxN5OzRAwADgJInsla/qCHsW2zlaYWFTf8ksAcWvnIhYDvAsPqBhyknfbAhcLVtHJlH4XhEzTYpjOg4BhOhRNWyzpq2jsBZ8x28GQLxM0nM2cqpFtuItojUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761674394; c=relaxed/simple;
	bh=EQ+tXxlAx+Gb78pxBsBFv8fBSddviRaQiYsQOvzxNJI=;
	h=To:Subject:From:Message-Id:Date; b=Q42CBiLYKV9IJx7ZPo63N67qvKeftH9oLaRwVeh1/9iTdKh9ZGnzku95JebGVFFjb/OlEzRsrQjoCnaNd2A9xj8F+GV/BLd6u5dN2dtrfQKQhrVGUJXwIDDt4BtaL64cyrVGry4ePMcoM+r6vMVnwAPiWOdNgFXvKMjHjaLavrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6h5+3h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6h5+3h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C05C113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761674393;
	bh=EQ+tXxlAx+Gb78pxBsBFv8fBSddviRaQiYsQOvzxNJI=;
	h=To:Subject:From:Date:From;
	b=I6h5+3h4Y2w27sBO4ntOI/2cUnHiEJjZgf+UktolP1KYpeoTyMICIeJ9w5DwfA4DQ
	 L4QYMbt5Ckp8PpgeF5FaCdwE1mqrE5at7DIH+XvgH4i+wbvDjRobi+sy5oH9ITidlL
	 8rrq50HFay0Idf3dKgk1Ejt4OGhea1Y6qVBUPlTgKOalJ20jiT3B/WDTkg0r6etje/
	 JYFMuGcX24eKALGI0uxCGbsDiihNcVSpKhS4C/UxGp7DA7reGQ88V/Kqe3bhggTWKp
	 5IHlPZReoH+AqrOCm+L5Ffv1YzHG0W3WIyWvyuaiX7ermupQbXVv9pcvgim9z2Pa9s
	 jto2Yy9HY3G5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96039CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167439360.7091.13484141764904730584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc03805cad45c439f835a3b033b518735774ae9d6ca1dab372260596e7ae885a
Date: Tue, 28 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761674393
