Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8C7639
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 05:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722836155; cv=none; b=acSVYEcAHqTwFUjsda/K9Ae3wegLtQ0vizkTBhNdLqE7gwWn5Whsm6D6Av7cXjviiwhjgzup/7eyY5EHeyD6BU1gL1fzJtshnRq5bscLvBR4slM16hu24i2/g/LjgnTY5NA9XIevqKLgHbZMrrq6W8LF41rT99XhU1CwIMN+vYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722836155; c=relaxed/simple;
	bh=f1Pw7QVSPH0R2Drm/coqm7MEyL8vjBSBmwtTpMBl0YA=;
	h=To:Subject:From:Message-Id:Date; b=JNrMDvs4ibgcuTi/RfMHl2aVf1haob6AHOx4hvN1oQ8qsxqiI87x9dqrGtJpBXcNB+PGdUdCTGKDzVtEk+9bVYDkagHtgA0bGT+TfY6zFNdqe/DgCzWeguvOGfWpwILgBcN/Bb/lhTv7FuEnFOTLBiArq3Vs5GAkISNOvYGFd8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQH9I02A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQH9I02A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC94CC32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722836154;
	bh=f1Pw7QVSPH0R2Drm/coqm7MEyL8vjBSBmwtTpMBl0YA=;
	h=To:Subject:From:Date:From;
	b=ZQH9I02AorKUvNLJNvA3zN9qcGXOA46blsnKNQg4FtRRGh917AirKRieNeO3j/V/l
	 1cm2iK2eeasq7wKrLKKGfcMIi5FxhMkUnyO+9RqOMHUmvv/Si4E3MrxNz9ga0K2C1b
	 x9wu3J1ApHNlMeGPP080f7+DAxriXy18egImQp7oStc67Jgu6QgzIp8cw+JMcYE8Tj
	 PHvZ/Fb5n+Rx6CLi3fsYm5QUrKtO+ROlxRZRloi9CKccW7vHMiNA6PVXPvrCO1v/vE
	 /AtkoLh6JfZlIFHlnLBiekRLFxkKcYRxI/jWl5o2gCjyBofrFCdVRDYRxyf69Kyzwk
	 O7maMsIdLxkvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4420C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172283615366.27783.636860212790795790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1631af76a20584ecec4f636871e83508225d85253df1fe37390fb2cb80b2d055
Date: Mon, 05 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722836153
