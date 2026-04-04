Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4B02628D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775331334; cv=none; b=TTnUoKq5NSW7oQJs6CbuOvVqx0K83rOAhCPFDvegZMTJpWJwmmoZkBqJbcPAWsqk/1JgCOyHXmTicEKHaeCP7NxSi4qWJBBlyD54GAwe0ekomNlUmoG6YTmY8XpYaYZiQDIysogN38HHTml58YaHyb3bB83g81L/05T2xuBsYXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775331334; c=relaxed/simple;
	bh=gH9KhbBPAgQcaAfxh6BWhE64V9WylAmpXPP81dT8j4c=;
	h=To:Subject:From:Message-Id:Date; b=k5S/RXmSqZ0yg2coH+KeHXvWJ8ArPiUe10mv5Uj5Wi5QOOvRzxk0p3AzEZ2/6W1sA06k6I1J9QI7lu7CniPSvanklsIzsBjGufSiDzZqFEVfd8pIyYTn9rk2yYFLo82wvd3HIV3aGMyILRu+I7/7TsFjC10qllq0ahxSkX2twAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xn2uoyqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xn2uoyqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF275C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775331333;
	bh=gH9KhbBPAgQcaAfxh6BWhE64V9WylAmpXPP81dT8j4c=;
	h=To:Subject:From:Date:From;
	b=Xn2uoyqhak8NWcRf20iUp0I1iQpWv8pvi+cXCkXfURHVUr5PvAh0AFfaM3AQa4K+c
	 vfyyzJmfLcVxKEcCmP55j1W4CANwwzvKTwdrfpwHY/pgSCS0CWU7uUW1/drsre4nwR
	 pp0uhrNYRVwWk131X0nG5XdaEkDMl9KOmXcusIjuCg4ghyakZDW87ugvNsJIHX/wt7
	 2FCanEt5CukDI6/fouKMBIROQBTMIcRrpn467PSMeMOvz3kYGvW8xrex/La0PYazUp
	 iD2zFNWr82Ina0oKbGMjq2l1NhU2Z4eRhRtKUsJDAZa5rl5YrxQpr9yjHbDBY4kt2H
	 NYmsg58L2mgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC7EE63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533133368.24542.16915207721741318696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f784db819fcf7e5a80465fc7274c5a9cf0f5a006dcff8c3b37fdbb9e99888cb7
Date: Sat, 04 Apr 2026 19:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775331333
