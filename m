Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E91CCEFC
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729632954; cv=none; b=O6HQlxCbCxz/caA+hmWp9E4pGFzl7BblVvC9OUfMEfQ0x6ZmDMPc3F+t+uoVFQhNtKRSoiD5thVvsdftBlzAnyDRh4XWXKYt9qHkXTgXkA1TZT6GNk+toYAkekFaVJyi0YdFTYHi3huYLVnlci/MEC4txQCxbNB2mbcXDBvDlbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729632954; c=relaxed/simple;
	bh=AGtwp0GaP1PAJ0ISLRWZrnQSA4CEfr7111t2wcPzGSU=;
	h=To:Subject:From:Message-Id:Date; b=Fn3war7El7uyu9NRIxcFwFAmU8oVrB8dHInw/9uaH2pJLOtmVbUvbwD3Lrz/EJVRzZo3bI5LSkAtRYjO8WJb2lKY561BcUk4hTP8aDyb1FObczo23ETBJ0towfGgFtdmXsdB3AKufZwsmcBchrloCPqM2rdF3FpyB2udxdqb8B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KS/ZqJ/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KS/ZqJ/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3690C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729632953;
	bh=AGtwp0GaP1PAJ0ISLRWZrnQSA4CEfr7111t2wcPzGSU=;
	h=To:Subject:From:Date:From;
	b=KS/ZqJ/yahsfWpyaKB/lTAsNc6Z8tM5Ex+bLU5H/9WrXFaa/obz8Z8wDZjQsqQVLG
	 Sa5PDfm7c/rlnldtyPfM5JiN+JBUSfSTbUarR5CbdjVn2smVWQnhg7J+DtlurQdm0O
	 qM1wBrBIGQn0x9RusT3oZE3N3zjk2pC+4fbr0k54LTfrnieN8i9bhryY5XjSh6dAgu
	 ydfwyIy4eZ2/gtKIBdspg4Z7LcS0AQDWT77/aB6fU5GHekChVNSsJ7yiRwjd91d8Zn
	 VOCQcbpJWgxpywEHu1gQ0MhpU+Jjz2rs0yDxEekc1HPU17zlCLYozpE64N4Vx4bYsh
	 rM68x/62kFuwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A541CDD0EA
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172963295362.26497.6513493979231356843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f7f8ec0c15a6a682899cf7e4b307a32c969c7a8155889f765edafa06393f1a
Date: Tue, 22 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729632953
