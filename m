Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF732248A8
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768124034; cv=none; b=cG5ynkvF0sSrWhhoHZiKxJX8WNoBDJEzXds8dVHcNZSPofBMFeCfbUf+iB9OYVfaVh2CJMJhejZ7Y3X3NjeJqfz9tjV47cf+7eMEd7MgwoXkmIXlcWGnpTu9Ti9aXLg8EjS2VnIoUN3gRow03idyCYRtBhwu7Oo5uhHCtDcLzlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768124034; c=relaxed/simple;
	bh=qYKCYv22E/axb49DtCT7okYzDFggqnsf0w6Bf/F+gss=;
	h=To:Subject:From:Message-Id:Date; b=sS1At6+Z9AEtL4nH7qpJ7DQUOkD06TE45SVy04s2Um8caaR9BiNNZvlt6RFd15OA0tgAOBOg6HN90eK1WVFgMgbBBj7Q1njjyWGUpXvriBubW039Xqmvwsf5PHSxXjv8oUouc5dSAt8W4/uiE0PEl+tzxixKhVjJpVxUyb1NLDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcYb9+Xr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcYb9+Xr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58F1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768124033;
	bh=qYKCYv22E/axb49DtCT7okYzDFggqnsf0w6Bf/F+gss=;
	h=To:Subject:From:Date:From;
	b=pcYb9+Xr4ZgJ/T5ezQNTkxRQ3kIPPZvUTk4V8kNFCoJEBoOvWmm18ESpUOcYN82xM
	 j+Q4ZoFgdMlS+VngPkpO/HtGAZV7YF6HJwXvkjVQpNXpSfIAGC5iQtXCzvfB4nT2YO
	 BUhsII9iv78exL/oWkZ1DS4NlZRGOCVJV2Y+BmXrv5hmNqBy6qh0Fiv7053cJ4aBrb
	 3ASi09+GDAWfE2BKYAs9qGgPI6PV8BRkvUQB4tbZv+w9+dEHogoN2ZXYbWh5d64G0Y
	 U0+2E4RW8NJZTSrBXKLRd5pETeUP1UTjRy3P+suybFSZGrY+gsdCgYPAARKGXidORf
	 iviag3dMUSHmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F98D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812403357.30467.11707217540303369891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858e35bd3e18afee4dbf26ddfdaddd1c4ecfc9118b493f6bd037dad122512de6
Date: Sun, 11 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768124033
