Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E78B1474D3
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720683443; cv=none; b=c05fw1kW2pdXzEuOj6yu5h1YO0byoJb6hXaW9GKgVYYJ7rzF9DhxAAhxK8Kb0QIepwOXNWDG25JDpii78bY7kNzGspuj9Zk1t5kRfVNFAeeGmzzmu9Lq10zwJGWs7ndFiInzRstI/eu53nqCHL2AOwlEawpsCRWOKkM42s6wDj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720683443; c=relaxed/simple;
	bh=912c3vSipSf3UukFpeoBZjSJiy65UEEas9YJ0INZ1h8=;
	h=To:Subject:From:Message-Id:Date; b=MiI9CfK+JNJW+vL5Oyif4cqDBcsmAnBsIUU6W96yf+NaXuKj+jQsJS2PCFR/3TEBXzvkE+d6wnPZye1BMLuFDYrZtoKdIEhcj2UC/C7baWRAGKOgGyWpZqbBgH07KCfQzfMU3CMOixSVKwuVtY/AAEvK4u9mvxmr0IZSszpbk0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7ZKNr9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7ZKNr9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA68CC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720683443;
	bh=912c3vSipSf3UukFpeoBZjSJiy65UEEas9YJ0INZ1h8=;
	h=To:Subject:From:Date:From;
	b=f7ZKNr9I1jFpAL1as+lfXgUhCeaJK4WkPrDR0PcldP0BdGoNZ5UeMO19GYsD4nv8y
	 XNjb29uWiwbxvxQV9UioC4sjpiWwP2S0Q7sM6hRrU+h1SzAw5PpIP3CXndzVDW6sqj
	 hs121Rq5QIMnt4b6f+YiMTi4xkLonzDQxzadsXfRSBKdQaT197+2mBAczH5hA/DkSl
	 TCnUsTh4gfgcdjomOjpxpyEJ5+T7k7Ede1xjVN47Fbo6Q2nH4442LzQJry3PrFt7sB
	 0xVRjqnXEUKgbHEA78XvYYeMy2/VnZJEXgz1tdXjkx2h7WvLLVE8qWkN1UdCxjb52Y
	 T4o3wMjT61HDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0DB2C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068344284.1409.10141814385839733604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1f2e643903bff6de3b84195ef03261ac654cd8c669f59de1c496c0c55105d5
Date: Thu, 11 Jul 2024 07:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720683442
