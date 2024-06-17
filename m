Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E1519047C
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718661503; cv=none; b=Vntc8ZK9kNzGNyo0FDmVxiRyH6JhE1x7ljo6kfIF9+ORr7I9Wi/49cU2UJf0KHHsJBLGV3ZCy29QkmswYK9HyH9mDtXHf0DWHjF4DP01NHYd47nusKUSh7hgWWiqTVtjYxFoOaAgP+cae2BKnWxmxeHFBlZbE1WPnRW50vtQ2zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718661503; c=relaxed/simple;
	bh=JRVakqWL4GF8Ml+S/OVIFlHrARThtkVDi3Gzc6IncbQ=;
	h=To:Subject:From:Message-Id:Date; b=ZgrlZmfZFCHcybbwFa1ujoMVjzUAqBAF9F5H/y2Kmjyct4ZKwJQRnOkG9NeO/wMbIMXOmHv40BKieIvpIBUGC8Lg7L4hJLyM86xGI//SMy8UYGsybH4mGzHUJJCxe7sWMi7XZa5Z+atDFXFk1IdnulFcS33gImfWuKBqip1buh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/PxY7FG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/PxY7FG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D475FC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718661502;
	bh=JRVakqWL4GF8Ml+S/OVIFlHrARThtkVDi3Gzc6IncbQ=;
	h=To:Subject:From:Date:From;
	b=m/PxY7FGyagYHBR2Cr/IkMBpJfUPAYD72n4hD8ERyjnRelv7vYQUgccAItFS712IF
	 VgnqoLGq5Ln0xOQ1hD3pgJOLjKi0Rj5xk7xN1LbwLmI6ZtLi0helE/oxfB04uIhaLw
	 STaK/CU3mGmYlvdR8G7EXyCi9iT8k0jbfkiQgTCArBUyrGVdarmyfzzVWtUOsSAAOf
	 m334Qe/A2ZUFBksvAi9mQ5+aNsu8DF50OEQkf9KQ9Aq6RurxoWSZOqpYJXVXVbP9BC
	 KKjUH7x87FDm2K+kAeIPO6o1QgGYWXdUkanq70zagZWGExek8/5aB9XwmKrjYPQvnM
	 QNEjYiQz9T6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD99EC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866150276.5287.2274434409976089049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d4e4298574869175cf38c34e756f80d20a69e8cd519a568946e1c8b72e5ea3
Date: Mon, 17 Jun 2024 21:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718661502
