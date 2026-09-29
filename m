Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489203B6370
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790725834; cv=none; b=m1xcCptXRqSmZXF/y0o0q064rHtpGAjvffc6WU1iaaMOj/G5rjdtYNktzkjqNE66Ma27uXFJok24ap3eHzDb0eAEhpoHMr9Z70Le31XzCO9XzSqFXayP4Odws7iFiLSA0gZu3eKnxz6C6MVGIcHnshyqs0fYr8bgOli98vBpK8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790725834; c=relaxed/simple;
	bh=3xnGYkjjK3qArIEqdi/IHCYzvzSqzQSOBDX6DaQBbU4=;
	h=To:Subject:From:Message-Id:Date; b=XU0iOipRAXOm+UjYxPU2mFzBePIrixxA7NOO4eJOVPIWkWU1sXtE8lwxTs7YuWKIryPrKjPCyNki7JBQvTPkB3dop78PV8FWN8frD05Pl1MKSO1s2/GSZrSYy6QsvSUDVwv2WJexS4u0lwT+NvxO7Z4bEIHOAu++yt0gIFBTnbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd9nRWgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gd9nRWgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE71C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790725833;
	bh=3xnGYkjjK3qArIEqdi/IHCYzvzSqzQSOBDX6DaQBbU4=;
	h=To:Subject:From:Date:From;
	b=gd9nRWgjLwS+Vg/KJw9n5zTUcsIqJGnlYxERPpUaSm8pnCep3nHgJVbohXxxs/ZAC
	 /zASECvYkbDzc14e8579bG0fzZblSpKoMursgrZvjy9YBvnhm3hhE+oUPtOj6TUuyd
	 Y6Wd1+kWy5A0pdCw3METSCXoDJXqWa3ikBcZ23m5q8Sd/PqY4x365c4c8D3zNeiF4o
	 hRmFRwynDtUJG51PmaB/ZEU0oASqLrNH8qTEHq9hRo2Ekrmx9CWi6K8TCthNDFkHWa
	 mx2c/TASq7v/aXZ6MIPcikIYpCvFyw5w9z2vhVokgmIFF9VKjGTcBrYiydUzzn6YhI
	 4Lu51bcyxffWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94FDCA5FAD
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072583368.15882.991855618321904377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f78989ac8ed811b70927f97b151d8e24584f1e6b44c8d00bc72efffbc0fed0
Date: Tue, 29 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790725833
