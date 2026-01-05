Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F167C2F25F2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767624234; cv=none; b=RMyXHf8eNyvCNcWy7kuRIV5YhwD6kFRlivAO0CIowiZAlwHcPTDweX4mDmPNeGaMVc5MkZsEUQeLqv4ehiVNpeKQLf6KsMovuh+BqFIEPMgSLlJs2muvQb8OKf1oU3z80h+q56k4yQhEvT/AaCZmUvyYNkyk7bEIh7lmMAot/KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767624234; c=relaxed/simple;
	bh=EEbzYFSMEMmM0jtBI+pf8c1UGPaKt9aeT5XbDaf7VSs=;
	h=To:Subject:From:Message-Id:Date; b=OMc1wmbXb6xHm5TSY0K5umxGAE6aNJovlj0a2YeQj+MKA0Jx+jwzC02HEeb/WtI570ZNggALq1varc/c4JPBSJz4WOgEk1UBucmJG86+B/o/0MNjjTWt3NSLn51dfueKUl1K1J8WYW+AM0oJTiSdtWMo2PXeZah6UMjpQmqAjqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/oI8vUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/oI8vUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3E2C19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767624233;
	bh=EEbzYFSMEMmM0jtBI+pf8c1UGPaKt9aeT5XbDaf7VSs=;
	h=To:Subject:From:Date:From;
	b=X/oI8vUCChryNVnxdQKQ4u0AHP1L9WMgKrbmRkHivSDv9ArNHFJGuBbqOrWi8NKLB
	 0bZLbxGj4BXdNyy4PXTftWE4nAEojveeuu9leDvSE12jOJqmj0AR8m4vGN9UU+5NwK
	 2Rq9y/hUOUca3cl0oWacnNjvk6zJA9i+Pv9vSxlJF4xoO/o5FLHM1eXEfNrnt3zwTA
	 yWJfanRkqGBvxquDXqYtN4azifay6l/uKwVxGVh2VFEG3n6t18IeUTGMw1QRi5LupE
	 sLwQrbV4QsxssraGGWWd1wQNax0NPJiO7Bb8MUGR+yJhRixgOs8AWQtAz8NldYR5Zb
	 wOjmS4yq/hSmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C3C79F9C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762423357.1709.730247728218193248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8185ad88265c948e5a5eb4cacff343fad0ecfa89d8cf5d5a0913f3e3c15f12
Date: Mon, 05 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767624233
