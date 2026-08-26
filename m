Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3F3361DA7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787760034; cv=none; b=CL6ChUdkcDK2pOP4pc37edqtm/dl9SzaWDZZTlaBsqysj/bqLAEheZfEOKd2RnNYwc0RvTVrDFQ0haKHye5ag8wt0btcrn5qCI6yvv/QKLT19z6XUr+fdA10Bc4yE79FTOoESnTiGD8tKyzBStHCLTCdRm2DJ9VxIrK3rBl/p8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787760034; c=relaxed/simple;
	bh=g5a/b4GYyR5LIgpczOidSRQiCjAWLoAEKrcrzyH8g88=;
	h=To:Subject:From:Message-Id:Date; b=fRBkq6+FzyNWI0Vt+gIkmNsbf2mNJMfUducR4deRgURnksV+2ZmNZxDPrKBEKofBjc9Ha3VsVe/4vC6cV7Adc1hY7IRKFSpmIobWfTw/uvRNTqtjwLHCnKJ07X4yvRqlvn3LJ85zDmeEBS1SEqRx3CQHYeHW964c+taVTzh2HRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeGD6sRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeGD6sRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8409C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787760033;
	bh=g5a/b4GYyR5LIgpczOidSRQiCjAWLoAEKrcrzyH8g88=;
	h=To:Subject:From:Date:From;
	b=IeGD6sRBY/iscVZMkzQKbpxE4Y53ecqHPFhgW5jOyBtbvZ1/w3OY7ohsnC/bTSmh8
	 HHf7aYQXp1GMQF8qhAunVTZJdnvqcYCbEM4KqA5A1+5vpiBPFqdgcwD99VsFIBtw+G
	 AXf8X8+MqZIX3U+v252gMAosykqcisIXXp4RVDWyhwuVpp6lNG6nxv5chVrt3654UM
	 hkl5hT1ZpKE0cGcNmdnANCSo6mdW2gKjboUpeUS1JMnrMhuyJGjHti8WcbqChNSR+7
	 590iFEIGxsjrrHb8Hxl/ZFxhQciKI7rj0kVIZljhyJg7HBZvXpxVfRwpxrEEWcM1M0
	 lHKeY3movY7Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C0DC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776003369.29705.9202718448078750032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed0a1482670954896cfa4569ab33326d447e6f9a5e0672210e72586c81a56f5
Date: Wed, 26 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787760033
