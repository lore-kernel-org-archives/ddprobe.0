Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4106413AD1C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749040794; cv=none; b=A3i4C8hHUeYfWIjQJ+WB+mSEXUkSOetpzzk/ul+yxRH2zFSPUL6lHh14pV8GvqTofMryAdj0+rHxSX3kxUH4BIlYQ3JwpuXXitQ+uA+KvnSqOVLECqaNkXfUey81tdGZH17ve2jFhRjmE0esiPv1VgGd/YkCiF2bIIi5kj5Th0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749040794; c=relaxed/simple;
	bh=Fo9jpMJvGC+4QG+ysn0cncrljGarkDRW3jecxvnub+M=;
	h=To:Subject:From:Message-Id:Date; b=QSH9xmkiD7vK+iDawDt0j3gJLe8pzEE4UBwjTrfgveCQUJSgvg2rvJ/oyGj7kVdpXWHeNm2Lq1FdHr1HxQZNV0KBslI+Uk3kKsDteAZuZLUItIA8BCj1o1NIOY3+mg47dJtFVyjivUMu5/mmB3NUF4f+sJvsCYxl+QNIheqEbvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpXzUCJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpXzUCJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEA9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749040793;
	bh=Fo9jpMJvGC+4QG+ysn0cncrljGarkDRW3jecxvnub+M=;
	h=To:Subject:From:Date:From;
	b=fpXzUCJ3YWprc/BS+pCGE3bY4fdNx2Qf/wyJqGICgpUpnPQSkmZArtaVK85dpc8tJ
	 dZCeCHq8/gFwxm1YCdyG5HJS3QRm0FSboNjCspMuROk6EjgG6Hx6F2hEaR9MSs+eDz
	 iR9+ICim2CyChpsXMNXYIPVs+vCRnxlEjGvJ8zM3JyI77rJmCWjWnjYo63VnkUsTH8
	 HbI8fZrvIsLuNGvwSNzZ/tRL5CyMGfNV/prCJl/Lh+h8G4zJ4A5uYr+haO3DP+VPPU
	 9kR84LtDgDHqBwPgZtk6Q0HrfDSNoC95WdVV3XpL3Wk65PWZpTAlJdixXe2w1sCWey
	 WnM1/NpnNyg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90294C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904079358.29264.8926427548686268358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d43fae012770c7e1679beb3b6366fa8b2a013a008f26ab13363d7fbfcdd02e7
Date: Wed, 04 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749040793
