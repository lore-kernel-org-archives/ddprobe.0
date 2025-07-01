Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135301F4285
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751347794; cv=none; b=IRYHCRBb5E1ZYmqRUsiUn8LkpDAZHtWoWFExXjvXGhqe1oiS6m/jTl3AT3DmwRlZd/AbFWeXtE0nWeoI3x22m8LU5b2zeRPgpcTDLoLEme4X6JJhgFrWQDYKHD/8q4h0w+TibXdLEYOQHlfPIuavc5DbytWTr4bE4FIMoJqbwuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751347794; c=relaxed/simple;
	bh=k4Y5BT9T2rSYt/XDS/SsjNfiPKUykRexNzB1xl1Xxh4=;
	h=To:Subject:From:Message-Id:Date; b=a0EngvbUsSHLlulrBOZq9DrTPGDUQmEq4dTPRBSJIfKYKb+CRoBYHTH6dPDlLOePwZ8iKg1hdCPhkfxA4zwcnxrVilDek5HM9r4AJrQo+LFWuOF9UWne25UnqDuS6KJSpGpyyVquyAYLK9R4DQ0PpINiYL3dBXp1qetKYZOQGHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbSTc65Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbSTc65Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE27C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751347793;
	bh=k4Y5BT9T2rSYt/XDS/SsjNfiPKUykRexNzB1xl1Xxh4=;
	h=To:Subject:From:Date:From;
	b=BbSTc65QKKxK3zbtP35aA4Blm5tpfVHesZ+avVaTgnD9/ZLLCxUp3emLHJue2eKrH
	 Pbqh9RfXOjzfYfCFZfX8R7729J+N/8FPjMbw+KEu/kSHVZQQhRAY3VXh3bMmtMeyQO
	 lbvxprO/4Z6J6xFIlUoGdXKBUPu/bhXVAu22HGhwpET35trGEzqJfnxJVQkx2jG2Ko
	 dUq0PjcRMUeodncosCwhLuWizp1Kuu0JTlhI1ElW8sL2u/xODwXI1qa7oZTEq4sy/V
	 KOYvdzk+zsbzCpU8kdBtGWCrn/wsFFGhAxcM/lLvcc8emklZ5to2vMgQocockQUYXu
	 9nwZi2mCDdPiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1A6C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134779357.12782.2326856237972738025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a6098a43534da0bafff3e09d687aebe213c99b9166b7bf06e754fa76175904
Date: Tue, 01 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751347793
