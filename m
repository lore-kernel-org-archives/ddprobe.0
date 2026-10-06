Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8493AA510
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791287434; cv=none; b=uxeZ4QIGJY4CmtSw92N1qVeS6q0HfkPUS89ssvXs2ni5x8Q0aBgYIp7RkZdlf2QsiNCt68XrsSmPvPALGrxsPFRU6hbYUlSa7cscDhI67gypBEG0mgM2LyvZ0rvSfxGcyXu03M/Sqs/AW5N4pq7Qgjr8J7dVwJcY8ujE09gvPyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791287434; c=relaxed/simple;
	bh=nbBo6ORF92M/44tRWCHWSz0pU3vtSEih0xR66zSoblg=;
	h=To:Subject:From:Message-Id:Date; b=PX5UDxnO6jkEgl5LpPAlBZXfDh08ccfZOoxXIGmWi5ZdlsKmhYlqNUOintgmgEoo+CPtoAn8lkXhsvH7WnUMdOUKW3uXtbt9ZVUJf1mPk9PNJurAlDY4glcuaGqXzQNPoLXaJFtcw4AWTwPiaKlKie7tWNiOmdWHWHwBm/CX/tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+dur1Gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+dur1Gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D555BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791287433;
	bh=nbBo6ORF92M/44tRWCHWSz0pU3vtSEih0xR66zSoblg=;
	h=To:Subject:From:Date:From;
	b=K+dur1GjFlu9/HED9uL0rbaILlrSJnajjvh15nOUrwNT7e/Z5FMhIaqL+ykTMSs5h
	 CHp26lZhSXpBpgFaWCu8FkvAhhcruQAgNexfPvnAKT1ozbzMk5o9B6hf9FA+6FZExT
	 h3WdQkf8ekF7zrDezGQpzW4ugEZee8aZPCoPUm3ZVWMk0ptuLcg7JYOXyzAKwy3gkW
	 Vqyw9uKZEYAiji0o1hgcCf8nKS9dsTbhhSaISakx1esR4PFr6At0kEolo4v0MZQy1g
	 RRLqyI4RDc/f03x6SnCgkDThq5S3c5OnH3pIVpnVVhy9LC4GdFxNol+kFIYWZv4tFL
	 747USKB/4XlVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD267CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128743368.3443.11567372841169684004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e04af4dd8965d23dc7bb618b486cb2aef6555c3b803db0756e6b32f3182402a
Date: Tue, 06 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791287433
