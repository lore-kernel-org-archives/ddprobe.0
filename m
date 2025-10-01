Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA0413C8E8
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759299595; cv=none; b=WV2ngYu2OY5S0O6JfTg/sCWUal/KP/pKdqbr7ToO6yvp/NlwcuxmYyU/Xz/V3NIRHvODdA/fVLIcrBBuZIVWl5hxma2HGRt1EhX2rC7nzHa187HoNy5lute2LVWZjzCfxOrQrzIglaBqm/etqPyKRC6Tc5MRdck2muxUlvuh1ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759299595; c=relaxed/simple;
	bh=wOGdYfv14ldYHECe/5R+iv8Vg2w10FD7WRCzpLD0pcQ=;
	h=To:Subject:From:Message-Id:Date; b=OfcvDMOdFY5XSfJQrYdDzzgSNHTE3kWCYNOzkfMyRy3r4jky64bJVruw/ZfgdVj3dgIjLUUTyJ1zqZtrVj7jOhZDpGNHjpfv2VAxoZaXJ9z0G8JHnaAUrguqQlVmYouWRFOJRQINadXZM3R26QUBm/Bd13aVgtnZ7ICjJz23QNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyfJc+cE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyfJc+cE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4541C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759299593;
	bh=wOGdYfv14ldYHECe/5R+iv8Vg2w10FD7WRCzpLD0pcQ=;
	h=To:Subject:From:Date:From;
	b=dyfJc+cEB91bvGEZjOXfILgkms95R+wmOAFWcr45R3QosHvujA2mE9iubMw0BWK+B
	 CpvO+UKGEnNzvL4wXqQFE6EwJgW8IR3s0g+bvY9CWY5l3E17gxoKaYQGl+QyQiX169
	 mGGucUySPl9xhCjenGAuRHXnEwEiTY8ONYpoJY6HhCg2RXPEZVGZBoQjz26uZHJ2Q1
	 I1qIqKotkUGVIPEnUPuwk4z8F/ykMkvEpZjTZyTAgDIwOmhNHExTjToPdoCy2jTB6B
	 i4NIFRIok54WJNHT7Mz8ZwU2se8nDUOzGkT+gUz8L0Ldyr4GzQNZS1jJE+Zf5GLiS+
	 5Sym7VqiMIp4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92507CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929959359.2923.14749378598956741900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5482c4e095b684917d0c684bf80f7bd524d5c46a96581b515453a58bd72fec4e
Date: Wed, 01 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759299593
