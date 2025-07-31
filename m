Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECA0242D63
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753940394; cv=none; b=N/DYNA1nt3/yPWDlO82rsOIe5sUo9xyPI4+jrTNteTrVllQI8yYZnrq4/MgrmR2rfYDO0AEl0gYGEygEoy0KkSUJrZZIfpqUNv0FBWBid8aYiCrFhyMxT9CiRssHSk/WIpi3wyb/wqRqndWWTbl2rBPnmarjcCF9qlw3zJg01p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753940394; c=relaxed/simple;
	bh=PxK9RSBD7cvhJczWL5YllxczJT2uyG9ipZoz2RN+w9Q=;
	h=To:Subject:From:Message-Id:Date; b=Q+gCWMpLh5XJUrl4koQb3i4h46sZP/gYvwwP4P0tF3Af2q7dJ6uhUmTUYaSPW+hZuA9kgQPz28vdlMvQUU76HERkL6ZS/9odOWY0pFLpzAOY9V3n+2iiuGml3xSlRSIaEfcsHX+9DenuiWqOkFjAmUyAYJeR23K491UQJuJDmN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eb+5hBlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eb+5hBlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA942C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753940393;
	bh=PxK9RSBD7cvhJczWL5YllxczJT2uyG9ipZoz2RN+w9Q=;
	h=To:Subject:From:Date:From;
	b=eb+5hBlQvLA1pNAX6PG61Wq+ImkZvLfA913J6+owQ0VX28vLQyUHe3mwWi0CIMoKG
	 cRDuHP/TWfkIhuHU92AIw71ZqOBjZ4kvmXRvjUOW/vhnjpQfWVxNQRzURjaz05T96b
	 Fu8WdfUp+flmJe/gjYz9IWfOCAw4ogPaTBqABq2Ne7lNO6R+HJaq1YezVUOldJ84LR
	 c9FWZc3D6TDl9LIxyeOCNCQUWzs00dpMQ3UsXc0VynZSfQKvNHvOTJouyyme9CJo0I
	 TUkzggstg/c7dKG8Ptn7Jzb0itPvBvGH9h/gIEtfgDdR1Y/E/v6wcESvKsjqdflCRR
	 HPo1wZMSx0z2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997DEC83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394039360.16813.2220236435652951771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7ad150decad986ab3b7d1c5873bc58e8c08d995d77e52e6d37ff74b70219fa
Date: Thu, 31 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753940393
