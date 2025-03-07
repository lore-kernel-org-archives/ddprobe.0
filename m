Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417F021ABB5
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741355934; cv=none; b=Qpmq1SPNEwjyJuXl+lsyWkAWEQRWnHILsHtnpxneoNvLjUWGhAEA0DiwXhPgfEUU+/Hw3RhKF30cAcZbcXZI/xox9Feuz4/3HMwEcr+QpHQCKGuqlp5pl/QlajfyFdtjQv4jn37EtXtPFgrFCG7FnYOZaqi/AmSmPHOOSJz8G9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741355934; c=relaxed/simple;
	bh=F9L1vPP84PK1QGbLGM5F8MgjiVwlPxTiuGMGe7lkwc4=;
	h=To:Subject:From:Message-Id:Date; b=fNaegdWkzUjlT2Y2BtEvhcxXH+E/lZqNKfwmScbvWIcXwfrVcrTMKLr8R56N1Rf0KOUtme87pYewc6kC7FnQwRCWWeaYglhHbfOef7hedwuWYqvX5fTFnsOJ5mSPN7Bnh48LwxGUWcdyiDgMc8lCcU5N7RBw2fd3SeZRmOUPh14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q76YJyhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q76YJyhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F55C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741355933;
	bh=F9L1vPP84PK1QGbLGM5F8MgjiVwlPxTiuGMGe7lkwc4=;
	h=To:Subject:From:Date:From;
	b=q76YJyhOyxWvOxd6Kt+9F9ho61TBFjqwOkxeQ/E2oaEk0J0WFYSOnPo8pAWeW/lq8
	 m1KD9qSZ3UuHd5e5Wc6yzGSd5H6K/yU038JFYQarfPi/nux8liR5Nw0Syl1G25+kTF
	 aKOYq5WYSa02GzaOYz5ak9wNnQwuXS6+frSet1S9NJdtMpTEn9Jlh2u1SwqJQy9fVq
	 BDd1Ov8775xupwRHtl23T6ky6uFcVlaVUSt2Iy6TNuOT7Jfs5L8ZuqEpldcUrNCZb6
	 EVxaDCdyKsux+Ey8NrhLCou+uws5mJEjPZA7KWFCifdH3NdVOllDbEzwT3lOa+AsuZ
	 7Z8M4OzJro8aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95862C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135593360.20844.9440384587930807188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2776e85364682f05569cdd76404bcc8cb2b49bfca48c900f23901f422167531b
Date: Fri, 07 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741355933
