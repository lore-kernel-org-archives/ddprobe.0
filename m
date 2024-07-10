Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDC7848E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 17:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720633643; cv=none; b=sNnZwHhHspcdxwdyc6YSgT+pBBwPpVmyslXZ2iUXHFV2mpkOIVN63qUMOAdDUp8/ziAuUhsFp3n/XiZ6ZbWvzUhdyQ2hTekZifpr0I3deLfRTCLm9z/qtnMZtjcYZtaSdTnBL3rtixdizcBXdM0zdrmBcb5qw31kZ8dSBfBYBbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720633643; c=relaxed/simple;
	bh=GLy3Kj0Xm5iRH4tVRzsEZvo1fTG7f+Ru3fnLci6+CO8=;
	h=To:Subject:From:Message-Id:Date; b=chkCNVR0oLpOIVQQOOZfbG7pDdmvCqRl9/XOiJ52e+w/U7nLBFdXPM41z4nNKJ8Sqm7forjODnDE2mImVgqWfNL/xn1XCEMmFDvghvw8RZyuRgIELzLEcOQThVS4i1iMu64b7rQFY8wP656XYGac+SJVnx56iSGXG9HBeedEMzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odDNoSDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odDNoSDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC1BC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 17:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720633642;
	bh=GLy3Kj0Xm5iRH4tVRzsEZvo1fTG7f+Ru3fnLci6+CO8=;
	h=To:Subject:From:Date:From;
	b=odDNoSDezW19ZSRlLV40wJvrEEc0dwrIx9ySsqHvTNt0+0VhxA/VyWlz+wIFvGKt7
	 zkljQhRZEpXJXW4F4CcJ9TRk4lcq5GjrUMBaOhXWJPLcv6qO4VEx7nrGzePk+P9NJi
	 W657UKFYfnaAAiiby2ajuYp+vssZ53kRX1piCJYjdZhVc5u6KS+lgV3Bo5aOxxG3Cj
	 mTjgEnT+DVCdPMS6JFc/nPmknfJbHO8NRainP0wD7pU5Z51oIgAGcNPjwlX2FoFI3i
	 /kvFMwf2y3kZwKckVuFbBFdT2pqCqFyXehDnZ+CzDP1tZCymaeVY+tNQp+Z69THYoo
	 g+b53LkYos2VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F9EC3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 17:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063364280.27287.7364094584200053502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ead33e73850dbdd677b1e6eb7547ec893927181fb7916ea80fe042209910d19
Date: Wed, 10 Jul 2024 17:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720633642
