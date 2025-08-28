Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EB4275B1A
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756409994; cv=none; b=coc1W1F4VzUVUbnSvrKU/o1gP09S8Cr7kkLL0rd5SRQKjSxXn35whxY+NmAYsT2HgQx8ux4rNuydat4i6BWCn+m7uHDkHtsAP3OaaS+47Uc7aQhR2kqIH5SZNoWaO9o2TJKKC+vUtZyddI45zZ0RUHqlg89Xvt2eJWUC+Rv9uKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756409994; c=relaxed/simple;
	bh=V1t76PTy2naYOGfLKzJB5wnJNP8vnK+pR5TDLUeTL44=;
	h=To:Subject:From:Message-Id:Date; b=GoZjXr9d+T3gJe+Fiegc+fH0ZSvIOadPzUlnsFGE4hb0DkBURRUY4cR/hGiQBotu0z3CR2UcAIgR70LRMkdENk4v6SehC4M3rXddmiZ7j3LAuSA9gNsLJKAVorNOojuoIVoIfoMoFLyNdVcndoBq4W3ZnwZ0IAB6NQ+Hcpa9Hfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tR0qJnjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tR0qJnjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6649C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756409993;
	bh=V1t76PTy2naYOGfLKzJB5wnJNP8vnK+pR5TDLUeTL44=;
	h=To:Subject:From:Date:From;
	b=tR0qJnjAz1zLagrrDiIDWm/mXhu8zTDoy6ubrwbkTNZmCCtI6WtIhRDKXzlJVJZmT
	 Ixwn/YyfDJnYBQsCthZvcKEh8I4uwblCBwKJIdPV1XrfYinvfu3G8xQuGsgbBAJ0CF
	 JU0TBomw8wM4I6HEUJsNW9unuvQhi9k03bI0QrMSsWPSP0WfcErddFPRWwDOvovNYj
	 C853TtQXFIPDPH793A3APUD41iLMnhofdBAinDgewWQuwRvw7FwzHoMRC+dGTFunx2
	 9NlDcYlsXTezxobiVdDV/DGrT1cK599RDnM07+VKJipe++iPfb4ApZGNzyh+5I8/jz
	 /cwwT11+fKRCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2BC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640999357.21744.12403886667413286767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f27a8c7e354d00fc54a1a415f1a09f0fe8c1184c5913f24cfbe12a818699dce
Date: Thu, 28 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756409993
