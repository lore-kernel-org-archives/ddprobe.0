Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4C230C168
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779050434; cv=none; b=aY18Y49UKpDZu6PkSwgXS0DsrtkEOW+N+Dtwd7xIjul7TQcvRQlSQCl6iG5NFzn/EQmUIowmulcltEEpj/PAOWDC1wOY5iz3KQW68mBjdUOt9UIhvKZS4K8EV1U6EpBsD8Ew89B+aOFAkbRXBcBhM31ar7lYl/pA/CbIz7v/KW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779050434; c=relaxed/simple;
	bh=HxoWp/p+pa3GJq76ptn3MP4WVfdw8ARZ3Iq47u3ju6M=;
	h=To:Subject:From:Message-Id:Date; b=q1ESrSXWnYBwDq4ZfKVD+Vzxd96Tf74yGcg6m+z7IIthk4dyWFb/RCk+tF46NeRacePkXmj/n0PJgzJmrHSmoXlRvCe2ZO/HDT6+J8huoL6sl7xjPHZ0eERW/ReWcCkn1PlELXcGOBlbiDF02rCCt5dm1Y/pP+mDDZXoOA8dXmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzxjjSF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzxjjSF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C019FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779050433;
	bh=HxoWp/p+pa3GJq76ptn3MP4WVfdw8ARZ3Iq47u3ju6M=;
	h=To:Subject:From:Date:From;
	b=rzxjjSF42vP4lcKUrm+yAE2sq+XoHO70Qodzg4YLEz5ok1C0QKMve1DiEgUDMAW9Q
	 r3Q28xjrRrpkPu7WkKxagmz9P/Sc7tS/+nZ2dQ+7ji+d+QsiRGcTZtvPIYjlbz2oyz
	 eQ0e1FlF2Z/bNmWzJzXG2KTEpmmZg0dnEHn1vweU3J+RPK2I1wfsgfMejv1ePfJFHf
	 /v/l1eaG22mHSz70qWPnSZu/MUdXzRm379qOGW7MiYe8eAd74QppoYRLnE1eMN1fhV
	 90FOwVirTAycBcyRgnusCmYnqFkb314iwVtd+8DYdlrHaed566F/J+RHU614C2raOw
	 B/vIlSmsPteYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E36CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905043369.6500.11952011180687317592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b757ce9512225f853e32923dbfb617e241eeec26d13e06eaf23d2cd7b29ba4f2
Date: Sun, 17 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779050433
