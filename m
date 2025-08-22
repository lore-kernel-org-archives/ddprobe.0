Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124B12ECD3E
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755899394; cv=none; b=QlG+BMyUFUtcUprYvkCaRDa4KZF1f4KG8l3FdSqH5wVQscZQJGzcto36c3R6TLlc1/HAKR8MaAvCLJuiREdx8FCy+Fv7A/8bCgEyZZ10dhCsMuv/hrwOyR+X2UjIQnCuwILFy6Xs8yeRYozd/5YpJ4Kk/v6LcJ41AvXz1twRTdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755899394; c=relaxed/simple;
	bh=ohuE7lFtcn7Iu/LYVXA5E6eLvJRGeS0//86XrQ4LR80=;
	h=To:Subject:From:Message-Id:Date; b=LbUVt0kfUlKbVexUPn+iEPl/kxv7UCKZKXRLJ/Efe0ss2kkkXW5zwhz7q4/I2OB+qOO89QqqMsO8f5bH3YnG7bvULauTi75zculvV12jAOr9zjyBKsq3MzS+soMCKMXJZKRfcS0OCX4HYxiJ5hDxIngrZjoR9apxDU2XlUlVpIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIijSn2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIijSn2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB17C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755899393;
	bh=ohuE7lFtcn7Iu/LYVXA5E6eLvJRGeS0//86XrQ4LR80=;
	h=To:Subject:From:Date:From;
	b=HIijSn2kSa5nGhIHZ1blXdg/881jPLofXNLm7oDVl1QWSepeyz+Mjm4YjHqxlvYJj
	 6pwMtYKvD5D0cfiSSvxwZC7vJo7YZqY/EP6aa0ohVXqei7WcSHBMP8VjHLqv/oO4NL
	 9ycE6T+uUk1uF3GaX92hCd9GU/Nh5WTwFP1NW+eZcTuQa+DDGKQMgymJVUrFddZKrZ
	 z6TiEZW034GNXMaC39XnqGDzZ5xRjAEXMewISzOvVc/5D5U+Pi4TtCTYCbW1uyvG8t
	 XUn4ku+PgELKNyyGtLhRd/2UIvQMDbuUURi56emyOtI+qjLxXWi2YhMHNdS4S2XgbI
	 V4yiF+CTVr7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF5CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589939357.21002.338498849315686389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc673075c5a4301f16c367250a536490224edd36930fa1b9f6405b248b7f4b90
Date: Fri, 22 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755899393
