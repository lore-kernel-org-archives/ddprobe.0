Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15673BBC0
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 04:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713242963; cv=none; b=b/YenjDoC0o+cYFYXGQJwHWSmjBa+b0+qNNMbONMOCdX1a4v1GBLIQ16vXFKpHf640n4GK1tXN1sPQBu1QOe1/a2UbSUNjqsGrLZO9IgP7UQuI60WhEf3gOi6VziVXrQkgqEKQSLmfAf76BCJ7EelrSyCHZmP50TVtDeRBfswfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713242963; c=relaxed/simple;
	bh=RoMcb5wok1ZeOewYDOSRkDPs94XP9Q3i22lSrsimvPg=;
	h=To:Subject:From:Message-Id:Date; b=ffjAo78ZKtP0HjLWgeccVpOiRbJYN04uv56M1JQLB70tgG3hnwfBLjEHCPY7IIvWt/cTXSeDrF8XTbdJZZb4u0qe/yjiE+JN+JAk4oiEksbayXYmuW9P3FaQ46CxtYIDOg4DNuceZZqTVto31FTB51Hbdn3QYIAsXiR6oYH45qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXwQSU4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXwQSU4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8E0C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713242962;
	bh=RoMcb5wok1ZeOewYDOSRkDPs94XP9Q3i22lSrsimvPg=;
	h=To:Subject:From:Date:From;
	b=oXwQSU4CsF7GMLN7gRuw/u+36KCT1dgds95k5AqH8ioM7wgSSxPRjWQwa2xoX7ee+
	 L9HO6rPB9bb6+ieEajWwaFk3VaNov5VQcV1T7dzxbEhE3+/T2bV7EdJl9116IRA5OI
	 XPwGeNMuZP+35U3pNXjeAuBqE0/tdO7VUa1L4IhI3MyOGoBb3pX23C4Vg4gqAGyS6R
	 A1vA5NQubJhH8FIphQ9RDb72T4Irb1evH9AgvbKBc7uB2kgIE1wfpQ2UE41QGVCNO8
	 XwLkL0L3oczFWFP/uIdZCLP+bl4mRbluHJlNWFitfJgWUHL4FoWdsc9bjmb1vRPqUq
	 RpKkZVVZSMmlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF398C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171324296277.31832.3708044005465376686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804f85d9dccc9567af42736178810fd49081821b17c7695683255bfb526b0ee5
Date: Tue, 16 Apr 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713242962
