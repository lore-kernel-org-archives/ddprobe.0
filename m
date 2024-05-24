Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741D329422
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716542603; cv=none; b=f4j73aJn0fXjTKMtUi7lA8ugA8WdOMv3BWTqTBHqJEqpxdyVs1iHbWZK4AE/hDYpW5TkgM7ZOtPw2+6BUSTh8yXWKlPjVv88mjjjOfWVSp61pJvH2ROoO3wNRI4vC0wZ0GF7qqhDEIdFWUnwP6mmbr+MMItHCzrQlgkyTqbUNvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716542603; c=relaxed/simple;
	bh=rEJPKURVndaLCw3piyByvJrWTo2pq5eJQElFgI9jixg=;
	h=To:Subject:From:Message-Id:Date; b=qVsC3YOiE8/p9nJ4KAWijz6PhrhYuH1ISVhQ1oX52qQWHk1CfuPEFLRivN5FYYBWwR+Cq0ZQZ/KLZluP1kybhFsRwkCzHl6FpyJJ6vqiKfebR46Q8YhA1Zk37/eyqD+owWuM2tEsT5AwdXsN26XetwLV5Bi4mo+e2SALdZteu4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFzPlhUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFzPlhUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97ECC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716542602;
	bh=rEJPKURVndaLCw3piyByvJrWTo2pq5eJQElFgI9jixg=;
	h=To:Subject:From:Date:From;
	b=eFzPlhULegJhA9Njeco6ZNjmJYxpd9MM43CNGg2L3umhrN/Rq5k0LrbQxwvQ1EPEx
	 r/8h92wEH8TwKqUlVD7/S5esgEg/X615e167ZiMIaIvs19UwUZbGVb6GcqJZKO5m2L
	 4B7a7BvNsG1Tf7ouSlZbq0Yu7ZOQFBQu5lvISc4bTgMk6rnbx7xKk1Wx+7GOFaWmdr
	 4q6KUEnxRlLbnxErQCSoFZa+Gqmrec+gxxGtsrdzGS+UuAxVb7dsRHIYVEb5MWSXMX
	 qSrHUIy7Nwz6o+GO26ly7fe9Z1PMpyEQd5aA7wcv4RP4eXpxZ8t5fJI58H7yIdmIyk
	 hfgtYq0nOrwug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A89C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654260276.15323.13080829409445797670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2f6d4ddf774acea61cae191b878553ae563714b60f7ddd4fd57ac2d5c03a74
Date: Fri, 24 May 2024 09:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716542602
