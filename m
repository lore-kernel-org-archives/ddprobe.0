Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC541C54B2
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741640934; cv=none; b=tmFhpzK2jzk9s3so2OLY0CryCe0yg0Eai4mz8AOg2YOIaouHFaaGDM3157nsT7bhaT9L6wVxHPnE2vp+k0S+l1V/9CciS5zzvTetYxMdqF9oYnB6aR6B2SfSaFjRP9dFgS1BKe18upjBOdzGR0K16BqqlPdd4vg5PTwDjqUtTRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741640934; c=relaxed/simple;
	bh=noVwPBthaQiKYHYBTIEHC3Zq08+zyO+OSa2VPcfd0HE=;
	h=To:Subject:From:Message-Id:Date; b=jp9kRlk4GOxXJESnXpwjthVYFy6gc3rDtGUHZBHM+KJLDwczXK1gJkJHrKkSNRFpsNZYSfXguH8mIL2oQdk0VtxQPZLcbL8oUgMC/OJUPfSlRbI+xkKiQy6r5HWp2/6zgNZ1RbcmQKX1Xx8MAUVWdsP1611/nFbnpgzcemCjpn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjdNnjU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjdNnjU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5461C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741640933;
	bh=noVwPBthaQiKYHYBTIEHC3Zq08+zyO+OSa2VPcfd0HE=;
	h=To:Subject:From:Date:From;
	b=VjdNnjU/8JbUcy1Wg8P8spkrcsQxEPucnoc5/18gX0+9U/nCHKDD2l6KrjVZDhZfI
	 QZYtjXnxCN9UwE9LR7AC0CL8MOzGzVIOjyKyUKZxmPueE9R/AkkdcdK/X0sYKLYffW
	 ztybZ6GxHjDTlgJb47HqFnmzQHlAdK4ShFzVD2xy+wzwxinwH2m3Gj2cJWN94p9jQo
	 Mb23v8ll75Z4B+pC9Vtj2BGh+lhMDIJ+Jz9gbkltty8gwHFtuU0UtMdzpqLL8P02WZ
	 n2tvUIO/pOC0EnAMdvfh5NsqF47Jj8XJIOJJFAHPxMr1DvPUJ/JjUIwuZ25UsSUUWh
	 c1B8kSGaPbzDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93753C28B30
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174164093359.4848.5125059591677796893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f970380106c6003ed0abcc3c0feed0e5c04b4db8e6ddaf242b11dc8476c07568
Date: Mon, 10 Mar 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741640933
