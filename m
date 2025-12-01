Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FA17E110
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764565974; cv=none; b=LDLulQtTlDQf3uxzdevCG/EoDRddwvNXbZCTozoHZ89JML7lbLaFsKNHpKGb272X/C7Mlcn1vJwe7ZVR5ahlh3wXLUkTDbvVel1S0Z1hSg4488YZP+f68umD6qCHxNs+EAkv+GsQNZzQkkivH7JyFw4f9OBn99Wnjp3jf23XI/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764565974; c=relaxed/simple;
	bh=TKVua+W6eBsLHaabTxkZmXABej6KU4F4pWV07MFJpqE=;
	h=To:Subject:From:Message-Id:Date; b=icP5zOXd7oshG2uRR1IwUVpVGuUI5/PrD4ffN49y6l/kw8b+6GGdi6whD5zAjmgsQ7YmugbmoZRj8u9LYNzYygeCmn8HNvhmIKG70VvxpVXHZPdIqDBhNTJD/dtn3U1id5jqOtrj7THluwRP9QE4CXlNoLAQFmHy4wNktbJISWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExFJkldJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExFJkldJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020AC116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764565973;
	bh=TKVua+W6eBsLHaabTxkZmXABej6KU4F4pWV07MFJpqE=;
	h=To:Subject:From:Date:From;
	b=ExFJkldJRaN65ONVELpgrvR5lLECzxFYuK4Ipi1kaa0TegUSNKB8lOfTJ1yQ6w13y
	 aaZQaPTBMXpT8+Q2jJRZD4vboVwgHOb9JTAewi0WjYlVqtpAXffDz1S3Rj3BqGbCin
	 jYtgTcHMoiyhZBz0rWzkb8nVZorpp+AYb15nQaAuGuA0dwmUXsMWDwC/611hI8lahF
	 wilmZhqWFpcjT9nN4Hl3ssIOKUZc1rra3FxI9NiYSrYCfo5HIIZPI9OSOlIaTic8g1
	 ADn4XjcVtXcn/aSTrp2Kv19qgijnrt3f9Zw723elQ+noq9eScVaDSQ4F5X08IFPcxc
	 cU0Sd9yu7erOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F2D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456597358.1736.18081987956831405826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e5f29dfece7b594fb90f9dbe8276d6dc2d6c437526ad1648b23797167510eb
Date: Mon, 01 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764565973
