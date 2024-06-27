Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8E013A418
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719480863; cv=none; b=aE/v+3pXGoVERuIVL9NocywpxEMOIDnFpxhz9QQsx16/q31Mr3JANbOw0KDgiwA9oC/fC55B+Ysql13g8sov4tRfeZBHeXCZMjtNUN2T3LRpZUtdvnzp/cNnmeoUf2MBd7QMmDvUXIY7tF4/CappWp/xRjLXkQ+ihjP4CIiyEwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719480863; c=relaxed/simple;
	bh=dJohhyZMHKpcnAOGH1PlxTkbOyNEEcAvkToezXfkQRM=;
	h=To:Subject:From:Message-Id:Date; b=dBvcMbuyjF3lfCrE2DhTN9qDr0WLVZbCAA9H7CnD+UX2tH0SilnudFHaN0TVw3OjVmBcxMJCwJ2l3IONNIcIM6bbf8UNFayzsRZl0M+Udy+uF5rIMjHMa8GOwl2wLZx+u9QKFaQyds0zGRfa/C6RZhbyaBqQIzYG1SxaPisCWjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYPCYuiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYPCYuiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE406C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719480862;
	bh=dJohhyZMHKpcnAOGH1PlxTkbOyNEEcAvkToezXfkQRM=;
	h=To:Subject:From:Date:From;
	b=jYPCYuiyUTWst9Oul+TbVF4QigU22ugPBRaU8+g7Nr682eKcLQLhdmfeWwryyZob1
	 fwA0OHQTq1ePtr/6Q7DGQ+OwZ2qjzkNhJXatm9BHovvVD0T36agsaqT085KHS99Am6
	 b5limR75mgZpMpR4SlT99p7nHXPsz0lTI7hm6NIvyVrbQXMNO2GeVdxSlGvEGZF1SA
	 uKiwKAlgx8oJaypYh3YG9hVZQvL+IRnZQKSnmkY4NdwRo0SkDWrmYZkTaT0h4P0FI5
	 2I/mmYXx0amWUnBVxK1HbX3s6HOYLd+ETF3Hqkh2yX456DdWKRxug903Sme/zxrKV1
	 DNB7NCxSPJVyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77CDC3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948086280.6456.8424463440514864388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1a325c4a11d5fbe70ea5fe4ef1c5390be3e60410e4cb001aed5a6b21597a3a
Date: Thu, 27 Jun 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719480862
