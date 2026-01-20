Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267E2296BCB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768943034; cv=none; b=YdQ36+44DMY5ueFJGNMs4iFSyLx7IdKuC3OwNy1dX9TpdiHN/2BLR7isutk6vLagK2AO+nEQSt6wpDmpzxdzSAPXdOzRvP8Gzy42ZPK0aVt+SAOkfxI+i7kSEMgZ/cRqjR9zgvWgcKB1RrY+a6zTQOFpz3NfilrXY0SPP/msVMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768943034; c=relaxed/simple;
	bh=8c7kjlZCnVjr485GpBXg0vn50FAgLx7XDodrLVtkqmw=;
	h=To:Subject:From:Message-Id:Date; b=APDt9o9tS6KBs65m5slvdB2eEVsDl4CNR7r09Q9NjHutQhwGjxrn8Rz788ONQKcuWL4QRF+Wz1jAt22njgrO5bUGOBKVuzV67VVd2ZnxqnNs/RQgBHwFgZEOX4GNFIgwOZj/4a2+mFQNyE+TbnKOY09yVjudVT4tgan3e8iZ5z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMFHq8PQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMFHq8PQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C18C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768943033;
	bh=8c7kjlZCnVjr485GpBXg0vn50FAgLx7XDodrLVtkqmw=;
	h=To:Subject:From:Date:From;
	b=oMFHq8PQfkh6SAPr0H9VAQSzIM3x5VR+Y3FXvex24Cy9aYTJ09wJH9TvnH98n4cqj
	 x1twt57jDcjGjvQWOS1UUroNQ23dobqnsOdJRboAA8DErSIUKnF7KDji9YP17FUA9H
	 6T0AYUNY1+Y6V0kujxOnY9O3f5drp/R3JfUiQxLFMrJw7SdfnA9cpaj3ATKbPMmwL1
	 HWRgkpPEeA3Sc1atPIlbHjUzZT2xVHnn7ZFsGrVlBwL0a4kSCbHr4ENHKJ0ZyAGgdY
	 KrLuiBY7mx+XC9PmpcVPvvYg/XCdDM/26qX9h3BHtTMMex/m+N72xN84OWx22/mcsh
	 59VstBrp5kUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9468ED262A2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894303359.30453.3643813230260158129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90b7247c1ab7d40ae80e072127df73751157b5a4a6c98a04d37a11657b908fb
Date: Tue, 20 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768943033
