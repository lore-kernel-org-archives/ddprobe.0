Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA66F342CBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773442493; cv=none; b=SPKmsetpwYH4Va6uKp/CfemkdehzDNIGs66AlL7Oz8P+P6bnMZF0jncRfaR3UpXaSMVkQnlqtrU3QgWnhUIanS+lFLWuEIQWtxw4e80QhKSbwjkjOTBW3oT2zPfzbVlud2pruNobk+XMYdqLkPGRdyr6drNQ0KIhaswcm4OVymg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773442493; c=relaxed/simple;
	bh=xRUQBQRvlrNXrrXb66BWcJTianMnmMCBRcFfiC4ab8A=;
	h=To:Subject:From:Message-Id:Date; b=WqOzU4tn7GPZH3VJ+n6rQbUhdj7Qp2ykD3trHrDOu5fRNeF38qf0GVI05GTh3i/cYt44IIqCjQz3LEtMWYWXHconTi7Y/wPk0+3xEidoYHhuJJXqSTlgMRqlyX89ve9/EyRz3msYtsJ3mKymTqQzst9D8SD0OgLtC8nIF8dphOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9cdjmUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9cdjmUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FDC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773442493;
	bh=xRUQBQRvlrNXrrXb66BWcJTianMnmMCBRcFfiC4ab8A=;
	h=To:Subject:From:Date:From;
	b=R9cdjmUxgrohAoFUVAN9l8vS0+cDLJ/El8JgqDIPYq50h3VHCAEQ0+SH7WR8rZ8YG
	 FKweFLijQ6xRDrokDMjKbpFdlHT7m4TpvTgiWoeTBY8JdOF4gAsmpOLHyOvt3/Blp+
	 oVN2RRlAebK76lBVHjqDu8p/IxZDuo0YKwixx4I/reFNA5ooY1XdwkLag93lDChFWO
	 YpOGRyEW2Exe3Y98EPAGFZYgst9JwULRawSi4aF4KCIM7rh+jKBg7TiYniuMG2RRfA
	 g9ISV5C+U7HW13diAqD4enMlmIg+RlfFnD8B/7cPCigBBoTjfxOT7SfgkIqeRDpYUN
	 Qabv4N7p8UNIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91879107BCE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344249358.21268.14804374853611659824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf91db5ae12c1168ffd08380fbea40b4a937a416dd5408a010d3abfb48999602
Date: Fri, 13 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773442493
