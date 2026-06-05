Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8F23CBE95
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780624474; cv=none; b=Zk5l/YiVpXUBQWSogJHWH2/TsaXK/PeLVZ4eJ9hobp2I2lN5xXQtqqihfJ3eJ3S70NLjSN3ioK5eoRHXlSGX9TbOqiluUIBPT/rd6Pxlgdv++6UEYIM9mW8B6U3L/HTPVU7Nthkjg4+38Q6Jd3VlkOMdY3E0tsranXxozOfU2LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780624474; c=relaxed/simple;
	bh=HC5y/0l52N3Zw/CYPlO4ElDupPCVVeMqiGxufkcLVkk=;
	h=To:Subject:From:Message-Id:Date; b=URV/Ytowy2ULssrBEmkCwO51HAtqHrKZyoQIw9McmJt3HmSYKepBSGF5cQ7lIFtWgNNfGvAfUUXznPoutuPSvS+79LLS7OIJWI5hvsV1JvoESglPvbeZtnuG0gH6upTCwxG/zkzJTQg+pgARxrKhfunaV8WxvBE5qbgS7Vqqj08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMmwxInD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMmwxInD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEA1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780624473;
	bh=HC5y/0l52N3Zw/CYPlO4ElDupPCVVeMqiGxufkcLVkk=;
	h=To:Subject:From:Date:From;
	b=vMmwxInDg7aPrWkVYyrn/yQJae1Grqdgz7C7/CVe7bvfF5xq8b/tHA1diIw6QV4Yo
	 ubEJKiAxpif27RchGYO7gEnWRRiYQraokaDRVOwkhG26+mINiIWa4yJhUTOVP7eekY
	 nlR38ibZmzyXDdgI6sp5gYv7Nmf126NL9+IPHv/X664qLlURBS+yt1tIxjhNSNOyQ1
	 BPrIWSWYJ194MQ/TuknB1iSWyCIX4VwO29pjC/Tr8T8gudL2DS0Qsa2e76v5eFEUN0
	 kHqk05E7+puJR3nQJDUi8e8tTY3vw/05YPzP2jLo/ePai5bedFxxwptnABxinhok2n
	 Ct67vdpbHV/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B085FCD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062447368.29420.11472018773398081783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a18f620ac24cde7454af0228019d7eeabdc891d3bb16cab54214186e573830
Date: Fri, 05 Jun 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780624473
