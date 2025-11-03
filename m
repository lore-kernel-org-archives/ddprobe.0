Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED3930DD31
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762213794; cv=none; b=nlg6P1P20BqcHaOSa4kletU66Nkr7VjYjyuxaIEKtGoemwa6P0FvRg+ohEYmhriwOZYhk1JujaccEFI7/yUAAASx4FXB6+Kt4aP08V+mJrVuRwK1nLnpwAnNz3UkXKahlAJ5a5+XT3TyCiVgYG0qq25aC1gKvTTNu8ZwAFJtrdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762213794; c=relaxed/simple;
	bh=RztPpFP/0GCg8/0SEdevckQTarSmiX7TH6Fb0LVmmD8=;
	h=To:Subject:From:Message-Id:Date; b=B/3eE2Vh6+lmqCr31913UOIVdz9cB6P8p3+79KFGiC59FBK8UBZnPDdYYBM5+/ESac6lwazyia2INiGiwlv9sVp77/o/VFIZMAhvtUHorfvKIhCgta3nTaTCBYRBbjWVIErl4sqq1pngyzGJT3oCAnFp7A+Wb34MM5KPp2RAHG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhREbKH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhREbKH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED185C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762213794;
	bh=RztPpFP/0GCg8/0SEdevckQTarSmiX7TH6Fb0LVmmD8=;
	h=To:Subject:From:Date:From;
	b=MhREbKH35g5zCAvrCNXKoMOZ8r7dY7M3lEPOMDULehYR0lctj8ItwyI83AVc+nera
	 SCEldp1GRej3NSXIIlPuJAkp/H2yNUFINQsomDLnZ+2fn3L10qWtEeXiUdUkuHZ7p1
	 IwHv9aYBYLYz894d2fkDbnOq1skx+CK7Z9zMb/2M1ZenJSrERXQjLWPoQQJIBGmSAr
	 a4d2+I7owU/CPyTNu4oLxANk8YrZdph2RSQgOTQO6c6c/JkamHY2L4EoDeY3biUmp3
	 eMW+E75VWsPqhJJ59tv0dFD3ybv/Bur1kdBeWuuOjt+TrpFtJS4IhxycXE6oyrLILk
	 wq3XCH74kreog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6682CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221379378.4639.7521619632204835689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6edf79c87dca57b6c3018087e523863c0bcefc4e9fd1c5ae962809d86197f59
Date: Mon, 03 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762213793
