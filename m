Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAF01F956
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754543996; cv=none; b=Tyn5ftJH375tfVbOTJrjD4LU9i0QKWewROs+pSOcKXsYHagzzHw5m2cuN9vOjILyBjtbpmaCGAFHysUb0kXtq2Q2NdD4rcMDTipj8Xsnw+ZxP0IZ0v4+3C+AbY6VykOjlpfWPXvBlcsBQgKLarhaJ34pLVVI8eNXugxx1CA8zKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754543996; c=relaxed/simple;
	bh=tu0qWFszJNZRG4PEmywcDCUkEgwS42EDPxjYD6b0g00=;
	h=To:Subject:From:Message-Id:Date; b=Cup/Ou35yMRB2dH5SjwZGkJH2CJkuYqU/wwRj6hLi1lGqy8RFOunMZ1PJkfII54ybdTeyI4/8kWp7n7Jkt08k49VoZolFN+iJ/ORBF1D1WeYEMUqqXGOujXsdEqSWps/hapXofmfDVH0C8cfbYdcZpV8Em9PWNy44xGL73EUv/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bP7+0rRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bP7+0rRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754543993;
	bh=tu0qWFszJNZRG4PEmywcDCUkEgwS42EDPxjYD6b0g00=;
	h=To:Subject:From:Date:From;
	b=bP7+0rRKufh9OnOVme+Z6Shirr2ODmGqTKNVyl8FtJ2ki9iaUD9uFH/49Ta+4ljTR
	 Geqx5Xq+K9cOieu2+ElWbTxSzzGt5R8VUjJTP/w9YBV3C0tqZ+KvSGkCZEVqjA2tsO
	 HTpzGup9uLkcw0/KhX0B6xywRb2mhL1zKCmcDl4p+FhJRcn70D+x+3ImXKxp7lJ7TD
	 19bpEzJxasftcgU2UdXaXVl2K+tEjdH7Mzsnady/WIQBwv3edjCLujgFbv3RePXh/R
	 0E6WIhwJNiYXwIsgehRwU2PPrzaHMGIYOYwRYq1qMXHT27g4f9TUUyxRnQnKOKn11y
	 vZKn3BQ2DRp/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A0C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454399357.27937.2149372336438488934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c87695c1e61ddbc9ace8b125ae171163c05dc9dd36d3f3e092c32a7fa9dafb
Date: Thu, 07 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754543993
