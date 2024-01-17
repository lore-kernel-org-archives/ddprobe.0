Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD54022EF8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705519696; cv=none; b=RqtRDWpPJM5kQ9pyWB4ZtAqdNdQPffs5IGpZgu03SK7JsB96tjFim+AkvejoSNWgYw/oMrnn6QI2Wi8Tzf7cgqj8Ms6c5RNqDjjJRUpiE1OojQldXwNqY1u8ksn6RIH8UiPyl13zyLb/HIjjD0K1pEFpGmn1h+w34Txg+HM15qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705519696; c=relaxed/simple;
	bh=jqIfpnozRZ0fCwJrF9hU+o371GFyqfs7jlIL5kgkr78=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=aqYk/a+vLguK/s6VojnH0sECJGDW9NuVGUE3yX87Q9pVavohcbN7RpYqbbxaDZzvIbtiVbzPeju2Oe0iR76hI3OV0aeB0NextjG3z1W9T/DyjSMiYMXWct2HyGZ7bmlroXrW/rh16hwKFyGQMmL+j/bWmU3ZRjsHggXSiC8lEa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3Y/zVyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3Y/zVyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B91C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705519696;
	bh=jqIfpnozRZ0fCwJrF9hU+o371GFyqfs7jlIL5kgkr78=;
	h=To:Subject:From:Date:From;
	b=V3Y/zVyxbRwo141slnYTcJ1E0fgWcfFWT9W/kMBLDQ3sE2IPTyuLyYQlmvccsf47R
	 N3p3lrFz+bseIeVxmTRT9v+HGOo0qm/ph69vcY8L7pkiJGVHs94G55aQK7ZmeCcfXo
	 pQO94KyYsSv/6LqF6wAXYfV54sPCxVjRHUOGzuuJs54jXC9N3RqQbIj37PNVGL/J6w
	 tmi+2E4TBb713rn3CY4K8i/eI0oURbSDsxDmbtxbWmbkLASAHV80xlu7GcRuYaF+90
	 vrC4PLosu2OdSgXBQuSFM5h28vzajHA9NVebKWzl0hiMpiNZop+xYRsEfxmCtS9wzN
	 cTli6EYhIgBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C431C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551969639.7892.4754197207870183289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833d024e97dfd165b410e57336755d17fa002b04abd9a7189710cac2f9d16609
Date: Wed, 17 Jan 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705519696
