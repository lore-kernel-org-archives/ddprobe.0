Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E825F37F8A9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774302294; cv=none; b=eckp0q9WA78/gXWWrkb/a/0C4CS8Powm5RCenHTpl7txsITz8R+ohBM2gpYr+SbFVZMliJABjXIhlevD5dSV3uUTV0CiQusfYhES2uHKCxgZCsPQLWOgqpPO7YZSPieTsHkjOIwCyeojL4+Yp2xxHItjmyAKj52F9ozg3pWEHc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774302294; c=relaxed/simple;
	bh=KZ2xu4DGZpqKNHGp7vyBmdtsZUKqwExHynznwP3Z+cc=;
	h=To:Subject:From:Message-Id:Date; b=srHNCjHzCoDZGPcetpIlJS6RVc+anCDlfgylKxOhApus4n6h+Zgapd2aA4PHrnThkobzITYUwYaN9Xw4IxACHffTbwuAfszTHDS0YYMMZmNa7w2hUEctPY4azdMOJ+NLma8gUreHEpuflSnRZq0LDUZCjNS7cnoGXQ3v1Jm6+Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQSjsrK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQSjsrK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774302293;
	bh=KZ2xu4DGZpqKNHGp7vyBmdtsZUKqwExHynznwP3Z+cc=;
	h=To:Subject:From:Date:From;
	b=CQSjsrK6mfMdKKCoDNiN1bLQ6eimfQMy+pwUK37qm0+ubDnPZWvYB+94ECUP2w1fg
	 XmvU8z6o7m1fjb88jL66QuAxGWUaGwy0n0tg7eL/byHtnTMn1pvbE1L0NAFr6rUBoU
	 eVmFa85i8cYOAxKq8gqF5FDgw7WEE0DnSEHfnMfaTkkSry9dV0xIAbRCj2omF3lO6F
	 Nm02HYHlxAkuBlrc3pn8tLxGBbpgl10bODXT8VUOwVxnRqfdsMWdw50HhfoAzzN8GK
	 w5ybtHqKkx5WvKAPgKCm/v1V1F7C5tbaBNmxRbZAVUbS0f/qFdfEAecWb6iP93t5Y/
	 87oPS7+dxjpUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9305ED58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430229359.29344.9065166960032766330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5fb0dea47f34254d6c9032a897ce3b63709353339b062fa4595cf33a4e2c2a3
Date: Mon, 23 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774302293
