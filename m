Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612313A872B
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787392834; cv=none; b=bXnbYzNfRnB8+5vdBpYGO9/COdNrCyOBD7AUpVIkKX1EcNwLUN/5whydJosgKncFoG1JQZBukGCSZI9R7KguHqTI9Pq2tPEH2OnHASU0sAq1lV+WDKJXIIDgXIihDwSEcTsptmMt3kd6uA6pQB5Y4sJ8nzJ8kDC+4gG6YOPDlTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787392834; c=relaxed/simple;
	bh=C3YQ9MlUEiSZ54BztRwCXjStyMxNU+MGtscL2XIWrF0=;
	h=To:Subject:From:Message-Id:Date; b=nxLyue8auDTHtFk+qQAe0vPl2wzN4Q/tbIRV4S+Ly93WIqEU+OgXriB/dEANhqRZNYMv87Tj9oQY6kpKqTHw/q7jeP0F43HYDs7mfL/bSa4mTz5oXNoApB+64ZknchnET27cNNmFyjSY+weCcOekT1KDBO6MGw3zehVpaGTRMdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUpSp6jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUpSp6jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC128C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787392833;
	bh=C3YQ9MlUEiSZ54BztRwCXjStyMxNU+MGtscL2XIWrF0=;
	h=To:Subject:From:Date:From;
	b=IUpSp6jz0lOGrEVtK9tHjy6vIx42sg14O9xtBC6ljRKxu1dX3T9ELoQdVjCtT1Hit
	 Tv6wxB/Igh5J3mP27YRBJ+XOKlm+6N3aD7oFLHeM5E/xnxalrvJpFy1y297+TBftf6
	 9EF2FuaXcoi0XMY20BfkZ8OAYbrJWbPFhCrOFl/9O8jAJdGqp3Li161F6MUIVvyeuq
	 01OMi+t65WuIZsAfImwphM/LV0owDMZ40odv/WRaduSPl2FHdw39u0SGU/JbzsvRd4
	 OgsA9TS8NtQN0XA1yK5Wxziipq+ijmXvo6dqWpqemTFCxlXjY/BCBMSxsHHo+3f52e
	 XTdlxuJVm/P7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06EBC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739283368.26240.9662878540033299235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6764edb5de978a6b9a80662df452514c0756741f9156e9c6840da3e44a293a54
Date: Sat, 22 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787392833
