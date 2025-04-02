Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAC920E00B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743584996; cv=none; b=fXumyrgekzZ8zYAAPs7JYW1RG1Nf9rAfvj6GRPwV6A3nBpVfBtyeVgSZjeRCfJzTimKvG1ebCmwgwG5ycg47iwr2XneJU/hI4gKp9X6COBIb2HDkV4SLd9GGF+4sh4ZyGQMU815S9EBI/I56bXKbkBazjJwjAKUmIUsordXzUcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743584996; c=relaxed/simple;
	bh=BVc2lV1eygr8/orkZNytx42fV75KaJYMtijSZWvLbbM=;
	h=To:Subject:From:Message-Id:Date; b=SfS3YC7F+ucuE5mluR7ZwQzBJb3Zil/1mr2OgLxhhOj/F6q0nvKvVDy34Av/I+ywZsvBc09OKpciGL7F7mzt6oa7PxhAwFt9ZoApSLj1gx3fi5iodU7h3QxCNVs2GNaWeHLp/26WzdqspnLSS+ihYGjl1+cDKiBceT8ERjXZFlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3xNnAz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3xNnAz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B5EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743584993;
	bh=BVc2lV1eygr8/orkZNytx42fV75KaJYMtijSZWvLbbM=;
	h=To:Subject:From:Date:From;
	b=U3xNnAz9fLGwPl1zyJO/ei/0JzreY+iSZh81WBOFixcbwvYPuyOc25Ci5NSMY4/5m
	 s7nBuRjqGVWP/l/pmhRqD+Clll8sdmx+asjInSkiKYWW7l8C5RObvs1IINFg2Yn1bd
	 KMboOWuXgJqnoFFHxjwkg1oV3oO5O9y4WMYsreWqixBuuI57kUX0Jixnjrb8qifb7q
	 IIPVqFI855x2TwSqtuZ7fGex8meTSa3HvblHG2bP+NCy61vvqKsxzEvj6vlGSHCznr
	 NR+ARdLaWrpvu3RpubqxMZljRAINaVOvqdbMOrrlL0PRty9U7FSq61DYBqMlHO1YNX
	 2x8uD6LgufeUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C569C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358499362.28159.11375022056627519285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a32c3e5b92ef4415204c8fb1c58a497be74b360477f63333ad1b2ce4abf2195
Date: Wed, 02 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743584993
