Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9AE25FA29
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774808694; cv=none; b=fAFCfdbqiZWAo5pEYIVcLAHxi6USLUj3ugOHj1FL+Dn3vgz2jq9/r/jLEgdLNZ9DcDn/LkwZJMINUTLGXaH9Aj4L5Q7Hs0VBkFqh5XNSiIiBE2NyZAIeVxQstowGwFl4S9nMpuMhJuRGL+Nj1x1XFHRVh4n6kFOBVek+pCBw6Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774808694; c=relaxed/simple;
	bh=JUdv3+dkAMYKyUxxaiL1qIg2l8SUfLjl5zXGZXqyKJQ=;
	h=To:Subject:From:Message-Id:Date; b=fa3BEcEzExBvv+xlAnP9yF16GrN/LW/oxoIrfRMm2XOB75rF6sQPeljCgv7WCuY+fZ/a4H0gW/qIwzOeuMG3PUjV8TuvNi9g5z2cj8MOStqqwDO9ldU4FdgumI8Aj28YyvYbq3RmIjGHWG9Cj74J8QWqI9dC3W+wioZf4Sx5FuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IswWroef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IswWroef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3491C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774808693;
	bh=JUdv3+dkAMYKyUxxaiL1qIg2l8SUfLjl5zXGZXqyKJQ=;
	h=To:Subject:From:Date:From;
	b=IswWroefz/DR9gAKxmtPbgMGGoIdZJ0qG3ADGvplAyhxhkaBMJt6CCXUf7KIf07Al
	 OzC4J+qHDLnO2vhx4oiIxPR2WMa6s5bGg6y+hfF0wNAH20NeD2DThNaLB9/89Mi4GW
	 jz0Le6r3VnHnSJt39t0EBmEwedPBWazRYe6/UmnqXesLW12kJy7e0kUB6psQedZC7i
	 xlgrOF+i+XOBtYRpOtDrPfGKcj3WYPwoAd37BHtIVBU4SCDvHHfQslBA3XCMfE8Ab2
	 2mFjWBxJQLaZPcMQNSmv0gZxQeLMoBuL2qRrqCj0Z4W4u/d81MH6Nxjo6OAzbuexmd
	 SjQB7jJ/WwoNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CCF3D601
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480869358.13893.9021349664023979937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f367af428031034012d4c91d3d03e5f598284de6394b829b947a968e3d2d2b28
Date: Sun, 29 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774808693
