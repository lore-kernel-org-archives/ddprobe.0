Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F5F13D24E
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 12:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713356363; cv=none; b=EbJugKJkfRhyCxmxLIyHYmSCIXiHSwYe5Zv2JApCz7A4nK87t8IYHUtkuvok0NDd4N3Z6WqfrlAkmhNQsl6Z08ysQCJwhyYH5shG/0sUEBQrmRbXg+thziYe5kN8IOcmAYu5jgaxReVJ4X15l4EIa+BBwsDP71B0sz+QeNuK0s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713356363; c=relaxed/simple;
	bh=fPS0J1ZNmNNjkT1N+/zgQJI0PKecyGP7SLU/IjXiYaU=;
	h=To:Subject:From:Message-Id:Date; b=ttLKc+2fzAIs3JB77QD7VDv8t86zB1N9wQfGRRTTiIWtXCFZJoFQ8JTWx+k88a/AGFi+VmdRc7FwkAhWiGnc5ptDdgATgoLmBiWr3OcRMYW/9Sk7NBWwa/vNAoCHI/7S3I/hWYgW6jVfl1tFA/MvRCq31LoAzg5Aq3MKNXKsyvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpsXYPgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpsXYPgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1567C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 12:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713356362;
	bh=fPS0J1ZNmNNjkT1N+/zgQJI0PKecyGP7SLU/IjXiYaU=;
	h=To:Subject:From:Date:From;
	b=bpsXYPgNFm/kG2zpFfl1iMjSTikCCX839aA0kCVYx/CFsu7qIZm9mIxbTL4nhdTlA
	 ELUmeAzsC5g8f8sw6qhgeT05kMF+nqeM1BWGHQpU4J5ozv1c6qqNbNm27HkXwVoKKe
	 2XJI8tsC/acJZmfiblabcotfRyNQdcVLhJPkW1OAxlHja+DvTxLhxRewmOfRZRy+7w
	 wrqv6X3BNXZN8aYtCLE2npqpisZ2TWEOVejIZPBZ8IcJIgrEB8OVW6gfUhLWIYTSa3
	 jQxygFWhZefE5Buk/LJXfnFfJ3+VnWQMGi8ao41KJhDAfet/gbjsFztW6taVXXqqOu
	 5k+X5k8c/tqNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCABFC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 12:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171335636282.6149.16976797495314745987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06968024f0373baff359eb811bc0e42ac737c645d557377662bdc5492b257a0d
Date: Wed, 17 Apr 2024 12:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713356362
