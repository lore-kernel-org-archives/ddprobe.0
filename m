Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBDC3A59A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782123994; cv=none; b=h8trWoOP0N8AWh0YvBbnwMc0nu1I133SHEraf3EUdSIAA6tesU0qznXU3bjmjltwtmO5EDy6l8Krll0dDbld3528SpHZHSxzcCoM+8VCu3/I5oipUAMiwfT6lm2JcOlGf4jgUmNC8zY7SOwDSk0vfNmhbgEyyRbwzWyDjjzESDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782123994; c=relaxed/simple;
	bh=LuYIYrDRlb462mXwPEMXzJL664uLLFpe7bc5e5c4m0Q=;
	h=To:Subject:From:Message-Id:Date; b=OA8ORmvEikzAZwyNd1jUD0KbWeyIBYwB3Uxeg+ZJ/cKoJgq9h1yCKrtE7+7ST52u6DIDnkNC7SGfL+6YFTInhqiR3pKBHoD2e4izka8ULORyxkwlTBd9txmBWuiBwWOehi86vOdTCKm6jmfVC3aoguCbW1AOdFPSMl2djxh+nCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVlE6FMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVlE6FMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEFAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782123993;
	bh=LuYIYrDRlb462mXwPEMXzJL664uLLFpe7bc5e5c4m0Q=;
	h=To:Subject:From:Date:From;
	b=QVlE6FMeCXL3hpRWrLgluzB918PmsdijWgtGRoKqvy1jLiQtXfdlfAXRqlPbQTBpP
	 nWQrWMiCPqjfxEG4vAq046N+X3selra+k0iEvOCh5O9jM4eMDwA8GNsmIx83NFhsf+
	 hW1QF5NqdAJHM+fLI7tgR0cqSNWJPSZvnDG2U8f+LcM7MmKQp7b5YDW4z2C5OM3Rt2
	 8qPE22McExTrB3bPrMnxhCO0iFf5g55Ro7zJ/fgHOsgN9Wn2Ee5oBurqqyvw1++wk5
	 c49rdTpaloZh0Lc7awWqeN/KZnEw5fJz1+4Xb2IIDtLb0PSWGc28GzmGHs28qsMDE4
	 YnSRGVocKUdBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B817DCDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212399372.19316.11840390313342736823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 344fc8aeed9b62b99fa47711d09b5303e631a43d722e641abdecb6fefb021517
Date: Mon, 22 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782123993
