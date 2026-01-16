Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF290348479
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768538634; cv=none; b=MuwVJzpDO+6ayM1Eus7JS3VjZvAr5As1jKdWqGnpx0EGM1DZq6Al9AK1gSjwEp2rHbqI5b9nasPw9HGXrF9mFZlnvzHdbCwAOBOG/FftQ7Uwe9OhJ6FjQMpmyf6RkZZ5KwEjJYr3p5mhLUzMHoi88xGKs1Ywvle+qfA/XUudHsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768538634; c=relaxed/simple;
	bh=zHyg/7IlqRs/NvN+UXoIdraOgLeZeqc2jewijcjjp5k=;
	h=To:Subject:From:Message-Id:Date; b=p6LcNdltIqjZ8KWmeWDKvuDSJSxdSUyIVd+OoZ12Dbe0ipE/TJiQIpLr4/kzbLzSElCPTThH6MX+lERxsuCkAaj41n/AHGd9jwO4Zg5uQT4WIs2O6BWuu75Gf4/azUN/NTNeC5bqnHfoBWF3BFyJGAefnHBEGgYa6aYbSRjWLag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mc3lNJIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mc3lNJIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5011C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768538633;
	bh=zHyg/7IlqRs/NvN+UXoIdraOgLeZeqc2jewijcjjp5k=;
	h=To:Subject:From:Date:From;
	b=Mc3lNJIjOYCcr9K/6cg3iUql7pWk269bJ7eyUe841b4Mql/RvUWFTLI2OfZl3YJOF
	 Jhw70C32bULZeZUghLaerNKFngDvGZ6yGw5N6KUl9e3l88j+mX0Oq42Au4+p8X0XZz
	 l7MH4Xgc40tj7mBcTM7K9+qbm2UzbmLnNBN4bbgq7iRQu79miqiPSoB/D0SWTjeYvs
	 VWezaC1uwpDUmaX5t0Mem/xQJ4L8umDahzFqMnOZHEgZj3gBiYM89UIWOORUwFy2d5
	 bQ0BRljXxXk4ZfV6vy06QbdTWdfGLYeJGY8hFwqfe/wZabzFTyQICZu0JuRFjTKRxb
	 7n2Rg6Oqogpng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A5DD4A5F6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853863357.11308.12709013507695461414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a402adfa95432e41f08f6cf59b583c9fb97b98eec689a31f8e3678a51836bfd
Date: Fri, 16 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768538633
