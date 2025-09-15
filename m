Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E522264CB
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757953194; cv=none; b=aZlUWPcIxo5EXvuEGj0u1ckiZOR0xa3+aAeDUKUBCCiMs21+eoVbMd6eBPR5tVhxuJ+W3xKCxKfXz38pYc+Dw3Uky6aGWYTQdmKv5auU38WWoxXeeTbwUpIUp6HBsM03G0wTq+aIrDa4ermHmu4HQ7AxDfvRoZrtwkq5AefZvJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757953194; c=relaxed/simple;
	bh=pbmz7/VkX+JgVMMrpaAj9+aUU8t35FAq72Xs56UY/P8=;
	h=To:Subject:From:Message-Id:Date; b=mL+KqDylnfbpd3fm/8n/MpV/1g3rProbW/yNWm04rrDzby67PLWzgdWjIww7akDZRITx8b/xqLHY7q2XFe7/IcLVUZ5KXbQuKtxCC1SAtl8ytdlZbToY48yl7AB+KwyV61FWQt08ZDBK12gKb9O+boYZRc8N0tl9SCY/nyd3esU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqJNVO1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqJNVO1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B185FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757953193;
	bh=pbmz7/VkX+JgVMMrpaAj9+aUU8t35FAq72Xs56UY/P8=;
	h=To:Subject:From:Date:From;
	b=PqJNVO1kmit9Xw0mxF6j9w3f2ZtEYiV4FyM0S98meboYq3rDUIv737NQW3WaFczns
	 MjI5cWEH/GtsXtYMCZCiM0XuMstlD4tuLivfJ1X0VFsfXUcT1i47PhBAAerl1UKHrD
	 sc/7htdGen+F36iV1pIJLIE4yuihXI3iO70dRVT/qj0Ir0+X4fmuUgQZUqQDEd/tqF
	 0q/brtyLQfqXg19fe/icoAlxVFcjCrlO9m7NXpuppeX9ooaVq0PzxxmWUZHM940axh
	 aokzvz1KvlSNC5ZMNlNPraeW69If+aiVTjHmu1c6TbDWoOYDZJZZE3JMHHcXOmCetj
	 kRqEiPlP+/HLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D023CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795319363.24508.885944214458412121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac048789544f943c51c4502cec9d86157143680acbfe5f658813edc51223d82
Date: Mon, 15 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757953193
