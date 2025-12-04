Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B2E2F12B4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764873773; cv=none; b=KCqhsTOHLv0cbv6y9xCZ41RBReiouR6ebgpsNbICI6UntkPoWTSGn6xQjimizvtiH5CLzrCoQOE8G3ObanmKxVxiosWSX0dqFEhMWY1Z8PZPPx0Vw6ofdqiALoLiQXHeODix8OgitQ0L6qXKjWbgO87xy1zOjLh0o50XoVJjiCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764873773; c=relaxed/simple;
	bh=/JRo1+sGUlf8g69AaHRgcC0uvp2vPpiqZmqqlTnZl1E=;
	h=To:Subject:From:Message-Id:Date; b=g9HY//6nSBOnR0qI+p9LOTo1v/YjizBuSjl9QWgR1OXMAgJAHiBvoIx1E0CeDuQSCmM+HF2Yoj2ZVKRG7VW5HeXRszAe00l4veIywyOVfKCVzbhnmlyuLhEPZD+jbQrgTGVzsCb5RyVTYBfVjRKeDSpniwMehlcEuISg8B2L98o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kG5NW8ra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kG5NW8ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A746EC116D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764873773;
	bh=/JRo1+sGUlf8g69AaHRgcC0uvp2vPpiqZmqqlTnZl1E=;
	h=To:Subject:From:Date:From;
	b=kG5NW8ra396V6QMrHakvo29F1SooZ12+vL9ybhNKgD3xqLyrTroQix9yShhnr1vBN
	 +QCd/mYCd8md0K6WOxbiNp7hJ45hIdg/aGk1owtziM4yJeaAM7ZI9molaed9TVbBSg
	 1OzJSl2yDd6vZnmUq9zWLG9nJ+r9sojzcdmVUYGyqqgTvSBLMYOHLcKUSLXMGiH4Cp
	 NpbMlDzh6XJbjs3/a6+/Yt22wFcyaCOUKFQ8+7UZvJJSJ8WBB530YleAxs/+UuMMJg
	 7l2v/NE/uGWXxesJwB6W3UjMZ7uTbdMG/fPdVpgTmSzUBV+KVfLCMQKEjzLLJeuYcy
	 JMJp6X3Y8ERyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453AD29FAE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487377358.19826.13887113771843960308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958377eb7ba56db817313a129c565b0fc9c4abd6546c9f2ce15f9ec19f6ea421
Date: Thu, 04 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764873773
