Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348212253EF
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744831795; cv=none; b=rObnawI6KR6UpyPP9K5mCj5i7KV2M+9g/7NHI+FIltZPEVXJbdSY1M3XG8C/RnDF+5F/hCuRUgz6qKbpvko5mLWKnQqc0U1JiM4SYWxYJs4xADSTI6ogwrMtd5QHijjec8lCwXLYeo5eEtM5DeYguUhV8kMXouTggcL8LiL/ivI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744831795; c=relaxed/simple;
	bh=cUaCa8IMFPVVCVO1fmwu/0A37UA68/kLYRoU7ZVJy1Y=;
	h=To:Subject:From:Message-Id:Date; b=AKGHlnZ4qUbA3/Ms9DalPoWIYB9dlFzfNjb+vxTkcZ5sJ0bkl/dycp2ezNUA3wfV3SvPJKfpz4fZ0qwidX+ewoARE/J2rJNFQ4NcszcuZOEPr1BPxkPEt0Mv7ukXzt+Bxe88IwpmfqtbYsruRfNDL9NpVn3RAOpyLbQowIpheEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9ExqGrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9ExqGrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDBCC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744831793;
	bh=cUaCa8IMFPVVCVO1fmwu/0A37UA68/kLYRoU7ZVJy1Y=;
	h=To:Subject:From:Date:From;
	b=g9ExqGrREs9ClDLZagdbL54OgcKIP4Jnu/RIDr+Odlb7yqoV2XIrrufRwDHcKvhWK
	 6QdJ8DHbxsLik2aPoVSvIibl8OLmarE8szO2YBI7Og9dBqNOtzHQYyBH9qWCEk4cYt
	 RYuYCACGVaAqiZYNlXQYdUjB6O869490uaDU7yn17gS28smFH9Sjdv9IJHAB4ASRnT
	 s/2bQ56wkYA5I39W/22DUL8+/yF4aeGfQuyH33l/Ww5rw8rDaGfqEJ8yl7ptRX/Kb9
	 91YR9gTDl6T1OjIHDl5uCGs8zxLHgkUdkC+K4s6BMv02Nu3mneqJAd0zXVJDxMocMI
	 jja5kB/6kuMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9DFC369C5
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483179361.27818.40792969185422430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c244e3c64dae10c632ea61968fa6f1ddb8b59eda65e1de8bf46edc68019bf43a
Date: Wed, 16 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744831793
