Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25065351C05
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777019854; cv=none; b=IJ+LbzukpDmAHFSFmjqKyMQS85jYbER/w5zwVJbFkFlXpNaaJP0jQFMgE08IB7duA1VvjCFnfqeZXrcHvqzjpPB7cLFUkB6Ya8IUkYeSea5KWG1JeFRJfFrAb6iLcu8a5kg+S6TADAjZ3MmvEWe3ZLGeqsG8vI9Y1LrWnVfOra4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777019854; c=relaxed/simple;
	bh=cgGQ9TSQxTWlo+yq6065domqwWog6jOhkH9qSkjIH9I=;
	h=To:Subject:From:Message-Id:Date; b=BA7REuQhYb5VeNv6ndLHpSQi0yqJpLHv3jhb0CTFxmak6EF4/PoDCx3ZNTnHLtvj/BJtzqZrbE8LAOEzrUPAkUHQTWrp3dtsNC/Hc+7Tmq9gLejHNZyKTaHio8SFMOJGEWydq3Tx9cGm6aQrlmZvlN65M/w6KxPt+0eazwzGTGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mh11kNpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mh11kNpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB293C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777019853;
	bh=cgGQ9TSQxTWlo+yq6065domqwWog6jOhkH9qSkjIH9I=;
	h=To:Subject:From:Date:From;
	b=mh11kNplTee5ylaH5kJ45bqn/bJxMfRXCSNhUO66NX7LroUPFHBt66LoYYBlCVyTx
	 c6payt88QxQn0sfjNMXgeaFAzQ3h4l10Wv58fx7jt1jLAZBUEmZ84uPSul2WgOSmYU
	 tttahUemy9HeP7GXnZs7rolyS5o/EyIVk4txPr4MvIpjmPEUiSbj0KTt8yj7CqTCJu
	 8IKDfFvRO5R5cUzXwolIt/tgBSoTrlZNtREq17qiUBgAuU2bSM+zqitqYBVXz8rmSk
	 /9+DIDd1PvHZmhnu3TaLkCjdhSfpVlBkL1Xsn85clhle1q9mswz4MMSS4rKsOZ3rSi
	 eKhWSYl0wc7lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC1FB44D9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701985368.5341.3245239743351590864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4acdcbad1183ce22de8a32d5513cca2ee4bf6bfe164500d816cebc8c5f6ddab6
Date: Fri, 24 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777019853
