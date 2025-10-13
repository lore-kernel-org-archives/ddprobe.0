Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C553827F19F
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760359793; cv=none; b=X+29hW0YbuadVneqvNQojxCpEZ+aBSmxfEqAEvzFD7Nmi6x13t0SQDWM4+LWWxFax7lGYDdtnySTbQKX312ZpZrqp2FIxres0aHurCILuv9NDV9cWPFCXhE0ksNkzq3SWUZDEokzJpXgQxLWvnJtyDH8m+cE4A13mYlRhv/32X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760359793; c=relaxed/simple;
	bh=QER5oFhjoSpLo8OQLVzanCovo148F7EmAYv1E4VxXuU=;
	h=To:Subject:From:Message-Id:Date; b=jnH3H0aRrkKmDDc07+mSxwzKy7Qpf5hBJIfzFVBwDO7z7loFtQcj2/BZ/02wXXzXM2R5o6y1X3nMYhTFMlkONDtDGmhZ92waDJt79EbO+Ju28LCpJGL/9yNXVNpIfHceMTtIImQ/8YlWHaP1Sc31TCAcp6AQtKDedm/pY3RUBqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jf5ADHzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jf5ADHzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F979C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760359793;
	bh=QER5oFhjoSpLo8OQLVzanCovo148F7EmAYv1E4VxXuU=;
	h=To:Subject:From:Date:From;
	b=jf5ADHzk0GFTUYlEcCFrz2wknkHYlHew2Z5L2GZnwRMny75aPJq8NDojoHzyOQccJ
	 IdRmA7QJV/YLo4xbvSZK4rpE3NZlrr4+LZTRTfqUB1IL14Hl2q+Oy/qMuBFivTQpx7
	 wHwZHaVkZ2HGab0W5Z74u8FdHeG4aOWZROazaLi+fkm3Ccv+d2Xhv7pyWZ7JUlom5O
	 Z/6IF7FYVozTXj6h0QYq+6xdasn6dxVF4byF7690J8fLcGBGOc+9m9AoyhKMlIdZaN
	 5o6h8mkBSTGEibEozkjXkZonLk9oAHF7yNL+W8EK9IwIufPoRnC6w9oYr8DFuQ8bl6
	 OmaJ5ioug0kYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E914CCD18C
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035979357.23583.16409405969308261356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b6da4dfa3dec4a81093ef469dba0472f3a02f855ca16b2db4713a8efe233db
Date: Mon, 13 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760359793
