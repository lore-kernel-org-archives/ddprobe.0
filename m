Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AE8190664
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761872994; cv=none; b=iCFeK2fVEAAP16ECgoc3nE/ZsKOQOjDyH6qcvRLJcQGQeJoZqlHRlCi49MU77d2NJjJdla/byLTmUMxaighxZ6+SsbXd7s+pdBu0xjRdj8a9N5ZS6QKqXIQhwHh0S0IjUUfr13d0hO6LeZOOcU/9oet/Zz6+zSQS7mlDDOCZnsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761872994; c=relaxed/simple;
	bh=h787RV387OYYSSc2femfdv3J/taSbA1aSSEl8aTTOPY=;
	h=To:Subject:From:Message-Id:Date; b=CQWeXR9dQrxFDoomRJdCT8Ik9plgE7yqtVApTcbq4cPotV5fagAYOlxj0sIzxMZP3AYch6y36mVoZYTXRbvWmOgyXWidAXRNcwrgWIzKs0wN/2q2fS7CdBn9+LT4L8wu429qfyVUbKRGsMUxCxrs4pDY5cpJASxEwda9n8fx/Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEYwLG3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEYwLG3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45EBC4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761872993;
	bh=h787RV387OYYSSc2femfdv3J/taSbA1aSSEl8aTTOPY=;
	h=To:Subject:From:Date:From;
	b=gEYwLG3SWpRZYtmQBD/PlLYvKXU/Sz3zoUxPm+Jn+wvYqautqjumpiov/vJec/01b
	 Z6hIIOAISUIkp8qgqyWQWX58jDY/lpEH72kAtARNGfc4jPuJocQHJzXgVVo6g281pi
	 dTXy8/NQHUlEFbToH2968EFQdKUZyrJzbDtot4ummtJe7zfR/E3p15hhzLAAqEMx5O
	 njDi8mmuYLf9ZC2zibWZc1wYRmTR2RRkPJT76COr4I9cmq8qt3BhXWQxvxPt+i0Rbz
	 pQDwT51Ac2BtR3/YbLekApSkKQQ7wlspGueiQBDr4FRUEod/fBHfEuSQeQWR1EihPF
	 AI/U9EoTBb4OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967A3CCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187299360.20914.11009092750087734868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3378c38e43cc99631b3041136cedc3390d9bd6ef1076b17431a46f07745e60
Date: Fri, 31 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761872993
