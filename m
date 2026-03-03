Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4165A1A6810
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772501094; cv=none; b=bMrJqQlUPuwGnPPjDMeuK7MYyCqyO5u4WOCjhvxYzEwoCHAqoknGDcZKeYkU1QD1ZKT8Fk9KoKfaLl4Z8QVidWb0nsG3vHt6dvQXbpQOXRX/oFSJAcxC9dFOfQIUJt76d4DnC2Z6ZZlQXsanYl0WcFYInbdgKVJLK73kWICm3bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772501094; c=relaxed/simple;
	bh=VlsQc9HviWOjiA+ntwZtCyzZxvlhErYY3F4H8Ev1mgU=;
	h=To:Subject:From:Message-Id:Date; b=kC8WraamMV/1kwiAA8GcS5ksnb9hTYVTs7xmzxovPizLE/OTLQclP2uKnoTZKaDGTwqpX1Q1+y8uUXXGijkwzsVxIwy9mL86dYZwUnOteGphUKLwy+z5zCfE7J1w1HsdeM8v95HzOtooB/DyJ70Vs6XD6/cZIUpPgNp0Up2FOmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWodfpoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWodfpoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA430C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772501093;
	bh=VlsQc9HviWOjiA+ntwZtCyzZxvlhErYY3F4H8Ev1mgU=;
	h=To:Subject:From:Date:From;
	b=BWodfpoJdpbuonLDtgPKX73fBznuLgM7nrFOHufxXTFWhrPw/fDkX/F03jQBDoEDQ
	 kE5zc7ceDi9GDH0nLlHzOii+OWHXRJFIiPDzLFEpI12JCf52EtBXB28sCeT4geZtx7
	 Yycp4ZtHNzNYJfwzeezbe7KGeKapCgCkPbz//aPbHLm16XYXGn9VGb98JJ3Amt934j
	 /PGmfdqo1rHrD49hTUCz8LnR3qVbE/0JkDtucp+WewaaWt4vbwpDPbbiTDEBWng49D
	 BpHUPaoyqaaPBEYSmOMto7H1VN7VwSIcnfsxSQfL5VPWa+TZM+6ed/ScANfmNjUFf8
	 B0tDELLKcSJrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14D4EB3641
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250109378.21256.4782935302726477190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee454f1b351a31e6cb9ccebe903013dd231b20822ceca41ea2bf23777831935
Date: Tue, 03 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772501093
