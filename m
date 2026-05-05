Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BF348CFC
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777949854; cv=none; b=EBQPjVZ0KzojXD6abesinEB4s+aoHTRfHK6yamC+Jzo3s73gBzwlxqMkEWP85xGQTLDxV7RbKhQxPE1TA4NodexaaUbM5netyIccM36YVaHLXbLQV9RcVXECH0y/sX3ZmYcvSq/56Jjl1pI5CSQaDeUmMIHcqrVJVNAXxhsL7fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777949854; c=relaxed/simple;
	bh=PL0O6dJRpeBBBsLuAEu6j2a0iH49+J0bSRpb5j6PHYM=;
	h=To:Subject:From:Message-Id:Date; b=Om28kYgmd6oY+IZqnzUgHETeBlZbOoJ4pD6luPmKDXAISD8+f7tf+02S+/FduuUpK76iB6DUZ25xCT+hBXdppAYGzYE+CcE0FX7x5peJDAlGcjhucRcnmHSHBk/g0A06Gx6t/pCMNo56w/qLjFA3bwivPMGu2q0rcUpzjZOknDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuQGkgJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuQGkgJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5F3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777949853;
	bh=PL0O6dJRpeBBBsLuAEu6j2a0iH49+J0bSRpb5j6PHYM=;
	h=To:Subject:From:Date:From;
	b=tuQGkgJJgTU9HQJ3jEqnzuNmibP9IgnVD7YCcDjY2bqDwF40ZyXQKBCPrjPIygYVp
	 cOzGJMwoZJNExT5ib1vD4qlNfkI1PzRgdyI2fEa8zZagPg40Bgd0F+eBS4cNZbE33P
	 pORf4MSWhuulVK3K7W9AxaSTKt5U3QnpME7AKjl0TR5fDteIldvO+Q8JCHQ+Ux+qUs
	 mGJ7neJ8KvBZLEYqWwsqNMufjHMfDT6PTReHlekdW0yboBwrL/9yxy2WIKuN79Hb1e
	 fznbN+vy6hrnRdEzVJ+SJlrTZBsfwKPJLqNp9zqaFB1OVMYVEgGdJiDeaaYK7xRdrA
	 iQuQIxJSrmTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06EDFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794985368.7688.18207307154814131757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9cfa6ef18e037dca8bc79d99d1711b8cb4a3273ad3d2ffc3baba707e125629
Date: Tue, 05 May 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777949853
