Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C78CA4E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778477434; cv=none; b=ApwlCqfDiqBIPTt6q8y/5hd/YZJ8kA5vzJgM4KJ2TYOSUn0I4lK+F1rrN4u6a7f1fXVvFLCjHwsbRGvWl0tz4w7wuJxRF1tguejh8jnJwHy2BZO763xhurgH3OtxgoJhzLROoCnoasKuZD4aA4HNyTUWYmMv1xySkr17drVkStk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778477434; c=relaxed/simple;
	bh=iThy7p2KF4Zhgsj/pcUh6eg5SdfYnzb2uwJD+tLIV6g=;
	h=To:Subject:From:Message-Id:Date; b=K/1Anz/6ajX+OvF2bbtyfrvzZaKYLbf/pHXcfVna18pLPyu4F/CF3ESXddA+xqCM15Ru9FJqq8kjt3GSrMOY9BeaMMrglfsfgYLVM37Yi3a0jXEJD6OtYDdoCbc4Rw2cXZgxlE+37QNcHNYLP+36MTTETE1ddwQz8PPR9uLQsV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo9kkODY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo9kkODY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72A0C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778477433;
	bh=iThy7p2KF4Zhgsj/pcUh6eg5SdfYnzb2uwJD+tLIV6g=;
	h=To:Subject:From:Date:From;
	b=oo9kkODY4VDraR9OdlGJXMi6WI0+Re1L7JMaiMu09ME/l2OacFoeY/7tpzPgYrJg3
	 HJifNaKE4kSroTXHxUg6CHqcOvbbjg41C0tyYq07Ghq3wGwOsfWCqO+Ayu5loCxaPQ
	 aarTOA5KopUKRgMnTNYtqYldcq3J1HAjAlXkCQtqAtsfx0rC/I/gXJJH96hc1goeix
	 AG3NPh9t3GEeFsGb2AvkEo0MHpdhtjwDMkJU1AMMA5pVrrbgXKodz5w/iXfRxvYBMe
	 ijLnLMjLppgTouccx4tziDsUYfZBXFdj10vXBDLzy/mmKnz8vE+fVXjSy7JV1tY5+Q
	 +HfnVlsZ3iC2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6000CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847743369.23139.12128447585396081209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e094e11205bafaa11b7fbf31e6c652b53ead12463f379490d2c942635fe20a6c
Date: Mon, 11 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778477433
