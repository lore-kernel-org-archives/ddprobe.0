Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E28828EA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746405594; cv=none; b=XvNM/C0NoEVvQ3N+qbD6fknyK/bVCIVXUgRjpwhgjtJdhpJfPfhOGMNWkw99T2AQhkbdQraHnkOQdtJieo/iiVVvPK613PNk4+QOFwWbX7SMmCX10khUZ9TE+2xSiOU7gavnmwGJhNO5YkHHp8Hoa7q3/2fIOwO6+H3X+5ggvAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746405594; c=relaxed/simple;
	bh=nt+ILxsUK9yhw2SjvIBCtIebV9QKcUf7ltiowRNStJY=;
	h=To:Subject:From:Message-Id:Date; b=nBbHp3ZVlpZMM8oE0AM0eL4KQXXk3qkk9BNulSDUs0RE+ohyUSdHwIYYup94gZe2HLQdOmsfRb3NCsYuc9P/AniizFfu1v50XjqSN2y5DTDd4qvGUUf+ugyA5m18plYED0U9BJ2yXDdXKAzCJJPp48RJNz6WT4QosbCZ7u/w1bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoGn1X9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoGn1X9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6954C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746405593;
	bh=nt+ILxsUK9yhw2SjvIBCtIebV9QKcUf7ltiowRNStJY=;
	h=To:Subject:From:Date:From;
	b=JoGn1X9n6Th1Ym3lUb+Try7A4P1R7aJm0eIXv5KGNkMmwfQNS70Qu3ELJUGpUYrx8
	 4Omfj3JTH0g9WpCeu0k4o7vi2MHcXHJx2UVcywwK7oRitaqfTbhfgt1vTqy9yz8k/E
	 Rg3plGC+GV7GzobjgFGYSle5CjeUbsAn/ONSdVAnPmVdsLoEegeo7dSpL9ecPV1e7Z
	 bc+ZSzq4mdUrfcBxycMucgyQu/X4x0jP5w+D5D+VLkVu18trJ1FT9gK7S9+ri7nNMS
	 0orSYXAZHh8jupWQwRR2saeNWNqpqboB9H7BCLNGjq1e7shvFL3J5Gldum1vYEirmc
	 9ijNn37Urjjfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91225C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640559357.11156.2388664916542351563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f1ad85f817f1b3b0b1bbefe06347eaaa52266cd000d79754cf1ce650e4a633
Date: Mon, 05 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746405593
