Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD352ED16D
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789947034; cv=none; b=L+3R2zF0VKN1PZBMxlhNo+xOQJiJzmRrfIORpCvYcbG1fYOuu8tiO/G6dpMQzvQmfs5PItb2L12YusO57CxbN8zmUvlpYBeCp/Q/Qy43x1Cm+s8jKXhU4nGFiBdLLC8ghe+0A+vPdjIqAOfqzNVSrPymIKD6O4LXVPW+4LrsSIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789947034; c=relaxed/simple;
	bh=BfzAQS4BlW0ClR52+CgCl+FZrIA478EnMqAOFPL80TA=;
	h=To:Subject:From:Message-Id:Date; b=FWLlHxqbiW9ebPbiCBlI+UafqdvDqAOfcBbW7Z3CfPih7LSLInySTAZ0295GBBnWBJeY6MKpddZTn02+6wHjGj0DmQ3pmOG2DJFzQ0RW1dsghfkJeOoyFCnftJcDOjtCMD+YO1UsRm+PWaanNoBVUjt7u7ZAhU6wfsxsEbbU8qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMhdHNNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMhdHNNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A14C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789947033;
	bh=BfzAQS4BlW0ClR52+CgCl+FZrIA478EnMqAOFPL80TA=;
	h=To:Subject:From:Date:From;
	b=XMhdHNNsL/lLtcjgk/ZV1yUN3N+R6wUxo7s4ahPRZQsmJ59UgPemsfJaMWv2YTt47
	 RvU9ERbCraovNbZitD8qg11ShJWmhMha27p/EWj8v8xhEay4LWkCAlcqrpSuBO+TMj
	 5tNnzcHhMtwGffOuDbXkiCxQusOiVAjc1iMUHhvCtII4K7iEHxrEzi6zgnHoi0lWQp
	 509Gb+b/BF1Xc3n73FLA/ZxRegWRs0H7/sjFOMpMjI1GNGNy5VXR9qXKZFooYL4/HO
	 Ie63Ao1dqzgbomlyzF+COuB7teLBZn3oYuFeYU0kJMveWZkGNRT08AnOIomqMkj0r6
	 7jIOxPvMvibbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15F3C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994703369.2376.6142693670692641434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba360aa1859985b3758e0837d7b125160b3c3d7d079314a39ba95395f2a93efb
Date: Sun, 20 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789947033
