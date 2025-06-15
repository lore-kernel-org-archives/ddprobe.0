Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBAA2620CD
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750002594; cv=none; b=u0/8YDTYciQYVrocyAO3ObACIRPLkVzveprHjeILjaoRoHboe9vpCfHjNMCBLbSmDPt4JD5jN6IrVHbHTAXNnouQcVh/GWBGAlSZfP3q6WrB5oc/7OYn2T8WN7lFOqPxy69OrqtlP9hAyTPt2aeCVg9Hdq1RfJeUU0plwZ88bPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750002594; c=relaxed/simple;
	bh=V1vk7U32Qbn3anxHsdpliwvNoy1MUp1wkyWusgn96ME=;
	h=To:Subject:From:Message-Id:Date; b=YCYvjQwXMEr/PA/+soKmfe87UdRlfnNCmrF5vg15ALl8B90bDY5SZ1dka2e46QgkAQuwrjWGUx1uru9KCTjIPbKQ1159QYkpt4nZZZdgiGSYRxqsTQTQLP/xYS28hbOqWCUE7k0v1uPmJU9AqpiTo7cqQV5Jio9SQmlVMsL7n6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FElDhGrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FElDhGrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CA4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750002593;
	bh=V1vk7U32Qbn3anxHsdpliwvNoy1MUp1wkyWusgn96ME=;
	h=To:Subject:From:Date:From;
	b=FElDhGrQFLpwu4qoLQE0pkrPTj6UTEfy9tVDyVdtjD1wGau7fQHIPPQI87fmlKlbO
	 7MyCyJbSzlpspTFPypYmpRLQpDKWGy+B/r+Ug6oK+yc1GKjSYa7VT0jshlYJ40dg0G
	 /Nm0pF61y1rNofrPx5vKOF8DrCT74d4Q7DlqBKhK9vr6rpEfpT061x3M2512glQxSw
	 xtth1HrRJ3CHNISEJP/glLunDYyr6GmM3Q/H7ZyrZOGqg579j1LfA/JjW071UxdGpR
	 qXUrp4oCH1kHPEcd1aUxsdyEWe9BEj/8jLIxaGnt0fWbnxAPFtH/Le0y3o+nLOaf9H
	 m6EAZHGdNAFKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95553C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000259357.8174.11003637809469592094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4025d8c6d2ef16d8fd34aced8d28c179bed2ac7a55f01bcc7842dad12861d5
Date: Sun, 15 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750002593
