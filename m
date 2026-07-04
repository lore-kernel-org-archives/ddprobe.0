Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889AA7260D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783124314; cv=none; b=ZLpcY0MuZe4S20nBWR0gfT516nvfEe4MIU+vyL/J6V8ZUh1hNPNRNhXI66j/0RC4kk1usXJk8TsQL8/luDl8Ln4F9o+RYbCIrnW2zAbT0SocLQfknihmJQ35azlpIQzEFALvG2Pyr4AfKTxj7l7Th5rcTgOOGWadNZQxYt8TCT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783124314; c=relaxed/simple;
	bh=eVV0TI1MhHbecOnmduEoyC26O38gWmMQblMyHhg8npM=;
	h=To:Subject:From:Message-Id:Date; b=dcK8HYihADWlF+EWb6wLEinf+QhlyJ/GmZjqRMVD9Ihz8MasOf+GOaKsk0p0DsnXEHRvsjjRNw0B17sDSmwQhpppkrcaF78d2yp5/UVcnSX7aOOiIkpZW4Ii2MqwlJqCtYwzyLCeFlOQ/0K+77QxPFbXsoc0iUJ3IPYUo0GSrRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtiVsZi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtiVsZi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1529C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783124313;
	bh=eVV0TI1MhHbecOnmduEoyC26O38gWmMQblMyHhg8npM=;
	h=To:Subject:From:Date:From;
	b=KtiVsZi1RCFfDm0y7uWUYyrLY1ilTAdOTwTMKZ4bQbXuSZ4+UK7KjSCAqH+njdNte
	 0Tb0VnjE7StB0/Q/LuPLBuWPBBML2VBU8sJzZNyrNnP79O/F/GS8btuZtn3IxuaAZ0
	 vj5jDSyyQbCWrEYVCL0Qo1J2NarxWwGO/ZRFKTB8qYTDDBJWm9RqmgeSWVcs+YudLm
	 LjSazCX6/24gAq+fyH18/B/9BO17FzWl8E9K/kFk/2jr4n+Q0GhkRy23WoUQdAVnSp
	 CyjTe/tMvOgyi3su4/PEHKISU/TBk4Fj32GJkJgoXzRQBxL0DSslsoW0LzNfIRp1sH
	 jxmDXnqDE5ccQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE3BC43602
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312431368.6126.1034446176742567324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abd014c7b4e266ea22cebaa899125714d620dc572442e88204c58806c8d49b2
Date: Sat, 04 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783124313
