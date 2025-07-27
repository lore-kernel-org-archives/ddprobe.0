Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEA418A6CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753616394; cv=none; b=un1C6CMhcpcHu/cIojOXYVFZBcUuprhaw/ju5SPXxIUgC37HQVcgUczhdEgwjmYazz3ShDnID9w7nsxtkwS9rCAmkybaXLv0/TzAzjmYK4KEtUUgyTXAvrlrvido4GqoIkq1ndIdMnzOEaKS+6jmc62MdCfVtsrQNXHGtaA7i0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753616394; c=relaxed/simple;
	bh=TzgCPqI4GqxauMnj3klPyYajo/C6rltstFNTtTWzTxA=;
	h=To:Subject:From:Message-Id:Date; b=KGqwTNPncDz8Ds01fCEKpN9AgESDlw7BJwGqTennxkbkJVbJWOudiMtCgBJyoA0qWpFe9Clr5GrOqUxhqunxgGno6U3pN8w3C5EJvaYHnRVLYU5msJBYLJya09XjTd+a1+/U2YLO8lvR1LfOBXr7n5hqn5XGH4GfhT4Slt18fEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMfVUbCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMfVUbCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0455C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753616393;
	bh=TzgCPqI4GqxauMnj3klPyYajo/C6rltstFNTtTWzTxA=;
	h=To:Subject:From:Date:From;
	b=cMfVUbCEz8eKy7VgFcHlGz4F1ak2zu8ZB78O1VQH0+3xoHZ4t6f3k7chbOcSQyyoK
	 6PRhmM0WDHS3ONcdMN8ZGhNhaBdA9VSR7To7SUTaesM+MccWlsBh5xjgMqVFkuJ3x7
	 7FBpRZf5/RahZppwKcaV+X5i5ry2N2M0g6XtsFCLkysIyM0Z6JlexpCeWL8YuVZpvX
	 TSTqKSKziaYda0gJxDvvEXuk6cKHn0INJIOG4ZnAj2UZwkDaZbYTlB0PoDQY7DFnGw
	 3E3Pt+lSkaOB/D6OBiM11LhhLtY/iAW+uPqgi4aDgCJw5CdixK3yp7jLL0cIbKdd9v
	 8FKHPvLN7x8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92773C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361639357.28738.13531546353331574875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bb399c6ed49a322d0889276b12e8f553f035100c300ba529f61f088552534b
Date: Sun, 27 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753616393
