Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2300B2236EE
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763394714; cv=none; b=a4Cd7Pcw1jwOWl5DS5SDbeCSGRKf9vDgmMAIMR5zPK1UwIGtZCJkyHZOqLBt9oTdOy76D075c72nYrBQ5JJvoK+0RR19hj2Dfpya/TOF2q5SRjDu+COnjVo7pPj0Q98p2xznorO7LSkC8sY4qGeZOb9+eMp0oynuOiq0/Zm84Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763394714; c=relaxed/simple;
	bh=2KJWfkIMZH111NzLUkxElVaeUG5TlBvD8gLj0OimG0w=;
	h=To:Subject:From:Message-Id:Date; b=l4Ve3NpO7sFhO17htUIDxOg/qcmIDpnCDp1fa/DdQ2SkI4zgHcBZfbrTlMgR73atk4sP0pBKqGHvISy+DIp8z7bmHQs+oRzfi9y0erppSqDF+iJ+9jlJ9hOE6suxMhG48y8zTMS3TV8vgAIxqgo74tvjGSU9tbx+DU8kDPvj76I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu7o/OUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu7o/OUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17E3C19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763394713;
	bh=2KJWfkIMZH111NzLUkxElVaeUG5TlBvD8gLj0OimG0w=;
	h=To:Subject:From:Date:From;
	b=Iu7o/OUZAqo1aYB+qRMTT/pPcMkHmPlZDRnQy4uvLKtMiiQFUCiXTcuAepn5bhZdm
	 O8tN5WTqOaZ55VRfUYRxV7LBQY7PTjCBR9PcZAc4IkUewCLFUVxDBnX81wAiCXcXmC
	 OOEU6DiETmdToBzOtyXit8mxQFn1e6cnrVsK53nOt0a2sn0yNX8UEIpux8qk8tOo+m
	 J+0t2SFAExVWgCl+QdjrGzU4zP7buc3PTlcwpW3DmWcyHmBBCmCuW3nsvTl7ssSZIw
	 6Hwi8CaxKtGOA+oyCYy0/ltak/MjV+LRQSxgXOt9ipIDkucv1b3YCjGZaqkJJlDTo+
	 gVTogHTUMXCEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961BFCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339471359.30648.11921577225073434118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed925660abca028ef4daab7e4a06a06d9b291f6acf46721fec6f5599dc57b19a
Date: Mon, 17 Nov 2025 15:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763394713
