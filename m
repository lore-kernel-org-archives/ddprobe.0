Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D24E286D53
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761171594; cv=none; b=gEwao+6Jy35JziBFl0OD1e/g8d8qHs5czrd+KLQq+UKKpaQHdEhtHaGZU+12TWUcVVgw8Vu4pX6uh7GGpIEfMBGAoBt5qJ7LYrYEvjGqjxcjjBZG3Vb2hBCZsyDqaasqkTqKUogFAN+aBIauE2ggO2Cc5OV/+uaV/aa8wgytx50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761171594; c=relaxed/simple;
	bh=Dk2V38DukmWk6DhbsoE9lIUwmvaEHIR7QKIw3qSHh9I=;
	h=To:Subject:From:Message-Id:Date; b=u3AvgKVfGcQd3nsAE7u4GbMOzqnrHmUu+GKOW0grg0PolBnc9eWQH7tSlzmQ96eJ5fTpbHOSE+zu0qlGsnSZM1sIEA+3OirCn7rGTeQWsdlJIaoM26zUnEkgRq7wQnEj4qfyHzMOiSrQfQGIt1e/a2gTQAWNeYC3HkPwbdXRrfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk0XlXCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk0XlXCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2506C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761171593;
	bh=Dk2V38DukmWk6DhbsoE9lIUwmvaEHIR7QKIw3qSHh9I=;
	h=To:Subject:From:Date:From;
	b=Lk0XlXCISxrWRPvk4NubClNlobe7HydwZE3g487F3StCG5cwgm9PZuuI5v48rbPbH
	 a/fZCqt8vHgGntbqjrhf88WSXUcYWFj0QO6XZWb2sZOyFkLKMrOL2GQ3luFSBy6X9l
	 RAQbwTO9O+ahHdyA9O1z4VClvsyF+a5sJhcTZsm9JYK9OlXeEnS3fjaOxrLGv85ypb
	 kOD1OCuySErBwFgzQuyaP5qn+8E+V04fF2P3QohEjLEH8ahcil4DYgDbS9UXOpgn64
	 RZVTjJo+L9oXX+Oi97IgVWhMXLdVqPrU7s5E3GygVRxaPmZJjwVtTD41Q4smlNoQfU
	 xIK1oRmHIT8Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6CCCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117159357.15643.1502765232286811726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b328a9c33242871fb65e75919b594f24b1eece779fc7d641e81aa06c89c1aae
Date: Wed, 22 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761171593
