Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108791EBFE0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768664034; cv=none; b=gQpx8dteUDJROqltfaYobDva6NjAryXg9qgnSGwPoLrb5uuxD2vFxaCRWNdLpykx3m4trQyspBGO5Kd246eJ2nz1abUkb974mms45Zx5pZ5aUNul2pe0ociWHrRt9ekTVr9sWy4vUtM/H5etaCoZzTP7SKkL8sRiFB2cuYBnhzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768664034; c=relaxed/simple;
	bh=R58KK9zT69KDaaqR8v+/iMPJS9N5D/IX9slRdfvDf40=;
	h=To:Subject:From:Message-Id:Date; b=O5aNhaJELXYaE+D94fqpFz4GbImGlXITOsPYMPDAiWmKV6LQkdHEVy/9lcuTepR2zkq0zJwcAsOTCvd/h629UnBN2JCAGefcjZkOiu0RDo8gw35b6RlqLBSTGidj1K8WI2vYGundQuYkf6Ib5wq3NpCMZBxODYjx25fR73ylaBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5eoAIGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5eoAIGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DD2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768664033;
	bh=R58KK9zT69KDaaqR8v+/iMPJS9N5D/IX9slRdfvDf40=;
	h=To:Subject:From:Date:From;
	b=A5eoAIGf53CgzWKeLxd6UjKjQKt3ixAHwDzHG+L1of7W0oZlfyxF1XtmCHHVHkVyG
	 WRs5cbmaz60QMWgw5zzx/VH4q1tNzZQCryG8S1uoYI/+xbIQhbbrUfFDw07qnt9zot
	 4DdbY/LR54jJgHVZT5jPMaKBkM6pcR8TbY0y5EyyIVdKxSYHqx59VlqvpJ0OeMI4kb
	 SkFdA8X7iHWBpszPuHvh1EI93Xri5A42msl4YpPCp93EZUKGnB4tUDSVzfrQ4moH0K
	 eZOgD23c+qtzP1K489wz/J2UJ4hVskzNmXx0Ri9oLWumQb3J2BtBxcN25Td8RzIuVI
	 H9yxmRrbNDqGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9628DC98315
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866403358.13521.17108303412146929756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6f3db436094fb91745e8516fd28e7800556b68b09210a10fc94afa9409a829
Date: Sat, 17 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768664033
