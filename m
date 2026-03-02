Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECD83909A3
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772493894; cv=none; b=EE4lWeSSqN1AVa7ExOgXCLPtREL5QxLPsoKyhYuSIcyo5X+9KFJHYuJnozD3kSotMdVYJZbmqVpJXafQvn9eK68OEoaZBELVKS38XLw5i2rCm36I7f+2Tuuocw+QlKAoCtiDBGZywS90HFAgWVkQBUXuVW0O3rGFCZqdfLICsm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772493894; c=relaxed/simple;
	bh=VhFBK2/KjFeMxSXP5YsayNWRNI12DkabPOMPv6dM7oE=;
	h=To:Subject:From:Message-Id:Date; b=jcBMtsU+c5QHLRj/PYB9W35nYtvjLbOz0kaUaYVRarAxf2a086REBMZ8QURyc87v0yte/VOveMK7KQ7Kv4P0Le+fLCCsnSpF3Np0aZEjK6LofgTiE9lGQ/CyfTL4XuRYUwZk8oo/5sHTiRSzoZPX8GOQBwcjCorsVIcouOkLB54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+Xg/WVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+Xg/WVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD74CC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772493893;
	bh=VhFBK2/KjFeMxSXP5YsayNWRNI12DkabPOMPv6dM7oE=;
	h=To:Subject:From:Date:From;
	b=g+Xg/WVD09OPF7XIxGcFbOS3+9L73L/W5f/qphs5aSNdgGvf7ZZ24NAOcgVNEvhYc
	 vobiwt0QNWiF/TEDe3+6jo2mL8Z4WFKN5ULthSgZFA/2H4xhVHxZwduCr9Q6UfFVzN
	 HUF8qAhMw1OD3LSIxDtqT28hoBsE6vdjsakMMqx2e1TioZaqbE62+clm2heRY3R071
	 sCDG2upR4RlDZxUBaXnff6w7Uzf6EXvtkGwodyxhLvjBqSGt6u8lOSXhiVC3ZrePJC
	 fY8CZOGgTFPMqYKBxoHDfi5ai1nP3t/E3YPlgh2/Xjbs60yzbQ77smJxHvRXe4R8/z
	 cJnS2JuMu0iLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E89AEB3643
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249389363.20920.10060729512938622332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea50d368d97c8eec3a36ea15d8e36aebc16375fe5c11a7430ae1a214d5f9519
Date: Mon, 02 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772493893
