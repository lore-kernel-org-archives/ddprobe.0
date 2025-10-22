Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF1F350A1D
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761097194; cv=none; b=Hxt9QnoiW5QBsoyk5IBbCC2fTRrfCzt7cn/GnKR2FC8gYTFO4OsL0RT7q+RS8GljKgHFGkPvYlo9hKmdXwKp4rw+fG6YNIjQjpNPbdk/Sd1I37NJ9L7gjwZt2tRaBRxFnKsSiYQK5FYNlDhTS/Y4YJUupw+xKuQFGN1cYJ8o2PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761097194; c=relaxed/simple;
	bh=TewZ5sr9HqM22PGSIP6LOkXGt4O7/6IrfVtumPCVKsI=;
	h=To:Subject:From:Message-Id:Date; b=iuaBCihwZs3czE4rKYp1s5ev5uwtrALwJQZAJXkz4yYzi/QNi4w3rqvBUM3/zbs9uFOPK+tsoT/VYYiq3iuYpcO3SKBLHXrqKZRafSfdSazSeB9Bl3QKrsdr31vQzrQEd4aDtbUraOFOBS6vtoH2uFEcIlYF5azrzb8zDvra4uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCelaMQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCelaMQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0854C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761097193;
	bh=TewZ5sr9HqM22PGSIP6LOkXGt4O7/6IrfVtumPCVKsI=;
	h=To:Subject:From:Date:From;
	b=bCelaMQAQhNwClsoH59g2RS+SceK3+0g6zZpAJSs9LGngF7J8Qq82Nov5cYmWWlzQ
	 fKkpFgyMAcq7cRovsiKw+RDugoEfBrM1zk2WBf78OP3n0yrrn8TIWye2CSbigYM3BQ
	 UzYGXTpaUdy/l0VQJRZJM7VbySJZtSxI13fPuDlaRbA8i89zVPJmdhg8Pt40oShp3N
	 0f5EvMLXjAr4vefYY8nmOs5vuQXkGQeffAymglEaUDPtH0f+XOOLWLAg+m2I6jgCIM
	 5N+2XIE7nPQslRDiuA8dELe72khfdyvDDW9kgyobCNj9V/NxHadn73GveieGqT4+kK
	 CHc0NKCdwYfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C97CCD1A5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109719360.24338.9373837344986991299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c197f9a177cf6084021d5410796872c54823b493b127d4643cf4c2786c5b8316
Date: Wed, 22 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761097193
