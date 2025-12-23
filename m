Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D6E34B1B2
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766519034; cv=none; b=laWTKpeBTv6zbfqgqMjJv8HvXjMKudav3kiNWPjEQoVF5ZYSlTWBs6CDYBOH5q0/4o87gvsH9Jy11ZoEoCmZ3FiEQTakdVwrnBZrXn6Iw/bPxgMbSS6bqBMDKVBIDlO5ZHRUkw3aJ9Sw5EzT0sS2eCmEHd37A9My/G3vDDdlhEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766519034; c=relaxed/simple;
	bh=OMOP0CzRcSQ+OKdlNpWoStYV9FpOAIP1wH1bI52LJc8=;
	h=To:Subject:From:Message-Id:Date; b=c52j1Dc8i+OgriFIupWIqvPPEGeNgT70NT2FA2MYxZqDqkUiAZXdx+sT3/WUY70P+OJsRTEKJcrfzN8Q1TGIMB2XOvvOZ680WhIbKDzsBzFfw/Y2k2QwLw4yNhnTN2bxqrSyhEAvA/zD+7HN4beCMdIsN3HOaCLsSE70PcCOdkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbeQ6l6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbeQ6l6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31ACC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766519033;
	bh=OMOP0CzRcSQ+OKdlNpWoStYV9FpOAIP1wH1bI52LJc8=;
	h=To:Subject:From:Date:From;
	b=pbeQ6l6cc8qv67ygMyuHHBoU9naYb/zIwTZJj3rJckukw7CNnZgFHx5ZTiepXFR3o
	 m1ONQx/AwZq7rzwCx8m5cIMhlSdUVs2pJuVewoVD1prFyMO9sAlyKwpA+1PjngdnOL
	 UG4UftFoiwdmPv53xF6b6HNmTviAsXADhruuvHDDZb/8UnMKIkm51QUELgxcx1PeWp
	 3icf1I2FZohP7SmEapkPVOFl+DB328vNdFPrX8KsQfc8H773KdEZIbo6MuzrOuixP3
	 N+n6FNbZAWKf3m9A4iGnG7gSYepQA3gUaCAXBY3L1oj/m1/f46/z8wOVW25twVzC29
	 RBZl0yS0DaYoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EF7E6FE29
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651903360.7980.18336592008860650202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed5bc4efbdd1f50547f03c4d06010167a60a366e0e8d2710ec51634d751e83e
Date: Tue, 23 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766519033
