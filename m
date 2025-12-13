Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D08B2773F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765614774; cv=none; b=l48UJ7xgbvowWdUzXsL5GBtgRdz38wDObxhSQP9xdC5zlgkRL2VVnO/DZFGvaIHoptaM25GqaGiQyD//7K1cTCWt2oSg2Kq6+kur3TSek4nuuJtGlQdCoEejTlDqTg6yICK8vmj9FucmVOXQ4+TS28Gx0kY0QqD4FEOxXTU8BkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765614774; c=relaxed/simple;
	bh=yoW1sTmzGLRdN+GbNfl4HMgHEHYSgutEfqFGkRBdaIg=;
	h=To:Subject:From:Message-Id:Date; b=PsJ1nxWcaufVpZbHJ4lYEu8PlZmJwgE9Xu7Aw1hl4aGCwCTiJtqB3vRrIigmKeAqu1bGxLUwW91Dwe+DjUKn9B8kpCSOUEQFg2LxDvWRnMhuFPq9vPBrBUhHmcZufaRT34cIlcdgJ4+yKd9cPTE2eq+nwPOyXelV5CIq8HDK+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7NKfbvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7NKfbvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62F6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765614773;
	bh=yoW1sTmzGLRdN+GbNfl4HMgHEHYSgutEfqFGkRBdaIg=;
	h=To:Subject:From:Date:From;
	b=V7NKfbvvXqViigAlMUhqnGwUD7A+RHv75Mr14uo+BkPyxeZEDOCpJAnDOD+BZYvCq
	 qoffpWmTUT5jS1DMPGgXYRnUs+Kve1gwXbczhVCtypigIWH30gcc9zK5yCUTDcQseD
	 WefJojGR9jG7qsBJeokRAD21XD9EgsM+skDjQ1ppDUieccbz88Mo5NdH909QyM28Eu
	 0K2lAeiHaIZkyvrOUNCDZii9VBkpgtYplucmyymLOSRzdpDyztAjSSCzNgkfuzbqrS
	 jGwgfGIK2l8o4GEWIXn9vqgJ8wleIFF1oxk17lQYN1sm4CIFO02C7i9Unvr6AiYR6t
	 oSWm5lU/LKlJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9269FD59F7A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561477358.688.11196920699645965647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f5f364c3e7e5ce6ee2ca3aa4ec60d8533b3f4976b3b03e2abfcdd32e9f5c55
Date: Sat, 13 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765614773
