Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9F72139B0
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719449003; cv=none; b=s9KnUvKr1ZoPITgJl2IzGK8u8DdI4A80utiUNWQqOhrXmWjyyS15HZ92AlbLIrMFDXOlnR2wzwWO+DIjJ6pg3Oi7S6sDO4295VnrFs8qIC6flw0lgDJwerHVDX6NvN1SODyzIg2EzhePbZs/WhWEkKhOc+BYpnZMR5bhvq7QhTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719449003; c=relaxed/simple;
	bh=Kl2boVGlG1HtaKxaON7XS/sJqK4tVm8uTJwNdA+iylo=;
	h=To:Subject:From:Message-Id:Date; b=ZjWOlzH2WguJ8qdxXrtU/ZmyOarz1vLTNcUxOB1nj77JPyBPPZTYsjZU3HaHRRfYWEeoXHTcIS4oN4vmWUEusQM5x9B7eCry9mhBkW/04HXlVjBgCPj1y2LcQPhN0ZvtF2wLmwFH3CjfGi+nsMVx6Zq/Ag7tGAvDIE3H96pksXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ox2QndJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ox2QndJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA7AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719449002;
	bh=Kl2boVGlG1HtaKxaON7XS/sJqK4tVm8uTJwNdA+iylo=;
	h=To:Subject:From:Date:From;
	b=ox2QndJgQqT9JCXP/uXcyPyjY3hQdHFW2ZWo/a8zzUc5M8YJqf/3RkMgBdgF1NsnN
	 B18Hl9PrtqMHilbvM31FwxsK9mE3QReztrBcLT9W1RePbnz+ks5rNKyZBLjHzjgaLI
	 JInkw93GCdx4k90fGboyHmDufCbEJatP5slooHq5sikNnWAdHx40I2wP6ARdMDw+eR
	 b53FSoGqi6p2sG9aeFlPGNVKVUB1zGCWLaCGahu9FKQtknIwcDZh7aorum8ld8yBZc
	 zwdcD601YNJg/1uuo46N5FJ3Q67PSXNqUvPyzDP4X/z2RPCfTvvt5O3OUqU56GwzTc
	 d9b19a4dzaHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A8CC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944900278.22740.8354704478323853723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0ec9a3fbce9561ecd99869fce9f8e2d16abc18b35d3f63b2ea81d4dfa8a177
Date: Thu, 27 Jun 2024 00:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719449002
