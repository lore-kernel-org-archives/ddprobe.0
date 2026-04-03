Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7F62D8399
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775235334; cv=none; b=KxqSrhXFjjub6FFrweEWjW3eIV4AEAChbF1Lfc0TKbijN9zq6yDnUuU/2HfuqSYxSVRUMCyPlEZ5DrQz4NgelqBpufuwrUAmUQIt9bku+RvJf2ng2k2WpyBVV4KCleaGSlKVdLEGHiDEdD4DTrUKPhiND06NMCMNoQ+mYzJGaYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775235334; c=relaxed/simple;
	bh=R8V+7A6SRAmN+i9wOG/YwHh//7L4yaxpMQ0n0xUnXqg=;
	h=To:Subject:From:Message-Id:Date; b=ZaqI3F4A4WzyLTWoVnoi8h8zBrI6Mn5Eh9bGhUJAA5x7EzmaKnNYg9b6JG2NrZaIgrQqoj91lqVxL5o5iJU9e/KGA+r2zdK3DdqmGBAjtIM+9OcChXXJgfboEQtnxfxxqe1zoUngLVvPtrepAsKQ8d9RgdUYobZhvRH8pOVheDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBorZjiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBorZjiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CECC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775235333;
	bh=R8V+7A6SRAmN+i9wOG/YwHh//7L4yaxpMQ0n0xUnXqg=;
	h=To:Subject:From:Date:From;
	b=hBorZjiI4EuqQc2f5Xz6Oi7un2QadncfNtZqBSLjlc+nngjj0lqsvkXuy3QA+miQv
	 yBlzy83MALAV8H3fFAIH1uTjSeVGGs//X8bDg3EoACIQoMLV3qHnUjJEiyHSVFyhn+
	 tcnwRiNb6crjhmp4sdh2DbOK1MA88zrC6HkfJhpdFp7kz9S698LUgpS0QaW91uJqvf
	 3zSd5sjtyNl4vnAmPfGYUMl6ngh/swUo3Ji2I2nAixOOykljraq8MfyBc4NRB1qqzI
	 3boBy7jKUP0tfgM6tiAbPG8Sz7pmGVK2xWX4MgrV6f0LXsBBK6ycDkFURVd3T2742y
	 3TNC62WIBDMqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9DBE85381
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523533370.6795.16541599959654645851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a60fbb5e3cb6cc195ad025af70ab81e0bd0ecb996ec6e88aaf4815efee78f0
Date: Fri, 03 Apr 2026 16:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775235333
