Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D5438B138
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774099494; cv=none; b=WdoFrHFFjpx9KJCPEZpNPlCbeM/joX+PLgtg9BUR7uIpCzvDtC6NvIAaCWFwu2gIO9t1ooVccfL6cMcLoJufwcxyLgQEJDCGZ+SDrb6LT6LvCaUZUJT3Hjx+x4KkDP0as09okjnwuCYna9HZJTa/lgGSR558K1iBQyzk/zPee80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774099494; c=relaxed/simple;
	bh=9W7ra8zk9XWsBSXkfRnht6BedooICD4lEmphaXt3BiQ=;
	h=To:Subject:From:Message-Id:Date; b=c2KAWeKFQyd3s+q8OTYUGuKF14GjnnTZLvWqIcr85OETv8fhCjTaqE6fR7i6gPq0bzHSx7AdGm13MJaIEf0YM3MDNP7/LxR9CgiMEKCYuoQLtBSwkMpygam8CNXU05kqCGLakrs6OdJARXlTkh0tK3g0jClW0CcsBcP6hRQZwS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfqIIi+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfqIIi+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5930C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774099493;
	bh=9W7ra8zk9XWsBSXkfRnht6BedooICD4lEmphaXt3BiQ=;
	h=To:Subject:From:Date:From;
	b=HfqIIi+DrLE0ZopbUzhk06YPy2/UlEO+fFGU0WnkQi+oT2dlQ46z0DcDoV/hkilfE
	 8B8tWbcAZRbCJbkjPWKBl4G34df4QxXZmSyt7sbxsO4VisAoXqMfhSouddVWv9+Jp0
	 6IxfZivsr8NJCx7uuDIG9BOdHcvp0cTRX8mcuzT4am1BL/4EMVpuif5zVkCZe9t5Ht
	 TckQTuED+IVzwumBd0Rlq2wRywUjAdLB9JGXJp/77zkNckPQZVXlJe1NTGKn5hMs3w
	 x6Lkr6HHXbSvm4RIuvKuxDaS/o0aWZw7pXHwcYmTGBksmvs/z93fI2QUbHD0DHWPrk
	 MDeyUdtvGa5nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D61094478
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409949357.16188.6204767580185777859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7f760d074bace22181c3d674c102f6f400a1f911e3628508ab22554e023099
Date: Sat, 21 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774099493
