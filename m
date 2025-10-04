Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C15445009
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759554594; cv=none; b=pUSYcFmQLxa/mxU809SlTZru9A8P5xGo7XsJQQ7RhGJMuq3RBcchRonZQXJBLHT/7qR1f6nAqD6AwHca2m1zHp3M19hK3JXTpkblxRRhlTuwi+a9WC77dS4jlrgDmvtrisq7VdQ84rKMbAEY5MH9nYnmXJA2gDux/vTjSLHPRkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759554594; c=relaxed/simple;
	bh=qPo4ry7XhGT1uxJ8mnA3bUE/1qTeRRi/muF4qHhjVZA=;
	h=To:Subject:From:Message-Id:Date; b=JoUTQdklwjLGrUWfjv7WNFxWIGvBvPuJCOX1kpEhuFvyA++L2Xi95HqfllIKShGVBL9TXH1DbLjrnM/m7oy2FX/SWk7dEhsUUi6nur5NJ6V4iIXsPDXLZwW8vHwA0Nhldgrwf52T0aVVI60tVeUd1Ybae9lDnm/0jgbrwqum5VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBU+/rf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBU+/rf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6919C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759554593;
	bh=qPo4ry7XhGT1uxJ8mnA3bUE/1qTeRRi/muF4qHhjVZA=;
	h=To:Subject:From:Date:From;
	b=OBU+/rf2d7PR5fwqmmnd+Wzs7TFcfavUtLUKzohXs8e61DNTAAMIuNxZ6d81q1U5Z
	 0k5lz8giArBn8Z+9JUhflD+hYoyAk6ZDJig/egE4UUc9hy5FdX2sG51RuvZtMt3aji
	 OkuiLEOIGwoWqHhPs6VUvCqo4wDoLZOvXsYIDMb2yLfCD/FDZfNsI5idOS676pVwbv
	 +P89eL3sYsJhUSWmDT6vFj+vBE0H4rhXoo1OKuTXJuud/FzymKHXaydD/oZd/DcsxE
	 f1wZQeIpqK1OwtIV2c30+8mZ5/yYAYjTrjXd0zXlSbYAcPQ5UGiDefgATRoGtM1Jke
	 t5KNcaxrX0DPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92887CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955459358.15901.18274363979445807272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613a3a85e787b7642708268d8c6fe8433d4fb666472a9fdf44db41888f8abba7
Date: Sat, 04 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759554593
