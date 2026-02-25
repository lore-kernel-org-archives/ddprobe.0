Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5EA3ED13F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772047494; cv=none; b=XJ0mQcIjn46DrRDM2ewruiEnzdJVL4P008HV+saRYqKpqKlOTTmGk35u4+rUt4MY+mP0mgnmUf4l5kGwDAD0kodzuaYQTy7DUhE+LkcCct3YodQaYmjHhQSsCY++d+yPUE6SSjbuTjcGbxYLxumCsYVKCWYyPJCcCpmDYOAc4xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772047494; c=relaxed/simple;
	bh=Cl0EeIiC6nOM3qvfv/8L5tUDxYxIfBmwRwiGMDY7QTU=;
	h=To:Subject:From:Message-Id:Date; b=X8VFGm6B/J7GsblWiV2Wc9MxQ2IFQ/NMUn0bvx4LUiJ3C9mzjtvxV8lMEwnJkAKhjztfBc5thUK6kNXEr2i9LbCs4PLhnWXyN8HfhYJWroAb8aEGpDwn3o/ZRBsSfX4/DHfUpk0o2Tgr1Pfz7Gi0NKLgmz0K+S3pHOd8P+skRBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/iyqrrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/iyqrrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E35FAC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772047493;
	bh=Cl0EeIiC6nOM3qvfv/8L5tUDxYxIfBmwRwiGMDY7QTU=;
	h=To:Subject:From:Date:From;
	b=k/iyqrrlV5rfAhGEkKRKQ4GyEUQS9d63sg9JJi1F1/t0Z9YiRu+G+ekvirEOKH18j
	 SK1WuTNnxVqtCXHNLGWAGjAHeV63eJLC6k/dSj5ZImW6JCK6ic6P4mD7kuSrnSEXnZ
	 bxJWvTNEgj2zWQIZ4B32+aGmjK910xMssM8/OFz6py45/BkO1v3EcQ+XMm57UqbABG
	 ieS8zqStBJPm7m1KHJqHQpqZB4hs6sHeX5AGRVAjUe0kRkUqAU53Uw89PiUAlHZHIG
	 iJ6YV01GC88Iy5Vs+2GhqLy26Il7YDtaf51XWbxm7UZCInrOfW7j6t/yczUwJPe/zP
	 D0GnoGFOtZiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF57FD45E0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204749368.14050.15988469514590744029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2153448eea7e4f595268614af7ea6004c758e5271fd9ad3dad2bfd14b45daf
Date: Wed, 25 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772047493
