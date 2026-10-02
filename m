Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F95847F786
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790983834; cv=none; b=AOzgc6DzM2knO0CsnzE9IABHHppYphLQmCZ4ALYl6fnTZqQ0dpTsoWjQ2skIGlXvXTJDsclvvyfUNcaTP3MdhBXwE4Ai2nAmw2y3+ULD6HvmNq87pPhXIcMX61R43gR72EhZ8LdXBMMcyyPVVAad0QI1mcsQ+LsCZjwyDgu86fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790983834; c=relaxed/simple;
	bh=OY/yXpJVNN7uARz6uTKzj5p3PP5v/2GsjtsrKWLQQ0I=;
	h=To:Subject:From:Message-Id:Date; b=oBZVc3g6dTUHJM5dEjfTgOkISwHCHsXYrzFZ5jj7q2qdXD/WmUENvbf8vSNfse30P4gAMRQMXug+ko6ShC3SsziPfrlnI01nC1yKSXlL1Y56qhIeJZt2jREEa9FUqnE8GYWgaPYImlKLiv1mtq1dLkYRbakiJRdzuZLMMZ5351A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIWKJjki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIWKJjki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC613C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790983833;
	bh=OY/yXpJVNN7uARz6uTKzj5p3PP5v/2GsjtsrKWLQQ0I=;
	h=To:Subject:From:Date:From;
	b=RIWKJjkiRT9LgqaAMMMvXxrmXmqTUG8J9mBv4vE6ERvs2Tv1ttHa27KgKw9FQeRiC
	 SNOZwg7TFKIK07iQ/T9gw6haviS7OnU3l7JZMaWNAsZlFwyVko7fVOrPc1WTbdXUeN
	 y/nKU0SIbHGFDZYRkMTS1bQPcGlIy+PwC1AIU3mCdjLlbkDLW0bgQ9Io/FsOGVgQ3l
	 cvyu6xiKHuYNlL39EXHFW5KJcDmM2kXF2gzfdRzb6dOqeUw1pEcsn+CUZuwVb6G7Fv
	 BsbOKaOKcJn86bHiW8UuPApC/Dd5E2AthWh3UqMmIV2aJ1Gyo16WyQT4T89862Oubc
	 B/mh2gEMaPCTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA247CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098383368.29794.18346675809182846556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c5473985a705332c261f86dccdf1dd23067a1f91e4544806607155586d50f2
Date: Fri, 02 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790983833
