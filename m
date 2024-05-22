Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497C72374C
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 15:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716391403; cv=none; b=b+/nVtco6FlfeVmJMzzTFSrnZgEabXmx6BqfXCNHnDKgp9/NgDfYpLlZkt7VYAhrIOVjukoKuaQpR38BosODlrEl+sP57tNzDhrXUZG4qlecVBhdGQAFhztoQAxpsknzN62T3hp7u7jldZE148ZuwNI2eJm2Y+otPKJfDk+6oMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716391403; c=relaxed/simple;
	bh=oj2jnuSMKZgxmVkiB9D9iklZj4A0itqxKO2uvW8fIkY=;
	h=To:Subject:From:Message-Id:Date; b=LrxW/cHpouEcjE7kDg9iD3t6eLGd0Sfg8/NdoDZMzhZWI0M0tA7BHP8VXC/jLz73FhiUZS+6bO/nVJLfFQw5c4ycuE4SlTY6yWf64phBLqU6nimZK0oeRfd5OUaP8CmpriY5kh8k7t0ZPXUexfGfJgsYYKWs5vLsBJjRTgrihhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jp/r3MgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jp/r3MgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE78DC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 15:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716391402;
	bh=oj2jnuSMKZgxmVkiB9D9iklZj4A0itqxKO2uvW8fIkY=;
	h=To:Subject:From:Date:From;
	b=Jp/r3MgEvsY6aqJZ+DFYH4o1Yt2w5+1ZAfsgNYx48iAPAj9RZn47oKxoasIL0fEZk
	 jw+NIAWG4AJog36UIs4KDcZJu0wXOIdVb8E7Duycixdib1qehJsulKS/ptzJuuMf66
	 AWYLNgt+8TAZCdk5glfY3wJSssLrMxA95Ald6WVp7MF8NnhzJsKGb1QO/uGk/Q8oon
	 gBVaSWhnhhIqJyb+dQpk2n9hE+9Bl3SUaJQxdWds+ybzNA0GyNTOX+Zxnnd9HRMR04
	 NmlP+9EdRbUYHrcZZDpb3Zv/Wev8w4JRuyphZQGbFdY0hKp6xg4noJ+o5lFjIKcPH7
	 FZ3JBH50rRcpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC497C25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 15:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639140276.3799.6549414807891297333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299111e76c9f18f69c0833863d4f1c00d2492b9a0aeed9c4e791e07957600174
Date: Wed, 22 May 2024 15:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716391402
