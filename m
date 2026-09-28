Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536E6401A14
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790578234; cv=none; b=L3IVDjDhVDYAZGr4vkURCDTOAD1koJOjaBE9jJ/StQfi8hrMGTql6oYsARIFta4yhAjquWpzjV2TJp5xtJTxFkzlI3W+mw+b9FKgBEEo0Jfij7d2mLTPJOcX3R4WgaJgf+M712aobnjXjm8/kYPQxFSqpgd3MQXP+ETrgiwKnuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790578234; c=relaxed/simple;
	bh=G8ArAhws9wK8xFkclCCyq0g1BssPUuespgUZNmg8x+Y=;
	h=To:Subject:From:Message-Id:Date; b=Z5zJxDxGMbHngATfTxx5hytyCah1/EW4E+Qb/0M6c+Su8PIkQb0Jv8ukDzEwgwze1o5FXcI1OXainSE+s/ntUPz0rVOfxCF+9ASKj2EETXN85mFV6/uG7xEvEpkE/jn4ElzxKF4kjcDotgYLzfYprDExQT+dMyCHcc5zXGKIqbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPoL1Une; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPoL1Une"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29FAC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790578233;
	bh=G8ArAhws9wK8xFkclCCyq0g1BssPUuespgUZNmg8x+Y=;
	h=To:Subject:From:Date:From;
	b=iPoL1UneCw3p7mp7ntBGChAPbIBswWYDe7iid3MS1nKtJPthFngkEZ8PNFBqsvNXr
	 ygy/ODAcA9GKBxgZlmupFk+VG/U+AfX1QnqE5FMIujf4qRpozOlUcEJae/+WUCpXaD
	 dk/LMqiPYozpXTVB6DSBMdU8kBu4hOGmLBl9cc/4h/abW5avxjOaZDjJP7Qkmz6RLs
	 ZG3SxT8+qEQHxaKk1Jyy+HKK034E2X8TO6KxCxTczF7UCk2sIZUXeXMB0uyNxVDPjP
	 nBBgNOEzIdYuCtpCUMbbQIuw9hu1zXLNrN8b5UhidkQItN+WbBzykewbh8pOCJr86v
	 38APT3I44Crqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD82BC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057823370.24988.13429277027699247861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6728ebd7152b69c22ca485376b2305fce4f0a41be752c9bebefd0b4a6d910f
Date: Mon, 28 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790578233
