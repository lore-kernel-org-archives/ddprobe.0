Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2041E231CB0
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728788754; cv=none; b=IUVgzAoZaXLaFpGk399Tsifo3ByybjCvXiAuLrN+Okj5dgwkYg6hmsLIKWT0Cd+lPaYa2vDCdQ8gXUjyBMpa3uoANFdzaMpb6f8TAZkrmVwPXZraaaBaBhV9TD8ap9j//28IMp2Rz1ASSm3Gl0ddDpAocYUzkOCymJFm5UG5ups=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728788754; c=relaxed/simple;
	bh=Bb0txeSwEedMc7MzgiREuJYGJgMaPdFGqeQNw7RXX48=;
	h=To:Subject:From:Message-Id:Date; b=TyYli8srbjHJQn0PquUgJZAxxM09i6gUuMmHzrBpJxmP2RcfYUlu4rBjDPD7jqnMl1iRDfPzZhuhPkXJptN7GJP2NiAxjzKWVSiQwapUQozaO4gi8wyjj+MwajCNP/vSkQiyOovhhKVu5ry9iG6dNVNJtM5lWTFk7B6LM2CBfyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWrQPphA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWrQPphA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7230C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728788753;
	bh=Bb0txeSwEedMc7MzgiREuJYGJgMaPdFGqeQNw7RXX48=;
	h=To:Subject:From:Date:From;
	b=kWrQPphAYjtwOluXmtSglypg+7/461/y6iTfFO33pOi1gjKnCGGRjEedCG8BfR/cH
	 G7EibpRfnydH607IhVm6NjL8bpeCccObvQjC8apdVGZSsNoZ0VHFl0qyhF02ufD3KY
	 pMK0p7wzxDf8oJ6SV0TlCyh2YH9KIbrPyUWzeRSRQFL0kpuN9ebjcPWi3SfPmByATW
	 Ghu5dj5+cgFyaqI5mF35vk5LHKNy6J2PXu11cSAjUjoH4aOmB9KauGYx1DmDVT0F2u
	 XYnHo7QUZs5K5eVPtzRsN7MXcEXskWcP6qqjQdsnit7OZs1PsUdFa63Lor28845OlP
	 VVele7ecQq4ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9309DCF258A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878875359.8158.7070946193555355557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ea3ae5319b377c93fe6b7c6a3294eb52bbd80c23b28fce6578bb4ffb4500bb
Date: Sun, 13 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728788753
