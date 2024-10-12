Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BD414D2A7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728735954; cv=none; b=B3lVRMa3rsy+S3r3+j5naU3YlWi2AX09JXJTlEaD7N6nDz3lXFKLkCEHoSPqaR47vBh64/a6ayg5h6BxD0bI/HKlzKFE+fmMvte1MluB3ftV/xB6Plddh6j0WXvyNYtlXXBiOBCakWsyxSKr0054OJBUoNz4JyPs4diznsq1if0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728735954; c=relaxed/simple;
	bh=ooOLoPJwO3l7wXlVFfjrVKQ/JqrCz4YKOruSozvNyIw=;
	h=To:Subject:From:Message-Id:Date; b=G30gykz6jk4n4wyRENrqVTYXDv6Xx8yRpxT3RUbx9BZZ/YYBINC0tf2JT13tPJw0zBK7oWiNAG2p/5LtBeS9Bcyj6dDUjYrzLJgUYMIXtbt27AMr0F9JxB5kXRWvL0ty7tXb5F+JMHgmd5CHjC4DtbQCcX9/5dJDNeRpCwco9z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsDOrd0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsDOrd0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB289C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728735953;
	bh=ooOLoPJwO3l7wXlVFfjrVKQ/JqrCz4YKOruSozvNyIw=;
	h=To:Subject:From:Date:From;
	b=BsDOrd0/AAhthKMCzreMMaUW9dtMUv0IjZ6PTAgm9dwloSRurNwvIok9t6rmF8Uc+
	 YXcS2jWP6Rr1A79SwPxBeH2nCKlUSd/FjVvMLDPfWL/GACwXpCvZRHCbQfXl5wtmz4
	 FUY6y7NcmIROb0ZPQ0hWbX1tPw+IPuyU48OWYwdgJLSvGQeHtX9ffjpZARP+mCbmF0
	 hXYgMNF1nFPzyqj7YNn2jd/RlLGHS+lhGlOqFLtF7nI6gyARa8nnweAVQJEVVxGLXJ
	 7FLXwog4A80/3kHrba7uKAcnGeiueBVHwGFQ5hksWi6P+MfQV38EQRwhZBCzH+3vJe
	 0Q+QWK8+4hP+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F40CCF2566
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873595363.9216.12379867101077205256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ba5c0ae1a6114ce6a8e386edd41823ffb394679798e3a21805238f04ff650c
Date: Sat, 12 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728735953
