Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28955229B01
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747656594; cv=none; b=YBf8aOhfmvsQXkFOI1QPXC8qItKQiTtwx2D1s9nUmHvXj+R4PArybfVZy7bmy9nxMfthamuESTfIL6VDdHV/5O6Gly2oOvN4e82UmPHM9uEvZ/qVt5JIKvLH7/CRhWi+Lxsx+FlxDyAM5evHIKqje+BBMnID4hYD0VtlaszZxjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747656594; c=relaxed/simple;
	bh=PZkgfY/PH2BPy3MJpmPlKvQp6FFVTIELORQq6lfJTc0=;
	h=To:Subject:From:Message-Id:Date; b=kkk1GCb5pefzKQyPFHK4f5T8rGgnVvFQ4KraJGe7wP39ckWqyBVa0jmWl2azFl+D0iDUWUupDJGgz45HTP+eKNUwQP+g+MGq1br/IuocADawAsKB8zAYhgKchaIWuHGVVbkabUJBwhTbAoLrzuj9qh6TcN9pcUyrsTl7a/n6Wtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEJsjgqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEJsjgqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A8D1C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747656593;
	bh=PZkgfY/PH2BPy3MJpmPlKvQp6FFVTIELORQq6lfJTc0=;
	h=To:Subject:From:Date:From;
	b=UEJsjgqOv6OVPtIpv8RTjDxwjtblue04hK1JfUvKRG+rag+vIPS6iz3n7sKL1hfym
	 0C58VTrBbZKEbZlk2x0ExWaS0a+LRdlA2YS1zsGGH90bjc3f0G8ErlxF/YpOKU6+PF
	 AqwsujVmhKwZSSQVQWIjNuQxNRpjavGxkBG4dgBdIbe4OPnxWqnAVi03YBTE0xaWDJ
	 vwq5+YQgt86NGROioA2dZXAYZImk7xq4oVy1EhN9TUTvBwHW+JqQWWofK8xDPnPx3x
	 6rS5P6SWKpkP8hqZO0D3kxTQVSQRQ2ESqoL89TVTKqzHY6zAG4CnTj/q2tDa9W5jYv
	 B9bD2H5P25oKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E08EC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765659357.18627.17206201965940633242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40c626659708b10c388b93c2dbbd1171bea515bd27ead82b8cec7543eba23e5
Date: Mon, 19 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747656593
