Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EED021500E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728431754; cv=none; b=pjXkSYctspO3HG94O3tYZneN1a8Oo6LV7mwLysMmLdt5IEJQA7aLzIFafAD0l1MIf8/9lSDRWja6gJgmrW3L9EpzCe/HWL/G2+doEAAAjugF/e2uYFSimoi458/O0iswoLtZm+9sAX3aObxalTyb2Au051Bym6iq156Jlads6GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728431754; c=relaxed/simple;
	bh=D++RBhHd2qJ0V10ClAdMUSWSK3rd5oq2243iKTrGiX4=;
	h=To:Subject:From:Message-Id:Date; b=EXuUv/0a2UwpGeWziHYBugm467Li5keDpM2cxqlH17eckFK/4fOA2sZ8e+k0SBJWoY2hLqA+Vx2nRQlEM56OZ8F+3nOicq09mePkusJO+rOJpT4XMqEUyPghgbv5hAHFwD7NCvnO15+ToHzXNufSWSLYUDfG1W35nXD1gQXNtMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAwZrF/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAwZrF/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8254C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728431753;
	bh=D++RBhHd2qJ0V10ClAdMUSWSK3rd5oq2243iKTrGiX4=;
	h=To:Subject:From:Date:From;
	b=dAwZrF/8FVAk5y304cWgR5RhrLFIVZKkW34w6YoCIjYtImN/o3y3irVi4C7OjAaMT
	 Yb7zONeWB9JeJ7MDR9IR04dsTCF+oQLXX6KSEN331jL1N+u69fIZ7rEo7FYdEzaDIr
	 IUL6eW4DMMVrqYHYhNInF+Uy1rnZ8uEiqM+LdJ1JdWS0kiAK3FMqyTtUbK4x4rDCck
	 6ouJJ4Srrq/jjSRSTw6E34LbzLKHnVq4KqlWcFt19LDyPl4K759tkKlrMMoPQA1EKR
	 KHF5G4+9tr1E0h6Pd0yyxMIvVGPOBooSCxR9vKKsX7cg+XS/39doyrOgiSmFwLXuOp
	 Pg6ccaVNzQScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9592BCF042B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843175357.22889.2149964762545701446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1be6f1ccb92510a119e159e8c70959eb7cb819419887260ac4f872a1b59ed1
Date: Tue, 08 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728431753
