Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5575A19CC0F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787412034; cv=none; b=Tl1ygKnKKFDFdEeUue8KI2DMmu+tzl9fqhvPVg//kQ4n9SepR2IYUJ2lpHRFPm4xshi2ZsZTpLKGXlWjgPiP1iucouIWHkviXv5coAe+dTQ680pQQ/+2Ps4lNEqq7hGGqPUFFsVmSX3G7tRojFwEj7lH4FzsSsJIBB7ExYv4AsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787412034; c=relaxed/simple;
	bh=eu22nIDe6zrVQqPYtyVSGYGwlf5t1cC06gB6yuAwDkY=;
	h=To:Subject:From:Message-Id:Date; b=ZywHtmibYtYv4R4L1jVYmnGeNIYz2LmxEyK7sC3EkcteYVvUZ9xk7jS2tsOq3Ubbw2psM4LUzfZ56eqtj0Phyry6r/7f7GB9zOryaZ1+lZEOWI+ecpUUImlJyr9mTACx6ayn2qu7CGH6JTKpVpeLODwAV0EBJK2XVJMC9ZfyUOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azJJaraw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azJJaraw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE1FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787412033;
	bh=eu22nIDe6zrVQqPYtyVSGYGwlf5t1cC06gB6yuAwDkY=;
	h=To:Subject:From:Date:From;
	b=azJJarawEuYaA3AvyBnlqbvun3tLYqI1TIZ1c1LX8qg8SRIXb02D5ObOfM8zk+rK+
	 quAqaMFUPcy72t67V/ZRB4zHWG5AKq1fMMzjOxhDc2k96OM1Nu4c32ebolA7XoDHFB
	 b5jSVx7IujF7xd9jMABFf7lYNG/mo2dVORxe6AoEZLed2OrAFvmyDz4YW++4JYdfXx
	 W5RMriujHaVn28FDJ5YZer3odBxcZvrK1d2GN/lvFDsfed9AGzKNPa0K4qU+ws30eY
	 1yCumxGaDMukPPim1PsJo2bjGDMMyn78aOgUwlcnwXiRtJjIAoJuyd/xA7CYhez/4i
	 CSIT0Pihs29/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B066BC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741203368.5870.3266466919117550800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4781d76f1193759d192ebd2cb837b6fda37c7f2ceb850f6136273a446a79ca3f
Date: Sat, 22 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787412033
