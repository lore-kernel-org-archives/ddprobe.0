Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD8C198A2F
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747447196; cv=none; b=G9ew/NsfeooJeImlzfC3+v6XV3ug2wQ5KvkM4s1xdYOHFe4M2wc5dbub4yZvZCjnIVGabeLLVGO1xSFWrpR1wXBzQjKVwqqFqc5BC92zTqx69fTtihSuFU5vAJY1MESnMqOQ5e/wQcllPxA+MyErBA+vklGcUwW34XB8FD8efXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747447196; c=relaxed/simple;
	bh=VeUis7ixIsp95rCgm2QaqV7Mjbn+OUxF0fRHGotaz38=;
	h=To:Subject:From:Message-Id:Date; b=P9P2tw3vALzB55usdrOXNahF8ExiqY1uHnygPhn74Z8PSyC+WJOX9ivc8QhU3VtQfske7UowBkkH0NBIZxsxY8iUxNcdzrvmBKbXGSjC6P8t9hh4+riYtEUkZJpUIVH9WjcfwCHas7yjIz/Qoin4cjWmQBvNTIAxypk4JV/jau4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpqfLIoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpqfLIoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1233C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747447193;
	bh=VeUis7ixIsp95rCgm2QaqV7Mjbn+OUxF0fRHGotaz38=;
	h=To:Subject:From:Date:From;
	b=BpqfLIoDoj1plu+p1fCU7VgaptAs716XH9uIfCWbLunge+Pvv0XeG5up9vOMF8hsP
	 3lkhbu6H+jydhWi4Vhry/H9NCKqgOFYmZiqcaIouCXTCpMqTyx2VqLkYRUKNraQIbo
	 26HERBFBAIMUdmLtFNBqXtAagTcD8sBI6B+0Bl1HBa8FjfGKVjOCT4FWbY744ctuyx
	 JnQOVueK2FaLuBXK5MeFsifVx51VWwjNoy0h5FzA+q772Jvwe+86YPjEMVzuyz2yxL
	 dZsNhN04gfmQSttA8619agpXMcS+4rSfsktso7CeggA+MHTH7VvsXBhPxI3Tw8pXx0
	 S1keVgNISakAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F376C5475C
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744719357.25014.11369689314741824678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bfe5d7e8190d06175e475b27e3c475a6dba119f7b2900060c5a170ee1448178
Date: Sat, 17 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747447193
