Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3076E172BD5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727380554; cv=none; b=pdHd5Mo8mmJdtwzSV8KeYs4xLwN/FNw+ClDExGrIEaQZmT5wqbX44GXHriwKDxcaoEX2d7dF2PMbDJOuH0CGXXYvjDu6cpBjCf3ZpCv381ETVQMrGr4PaPpSSlj3lzXPgkDCEII8Tcbn5oblJWXYVShETWlCr4GMMfmfmcc3BQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727380554; c=relaxed/simple;
	bh=LeznnAKtO8g8H9QmDIW1TPsQR65knq1ZmuwvZx2h/yg=;
	h=To:Subject:From:Message-Id:Date; b=LFSihRC1kq6inGjRhyT9X9GN1xGZ6b0T38wpN/TlP7gnaohwyZirDorMPollhlHWX26EQEz2AVvoa8D5jd6IeptsLYGREQqxnC3z/V3zw7EV6gtRhnDyFz52QMgOrOOIXRF7Jlb1BumJZYu6OzUZzRtIL0PJQ/0fuFuiSkj44m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdNR0E/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdNR0E/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD8BC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727380553;
	bh=LeznnAKtO8g8H9QmDIW1TPsQR65knq1ZmuwvZx2h/yg=;
	h=To:Subject:From:Date:From;
	b=FdNR0E/38E3XPA7zuaCfpL0O6tgzDKVluEaFK7qUEEQPA87LvJDchrfsaWrlloDhk
	 9sIcUX/gyY1Kyv+5rZnC2A9cB92SaSf3EMhWtz3P7PzfB+6TYKFUs2wPXpcgv1tx4L
	 PRRcZh009JZBMQM/YXlU/BO7CjbyiyNXtJbS7CR6oejh3dIBdW1uffgDbIXHzlSHBJ
	 ihJ02w58uvtrf717V+RNWJOgH///rtJkkSsQuArorqD+8i6qVNFmZdfLtaA++iwSAq
	 fvcZl7npFf6d0qkxnXrUWHUZBQSnJTjdwndJobZAgLgBCg8ra1JZf3L4/niEc/5x7g
	 gfvVdkN5kTc2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F9CDE004
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172738055358.9602.16743312535781413679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27839bea98ee2aa491db2507732defe2da199915996421cfebf070aa63e680eb
Date: Thu, 26 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727380553
