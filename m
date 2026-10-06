Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5649B367F58
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791277234; cv=none; b=bru+WK4eRA9Y7CHVC802szLSdB2KZmaIs1bZjLrPbsVN6YKVrxMGrl7jxRagex0cQpxLNACdVmauKlUQt1pqESlvh0vtdSujgXKHqbifEV2WUwRUuc8ylkwl1WUAX+Sur4feRX3DUYn5lasvJKnvVPgVnq5MaKBohE1MbdWundE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791277234; c=relaxed/simple;
	bh=21ZPa1kangBtAWsIn/IAzBSZTbv0v2wYPQ3gM1uxv54=;
	h=To:Subject:From:Message-Id:Date; b=QjPjymhfUkecQGz3JzvR791gL813ytrdfHASpkhtvj2mGKSprz2pjWGpmhihtWVIAomwTBaEP634eFgVm+WGRPt0oQxorvNsSEkxLr6Ez4eA1pk4MxyscPRM0Rzseor3uD6SFZDnQLaEhiCKWwRR/P8JxHZ3t3U15YB58sLD2Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0sv8V3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0sv8V3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71CAC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791277233;
	bh=21ZPa1kangBtAWsIn/IAzBSZTbv0v2wYPQ3gM1uxv54=;
	h=To:Subject:From:Date:From;
	b=i0sv8V3REjAnHp/x4e7YzDwnSZY1ruOT4Dv0gYwvedUrN6EsT+qmgCqOiiPzK7qhV
	 7jYDhLKiXf8SpaCu3h2we6jwiSOI0PBmNC1z+0v6QjVjI97PDirx5pzi18Qu+hneN3
	 AnxpQt3lxzYy2wQMr3PCBmY7P99WYGrxZMoJ9jsXaC7z76Xex5zjWW7XgSFK0jJmrQ
	 s4mv2d2qxKzYPHJzWMmtiXmiR6IYoRknLTFUfsQZQM17Ysb9e21UcaavTseLbbEtsU
	 KjZ5o+QCd4mX4r5EJlWQm3WicE3NdeTxOZOXm7B90fHi91Qd3h8JXNGnrdxgmlscOo
	 6g2FxkzrsWixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF947CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127723369.2297.11887193621345571055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efac82ba5e3e91a1ec58a857fe30f2b8f5f60a43f983b607f1ba62814ef3e33
Date: Tue, 06 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791277233
