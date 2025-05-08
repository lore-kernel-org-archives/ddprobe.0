Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20DBEAF6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746695393; cv=none; b=t6ZvylrQJ0ZJo/xrUcDMVHCx0i52rfql0YsTrq0l+FmXJEuZo8Smg1ta+DwPYnF3S7ffGyP8Hb5RETrlr9IjmHJog64SQw/Y8WRXL4+ln8xjzSn4WnCxKO19bMNbRhzray7gWY3q9jNfj2URZoC5669zVe0Z/VubfKgT68huLZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746695393; c=relaxed/simple;
	bh=L0yA/goeVmXP2bUKcyrFrL0XiUm27Q7jvU7sAcVbwjs=;
	h=To:Subject:From:Message-Id:Date; b=YiovoM2ltXlgY5XTtd8jxC3j6symn5YNBCXQy+6qpIHhUFK/EdUJSUc6R2JXhPQlnqDdGdLgtGpid7SuIpxrm/ifi+UecU2cUP62R7MGS2TMIYQUjdI2uPEzTYBpsCGpR3ncyOEEIvOSoFpHjnDujekef2wdlQ9RvWwRmHbxkwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ+R1fmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ+R1fmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3CFC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746695393;
	bh=L0yA/goeVmXP2bUKcyrFrL0XiUm27Q7jvU7sAcVbwjs=;
	h=To:Subject:From:Date:From;
	b=dQ+R1fmrWWEuJLAsLV9N+2Sfl3i0rXqHj0KQuM3Gswa43umhAinKKAZBpMxVQksq5
	 BmRuG1edzt66YlfXp/7BLkchC2SXlHZjkul5GXTh5xDZSGhHxRA7inMesiG21jYsXV
	 YP86d3NnwYfgEeNTbUiU9p766P3W/t54+7DIqKH+abW3ezJMpn3KKLSqEe77pPOWKX
	 5MEet9CojK0uGZIuj0orPZC//XLCn31AAhM2bw9Myk95cqB1Ycsf5ghEUvpTu6zcgV
	 UULlRsFQHEfs9tGNo+7p2tTj9j/agMwHfKdjO0/oSPbRJkr9wS+Wf5thA0pRIR9zX5
	 APhkgG75Q8rQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E823C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669539357.20378.16308481798115525937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ef7a34603a053adaf68e71e3bc338a14ff21f8c2a2b2fb526596d273db7829
Date: Thu, 08 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746695393
