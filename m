Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198493115A2
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764069774; cv=none; b=bxhDN2nYirojX+Gzy0vL+W2Nwo02ttXZaIbZf9FpZL25Kn2a+cSdqg5FfgFEV2wQGUrTuwDNfJiP4qmBRAQVN2o5womUaQZo/rlCBg7Dbs1QU2Vuc8zNXWS1dg4Yejj5lMB3qh7wymSlfWBmMFIe56JyqvXmV9nH6D2H4G4zaMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764069774; c=relaxed/simple;
	bh=7GAl080OphbWlWJ5gXf1XykpCHKqwTnlUXxldvh/VOA=;
	h=To:Subject:From:Message-Id:Date; b=Sow1qj7LkVkXrimbgluuatHnMwZnXkTfIqAlW3Z4T0LHpXQJulXoGkbWoK2En6XiptCsoqch5lWkakkXOTimc0sPqrceCjk68K9q4o/H6/NZ7R62AMJsh5tRdWhEnSDpmEPOp63v9Oo3Ez8OFQ7cIJCs6o2Bohv36o7WQzajzWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8e9GHoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8e9GHoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8636C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764069773;
	bh=7GAl080OphbWlWJ5gXf1XykpCHKqwTnlUXxldvh/VOA=;
	h=To:Subject:From:Date:From;
	b=u8e9GHoDlQ6SPcn25Zkd7Mkd2GYEjnb97bzdYeusGKJeitCqyvMFwGidRXm9Q0GPm
	 iUxJo1SWDetkCYL+3ksA3pOQVDFQke6vOuAutZJITDjbUizVrkHwV+ohM0lxoj/980
	 o/Al1WGzxNKBZTXrTc1vgyXh/i2pNy4bggtr0Jr9vukFjzrLzb4EJpT7qq8fyBqfeH
	 YgUn9jxgnckU/07Y+LwHeBYJhhGN9W1rN78JEw2oGGwAZTFSrFp7P4p0522X8YOAxa
	 JQAYHqv4P91JYKm6UdK6tnmXNuhks+Cg5uX4W+5s2UUEgiRcrzNUUUT0kHGD6uRHs0
	 JANpZeZMliCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C7D0E6C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406977359.15335.16228235313487272134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792fe97d1da924304b7547e92bd8b978695ed50daf197309c76fd52448812ffb
Date: Tue, 25 Nov 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764069773
