Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2034737DEA3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782703114; cv=none; b=IV+iG5jEIYe0Uw81pFLQkVAUMMSAE3rbHdQz/1MQ7mIY08iZfa3oukjbWPlLK+Bj3iZLAqWhQG8oQLCFzrsVWQEXiitLFXUMmDnEPr3oD5ngo5f8EjzPVQLV4LfMNETGCxrzkUrCFKuhYOsUOvGfEb3bUS/XkOP2ivl+mwz6dJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782703114; c=relaxed/simple;
	bh=fOL1x7T6ksv1YcF5pg4V1KhHvi3T9xg5P9IPXV4vTdk=;
	h=To:Subject:From:Message-Id:Date; b=XSMRJ1N3yN7AF6rOMgU0WZKtJ43OvZy+OxmOZJeD4uQ1yYfEqhsuz8XbO4qE7EuBA/pjaOYFmH5GPRdwOAT1HaewCoaAvbNod1M22hJt6vrPhPVruAxIUop7qWv/rAWwccDKcKaA2/8baqIrT/WXpJdp4dHz8L+jw6EvscgvwVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxRsadZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxRsadZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D85C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782703113;
	bh=fOL1x7T6ksv1YcF5pg4V1KhHvi3T9xg5P9IPXV4vTdk=;
	h=To:Subject:From:Date:From;
	b=UxRsadZJoO1T5pxrbI9TEcsDiZsHm0Zn40N6WfPqiF0jHsYe9ZCyF6GtjfEFFR/IR
	 5inNBtVHf9vFCTdiAk2RbFyGtuwSiPB4GQgOQ1hJgi8Z35DwJ10MVw5aBQ1kCxRHmz
	 4w5A2L2MsWJX+emzFftUNW0I1NrHVZ+7AYAPIhNc9FG4cIxDcvESrJcFnkk+Oh41eX
	 I/80OfIpgpbYgaIROpNElCOLVgVgR9D5UGZoGI2sBom2fYaD1qtVO8aQdsHbhh0AWK
	 3kJFAmKScE7xc62dfFNPy5oFf6IJosgG2LsZjKhSOyg/acfNqgLOfcbFiCdrK6bctq
	 VenB4kpciAhUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB84C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270311369.10456.2127040352304347311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3bf1ad370ed2d93dbfc0a073a4f8fdf3a768a67c94615b865645a8ee1293cd2
Date: Mon, 29 Jun 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782703113
