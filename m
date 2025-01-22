Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554F9145FE0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737522354; cv=none; b=oa4hda77/X0e6dcz1EIGk7cX9j/y0I1DrqTJKB6hU8dfUn0AN8m1K3isLTNK2a6DQ9w0plHYNlWw1rkx9uMa3GVIrQM/SbpqDZNWU7sQVBKzmyw1vu5VabSX/gmXgSvtx+tsBnVZLqUZfxzEkq8tY8V/jWQTAwTLK/LBwgJUOMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737522354; c=relaxed/simple;
	bh=3mQq4sSFwUgvhrGgAWWXG6oh7X8FVYXIeymDZvgiucY=;
	h=To:Subject:From:Message-Id:Date; b=Te2o+t/3x07of5BFXKh4zwj2ikfUBlEdxNFeeA8ycZERj/bGafY953D4IxCf9pqNIaX/mgVUE8dTGwpsPcbZkC4xUi3Ei0O0/hX7jJMOfLR2xl19jspRb0RlqlxkK02qb5hUyWl4hCAKMjuX8R8+mH//x3HDoQ961GNxpT3q99o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUgJeBPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUgJeBPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB006C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737522353;
	bh=3mQq4sSFwUgvhrGgAWWXG6oh7X8FVYXIeymDZvgiucY=;
	h=To:Subject:From:Date:From;
	b=QUgJeBPyUYdtZb9xvzpGzE47bsulhoIyfP0cgLm/05mirjij6g26KMQDaOSY9lTXd
	 L4XMjhWptS0HxHO0tOKQ/0RVu1llbWLXKT+SaC/PTuVCrQeC2ObdchLmhyvwYC72Sw
	 N6yNlFC/91uFUY46X0Hwna19TxaXTI+uJQPIut/gmHz9d+8Ub5I2076DSaZH85xh+R
	 xJwjZYrs+BXFRbYp9SE43agNR85LuFmlhE+WqVSZnwOaLmAYQ4qdDZxYrMHGvwVzjH
	 LqF1bUUppGgTHC4JhlzCouQe3CoUOSzh3c9eY+bFYoei883vBoolBUfRJ8PiZoaFrW
	 Ml5RfRoqiZ/Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F0C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173752235358.15004.10011722423313796495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555b5ea9f6300b63fc9360deccc3751ca2550b58c91722a1a893298c4c907c72
Date: Wed, 22 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737522353
