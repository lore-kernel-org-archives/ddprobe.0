Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667683C1F
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788135034; cv=none; b=tcr6ofWRDNKayj3iNXT9jrGirQCdtdqWCpQ9FXJ59/eN2xi1TEpK/CNVy9HbjuXsvIyJyQkIXpsCKcfl0q9OMppwVW5ghaO9QwLf/IxDSs6sjP1Vh5cR+38SmD2IQzbTOiHml8Xkwb62M1obQdOSMqJrExnwSeZ7lkcUmrF2z54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788135034; c=relaxed/simple;
	bh=sLx72edKROFYpT9rIfCyyV1ju3OGxWtkj724Np0HiNA=;
	h=To:Subject:From:Message-Id:Date; b=tfJ7AOhZG2Hc3c59IqUXgmKCtJHLpxm1lKxkfIFfWHD++ZKS0UhjGvBHwSRXKKpr3DkCIER/1Jd7BvPvCwzDrd5CMQFJJPYxOyV0fKqA69gQA9hEaJlAhu1BmWH6Hg27Uz7g5MEbN4I44YNlQz9I7PBZzLyBHm+3L7kX6M27MlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiHIwNvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiHIwNvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5963C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788135033;
	bh=sLx72edKROFYpT9rIfCyyV1ju3OGxWtkj724Np0HiNA=;
	h=To:Subject:From:Date:From;
	b=IiHIwNvdRb3kxNZzMUT8Zp4bbWwtH572VRFojxR5Saiqh9SqFb+BCUULABIEzFFQZ
	 jZHdIMSTMzL1Nv5CBHrBW0V0WeNFjN3kFeRwENKmNvPe3WxrYLc9DkknGxQ4nz17YZ
	 9UhKOkkJ8ijZZN+fdoW9/waqptTOizysA0GPLIQcXmE38aQJwGgQ6mQYJWQ0CbrCwj
	 YSx9NSBEHbzFOHNTL+eHyBohkbq9KzorLXHqVUmsYNHNAu9h8p1sSRliNnMKQG0BtI
	 zFFcfYbIAkN5reKfioXNHLo1fCDY+GkSgxEf+0vXuP0LP2/Ls6JC0SktI0E8P/qtCv
	 C3ThVyF7q+1NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9B3C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813503369.10420.14438844078175233052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4cd14729f57f5bdb8c838343088f7dacd1e591b87198d0ceda4b4aab84ec9e
Date: Mon, 31 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788135033
