Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598A31465A1
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748634594; cv=none; b=ZQjAvJ+gzHGqMhCHVKYeEwmSQH0qS0c0nUV6jZjAeY0NsJqwaXykjWo/WPoDsgqmvO+tcJDitBDqQotXVlsecno6llLjQBPWcgkUOiTDFslpIKHraPaEHJgACEZyP5hxn2ra5pfnNB3d+Fb4Z2rJV8UUotF789CMuBT6+eaC1bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748634594; c=relaxed/simple;
	bh=F6wtOy7aCEHgYNRaGZTg4/7YGg1OTRxOPsgDisvo8HA=;
	h=To:Subject:From:Message-Id:Date; b=gEVdGSfWCxWALbG2ai9Yi7/ubWQhtii0mEO2N+AhIKv3mEZlRwO6NoeSYYa6mai17sPxvYIZ6FDPB67Al9TW1QO2iuLfjPmiZLc+wU9PybmE/N3wLqLzdkSBZDSe+Tk4c3/qaIaNmMlk2J8yC/sxRv6GF7W+4JToUg2PNvRlbzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+ys1S4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+ys1S4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2160C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748634593;
	bh=F6wtOy7aCEHgYNRaGZTg4/7YGg1OTRxOPsgDisvo8HA=;
	h=To:Subject:From:Date:From;
	b=E+ys1S4s9n+k65SUd8FMB4ajnhShMLCckAlq2DlgD54ydbrWUQoJ4rvd7Axt1UB/n
	 5ctmghwgKbNRdE+O8rpqFFqb4wR6V9+iMAUOU4ck4/HyqPwjdyHNuIErEDkmeJyQqq
	 3vLqwcjXy47tBYkBe93vtUGmaBmTQw+hYj2HCnGOp4x5hVnzdZrp4/nf7j6LgrRpXF
	 OpDC8YkTFQCfvP5QXUTEYvEcLUcgS9cpODtaKdxPUtEJtG4uR4hDimrOv0pfpQi5BC
	 nLj2OihdZ6GdBul14YuWIoVsnH/2+7TaHZjIqw2ixpj4IQgnVGTFHzJ3CPZWn+PSXR
	 OTK7Qe6iyWaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E612C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863459363.4612.2437735342114001226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3647bfcc2329754c36c67c3523f4e3065f22561fb6e1de16dc8fa6fda3f713b
Date: Fri, 30 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748634593
