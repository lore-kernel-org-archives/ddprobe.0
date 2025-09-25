Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1283C11713
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767994; cv=none; b=jJeJzlzIcUY2k3Wpg78IIdfrVIHP8aimMTGdMAjlY01pOPBLxVwSaMpoZhicuEiDtHROJNq+bhkUiAvpahjEvBC6jEM16GuLIbftP9O8f+sVTpP1soutXq+uf6YvmMmkICdGK3wZBdofwNsZGRE+KCfH51EIYr4CswBQvq9+uQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767994; c=relaxed/simple;
	bh=aqvwQLULNcMZ5HvtN+UUXVXDj+UYmXpgWl4jyLQqtxA=;
	h=To:Subject:From:Message-Id:Date; b=HT7beO96zt/PyNzDO5UCuY65371KKKKN0W/Npb8hkJth35Lq7ULoDuU+VU99lvwqXr8tNPqDAJFKkJGN7wawXz8JZpfhW0Ta9dg9Px7YjEG+gUYAQrl/6aLHbf7rsShSCds8PCWov+kqLxGdrYbJ9OaTFu/JXNUdmT11kfE1W2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1mCs6xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1mCs6xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4503C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758767993;
	bh=aqvwQLULNcMZ5HvtN+UUXVXDj+UYmXpgWl4jyLQqtxA=;
	h=To:Subject:From:Date:From;
	b=M1mCs6xf6uQG6A3KD3J3VpXn1UvwWWc4d7I+fdTtjJz7ykg4ATeSFXikvRaOKC1QI
	 AmWevfRXZVoTZTBC6wKIIUVCqa3glqkGrExAHS3BEcsC4rt1t1XyDIKtHTxvduvqZf
	 noa7efdPBtjzptNIOBbZl38wXI5X1Iruhipf6nQFnf90al5Dy69sBDApq+5w3d9wIW
	 cSBRSXt9Lg49/9TPkvSYRXKxPhINyQP21h02iEI6ZirXDacGFwYgznOnARQcj1l3zK
	 FTtPXh1nnr5VYWFeAa/P3vsyPWFxIfz1MPbWlJjtRiI2YJFQ6Af/h8m6aOBYxbgtlj
	 A4c6qQTIi9uXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90290CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876799358.31275.16822730656245638482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bf811d3c5e94b297b8d9c8bf91d38e57cade8bb8bc3ec31ad3fb65072c08e4
Date: Thu, 25 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758767993
