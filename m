Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5872F7BB19
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718983343; cv=none; b=Ejo5cTvBHXIobEmlW/AcBUtygmbRX2nI60VSbl2smXOewwaG+n65ijfHuZPgP43DEmSyfeppXwPiS03/TVBQr3STN7tluTXX0+mXhNjtBxeoqmBYlJokJM6eZezvd2l384yZkKkYXINDS29NUlnerI3hHtwQgaaaQg+LUjWlnZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718983343; c=relaxed/simple;
	bh=TzrEirrRsW/5U8wsQzleiDFO/zM4dCqafghnM77nWew=;
	h=To:Subject:From:Message-Id:Date; b=ApNRVLdc2vAOifHFEbigOjzHml8zI9ppTvZ6KQLfRXnEtgDk9bY/35o3s3lQC2Ff14+mJREWmw7GD9zHFiHBuogP55KX08ssPJvwZcSLRBmgpebSNtEGcN9T1rcBbvVjd8FZ40cWOOyqwZHgijNkOWbqg+hDL5qORpBlD4uASKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNe+X3l/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNe+X3l/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC81BC3277B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718983343;
	bh=TzrEirrRsW/5U8wsQzleiDFO/zM4dCqafghnM77nWew=;
	h=To:Subject:From:Date:From;
	b=tNe+X3l/DnGV4zQzGJtsequrY6QzaBwEg0jY6uLwVGgy+y2eYDZ4OtzSmNwzDPBKe
	 P5D9foS1eQ4/Vn3E9q37wYYPp58dAjAZHn8NaSI/QxXG8KpVxzrxG4wY0SjDc5QQ0v
	 6oTiwCoS6bznTvzCZgUGbmypqlvr1Xk/zgFCBWTBWhfOO0Sm++08wZDRr/jMFlBADU
	 LLJvCClAcZgsOFg4SVik0pex3da0zPUt/0aW2779nuODlNph8FVQztuzBNlKjqN4l8
	 OqTVfhRuciJGUJbRSwxFb65gQNAW2w+/4lCR5VecBDRTEkbCkTyjfD9grUbYLpD05K
	 tzhYVLte89j9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED26C2D0D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898334283.2536.10806239039203274190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6feb5a08f44aef31f5c0a8d06eb1d2e0c2bf5e6d29cdfb9a47924897e2651a83
Date: Fri, 21 Jun 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718983342
