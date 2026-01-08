Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F14D2E0400
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767896034; cv=none; b=EWpX5dAm0Hrrt3omw1TgNVdrvLYsGqoh2gkthHtd/jYT50SuOXhqMGLgsshxKQTeb01hxasqcb3XY6zRFU+xQGWOY5agvBLkOs9g+IJ9hFQaot7Qs1IXRbgkZ5AMIRiZWBXSO7adVekNOL8Lw6WUlkFE/iaoNzgo1E/3osdX8CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767896034; c=relaxed/simple;
	bh=LeRZy7jNtYu5HXHoFW3l3P2IT+At5h8RjKiJRPfnLHM=;
	h=To:Subject:From:Message-Id:Date; b=cA6YrE2ARy0JMZVYDioY9UrNnozUUvwXf5L04dkB8qJpjVpAuNydPZ4hilDC4QjOO5K2V7AFjVHxEL4EZ/xkpTJbN0Q3agydjnXfAMIWH//Fam+dVY9x3MIvRqh5v+r52yIsdLxdPkNMXq45NvxPzrPTNdsgaUnKTdSTh0SzNMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uP7LV6uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uP7LV6uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAF2C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767896033;
	bh=LeRZy7jNtYu5HXHoFW3l3P2IT+At5h8RjKiJRPfnLHM=;
	h=To:Subject:From:Date:From;
	b=uP7LV6ujXUChw8c7Ne6zxwcqCwUQORFm0HAF7kxUjMCl9v423Y6NBsDRiMQvc/2u8
	 3AP4lq04rtEjo+qcPze0IUtLh8kJAYX/923TUwIHsQcL0xfEiU1whqqDVyziFa0sJt
	 C0KvtPXOQGBZssmcPQkLKQqf/MOTFfNQs6h/rzZJq1RALrLQr4AHqZqSNsL3FNbDmw
	 zJjjCPZ7zzkqFUwycUhC+3xKUQE0YpkwilxcSwUXtPw7g2RhMXlpRdMFvWCvy4+Ugj
	 2gA51oG/eFMhHxhylq/l/aPgn6J7Nqh16e8Unx34OUTMZ9rggxxeM9dv+yQRx/OSbl
	 qhQhB1N0pn27w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB81D1D478
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789603357.25425.2038022439998784747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b80134f85fa4255816d476239a58cee8bf8aa304316ea04def113ab386246ec
Date: Thu, 08 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767896033
