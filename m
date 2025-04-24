Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA8E1E51E5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745480994; cv=none; b=ugN0mtkdd50aZ+DesJCYixjuI+DiA/k/8STqluNVmx2pVLrCr+6Hi4paE8dcD+VM+0t9xxyO8Kf5XCWpULyh393IqoWat8Iy+MUXVbTAgI8LSicTICWa813pBZGzh+1B9zIM+Ymuj8P+bjxhQHQsMyTO3jeCtcevgkUzvy9BKOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745480994; c=relaxed/simple;
	bh=pkkCzVtCa2n4NPUx+j0uBmN0L6Qp1QPY2CwR99NcweU=;
	h=To:Subject:From:Message-Id:Date; b=vGdDD12g+cog17X/XKyoNDaUbbNo0ifLsuDIKa/qSLg6rGOG4NMUtD+yBRlt+UIlzzZ4tRIwk61mn+lbj5dqsoIm+cm031MJtjz3IF6hluLQnCgRSoG+8UD5CZCtJhlEjyx3Zracbl20Gmne9KFu1SRA/LMzxIkmZk8roMfkt3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B73/7V1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B73/7V1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0911C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745480993;
	bh=pkkCzVtCa2n4NPUx+j0uBmN0L6Qp1QPY2CwR99NcweU=;
	h=To:Subject:From:Date:From;
	b=B73/7V1k8mMmM+RQZ7p/yCf3xHgRvWosU401BWVEm5qmkxZL2bVHU2JpQ1ohnWLz7
	 dILByk7Dl7j114dV8zR0yP/VlClmluph4imENXYIPR4D/vr/5Gy0nzBRbf7qk7g/1n
	 gIsi8CVyMUIRfjbCRV1aYM+Wy3sLmziUb6EKyZ8qeVDGMfZPQW9fZmvSF5nHnPw7oK
	 oIZZNOB8L+mhm6fMqzBSG+NaqOEQr3q1D08SsN4DHL6+Na/pIUZLJRNsP6wE8fgUe6
	 ERNK1M8tUSuoO1UvtD/Fd09eNSvs/MHxkGfCWx2a1HOBGd7c8aG6yE3WtiM3Kc+/vL
	 X7EPiwRZTV36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB96C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548099357.717.8693747469582308847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec1d53c18e4866b16b18930e5d778b158ca39951aa82d480a0a6e8ccbbd0d87
Date: Thu, 24 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745480993
