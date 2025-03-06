Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488CB20B20A
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741254534; cv=none; b=f+IIED6unDVCMWJRS/6Te/QQlsd0gKoKGcpxzKeOEJC6dAvpRxfy8JnJpwrGqFNAGo4yHFbBFh6LlR9+Us1OP8Ydxo53gVAy+fcTOMbz8TTqvsNbPMDSfBBmtx2KRYOPYh+pDgXrMt2sLplgFk65L8+cQhGuMPZ/jIt3VSXntuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741254534; c=relaxed/simple;
	bh=l0aIH49bW4MIZs5xgQTiDbvpK3qSOioCQ+0uHnlJ+SU=;
	h=To:Subject:From:Message-Id:Date; b=NBseiR0yP/NgqvswgKDqt605Xvn4M86gEs7HOj+itzg3unJgb9a6LhXCBZCb6aZvkoNplpqxPZtnIutCV2twUv4ZuLmAZxQ9O/99APzwrxDX8kNRSXk22SJ/ovLHcO1uUxH96en5bQPRQYPZF3aZQ73j3vI7aB4q6T+ElCCE5R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMudM6hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMudM6hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7250C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741254533;
	bh=l0aIH49bW4MIZs5xgQTiDbvpK3qSOioCQ+0uHnlJ+SU=;
	h=To:Subject:From:Date:From;
	b=cMudM6hfacSZ4hLr7NTgPkjJl2/+4PRqtoCMKzMXQpZr545pws4TWhHKgPTMJCaEg
	 z+yHQPYoy9AhcKnfp9HEzYWUWZq9aIUthJHLKhPpESYcW7z8ymnJuLgGwIMihj58Or
	 whzt/jPMzho9DAi2CBIuY94vA4xgp1WUswcfFntIXkUTTfkmDn0g7gBjOVblP4Cghj
	 QIygUWQgyGkpy4MeA64evup9ZuibQ40vcQYNCgK5wBIPx/FQPun4rAaHBoL6ARaqN5
	 uMMl4lHdZ2uLDx5uOgQqGLCNtqz6bG3fqBG5cTTKgt7ekydjHtFcjJ26dVcrDNDn9p
	 xPjSJ8SFNhxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A423DC28B22
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125453365.22583.11612682039854440702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0197a952b39fbf7782f572211fa2506499bfab87c786b83dffcb704a8352937e
Date: Thu, 06 Mar 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741254533
