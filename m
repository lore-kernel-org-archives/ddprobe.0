Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC282EA732
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784856034; cv=none; b=dVYtFu/ogkC/rHGyIfmI6q7vmSV2lVJDxyW5TQ45Dq28RDRzTKYU98eJqC02NLUsO9xUa88h8rANNtWRlHLB0Erasb1oijCZYzOVw7NjmzRNW+wzDrAZJK+sQsx/J+W8Wchq9IlDPHB3H1EiJtAYEV7eXdtmRLxz9WAhe+TvdwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784856034; c=relaxed/simple;
	bh=N2yPe0Lw+skqZCVr+DBwwppUPMfPeatyReb9t6BDREY=;
	h=To:Subject:From:Message-Id:Date; b=ow0qWdIOtYo42DwYipSNGkB2lvx8tIm4CrhA9ltdg3nlekLaQWaXBjl0pw6nVZ6auMeSCxEcfeCVEch9MWHh4dvJYxgm0xct2n4uqRVksQG0fbhj5QPZg7MUbMbXfH0k9MtLw6PrRA2xnvwkhnQKBFH02RJJhOuAuCAlrHl/A4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtsLjKg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtsLjKg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA68C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784856033;
	bh=N2yPe0Lw+skqZCVr+DBwwppUPMfPeatyReb9t6BDREY=;
	h=To:Subject:From:Date:From;
	b=YtsLjKg7ml1BLClF1+Y5BK3xWdBtxGcn3mwW2vauI8FkhfxvfS5jCMR6XxLlJvgTf
	 DDgiKEOARtsphKrwpp24K7txwk6Z2Le8n7QwDyDnMJwM4br6r/iyoQ8azmm8tWHiYX
	 hHE9TTSrrPP3Jn7ECCaSQter8tgIlhdZaIgNumQ9D3AaZlOS9SkT74XUIEU9a1hWbn
	 TWkIAAvDrxo95bKzIIoEC79X1jqizT/xzQwhJwcOtv1G290Se9PUhHVnTb2eIaIyg8
	 kphsELHXmxmTQFIaywnBqp4LjfPP037+vhzfPbuW5efxppFgKQcOmxKP0xJNzHaKpU
	 l3BX2OKLf3npQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9F5C531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485603368.14942.3858574441257525782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5003a0b938dafed99d4913fba0ecc98344bf38d5eaa0a01d6ebf02fdae83552d
Date: Fri, 24 Jul 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784856033
