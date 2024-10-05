Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1DB8F70
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728146753; cv=none; b=RE8hAbtpgSaU96zNusDAfhJMZ7YyNbYoiTDqBvMe1GI6tpscT/Vaoadsribq63+St2dvmRIYBPxL6zQ4YR9CF6qJv4pszwz/KQTqwnylRmu7IImdyJCl6vPvrxObPHFQgr1bLfTnUDJ9GCFi4akqlYHmgHzvQGOgTPYSSLwzk94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728146753; c=relaxed/simple;
	bh=CJSR+AvPWz/CSbsDw2+8OoFDzjV14N/MbqsOale3Vbw=;
	h=To:Subject:From:Message-Id:Date; b=SjZygdzJFpOhLkHYH1C3QgqMWdgcAtFRJbGR7Dsl3ckCxzWR+nCkN844qeqgyLKs9GEjygkVOpW0mhGvr4eVoWfXXjNn/sv7JOO6My1zwTgnxlrCircLpz0TKlnTFrhK7JOKUvwVdIAWYclB8ndEOGk52te/7sV4cFWqIdUszJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDcj9mtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDcj9mtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19F6C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728146753;
	bh=CJSR+AvPWz/CSbsDw2+8OoFDzjV14N/MbqsOale3Vbw=;
	h=To:Subject:From:Date:From;
	b=VDcj9mtvjFwNAtLZG7E2G7EfC9/d9kZxOpM4wkw/QV589jfmd12ue9H6A6oCsCza/
	 IH0XZROBcxVlVJD1kipKPXzxPXp+nAsoSewpQizdPK3lmmdn74TeZLMnPzYZT08cLV
	 MqBqD6lG0m5dm19J09Va5xxCiQm5y+DFN+X5PyhWLeu5WXpIv9FZHwCz+5834ELc9X
	 WyBbHznBIIEqCkgRJ3GEXWA9jlKEFvjyizz4sS3HaQ9CN+qtv09RJpdQZafALg6gBJ
	 mASK4H6QFZitZoaZMFBVxK+nggrsq+cJ69GmQA+ro62N3G92FQBbg0VT/ZdYAEr22W
	 RNO/ECKwc6pQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9975ACFA754
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814675361.2973.9280993661205166613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516c808149291360e76944b47c6c96dea5d09e218cf3237f0490fe06d92ffae9
Date: Sat, 05 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728146753
