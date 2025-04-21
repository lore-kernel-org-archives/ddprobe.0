Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490AA182BC
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745194194; cv=none; b=Roko7OF+btTQEnY+jkeUQmRXIpTrZo4st4Yn+jmvn5tiMRPzSjWui509vQhwCKm5vOxbhsbqGKBotYYwWrY+oMoFWdxYoU6Qkl6wxw4ynWs5WTlZx7FfUJHv55y8kcGkW/iRy7CMYBvbFPFGL1RMHEsQwFXuiQNy7L7sgmh01wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745194194; c=relaxed/simple;
	bh=xVKmFaeWq6N+vqmgLM1C6UuEhyLjYvrTPYOOj2av2C4=;
	h=To:Subject:From:Message-Id:Date; b=QHK+BBtI2kceD8NXZKskZ2XjRFOMVtQVtM1LWpQ6mkjupC9OwFN97cNfXI8QFkYwxub0dyOWIQqRPvCW3q/0ec5UicsRgs0WdCTBbQYZgFdvdfUytlOGPJF/5uLDmNLZNmVgabpADkq/MCasd5FDE2Z4MG2jhPfcmq+UPH21V18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OigysK3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OigysK3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE18BC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745194193;
	bh=xVKmFaeWq6N+vqmgLM1C6UuEhyLjYvrTPYOOj2av2C4=;
	h=To:Subject:From:Date:From;
	b=OigysK3z+JcCEbQp/Msk3cGoFqZoz1gJJ8ZfZJcdKyWFSspwAqWR8wCBa1B7ozPys
	 iWxboSfPCWrbEq0ez5MbOlJe8jwZkRmU7lWzH3967kTonMiVK7yRY56seufnHmYbKw
	 INByjJ2TJ6BT0gqNqhScdptraVv+fdN/a4gmjtwIxJw8JUyEgrsj6JT5oZKOL3URmq
	 3U4c3MwTjm7899FzaJBVrn7OULFYXnt893idK1GQ/ftJERPD9LIHl7XcLzOxc/lyBP
	 KF0WJTTYFudhUFYK5AgynK3mvkLSt3ZZsIQ/n4acLlCedtqsX6ktjJQviLIknNu3N2
	 QG5YL0pwqBNAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC2AC369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519419360.17071.6148064270475432669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353fd1dec4e1b4303a5131b3273b70053280a76888146b2c2c8be01acaf0bc7d
Date: Mon, 21 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745194193
