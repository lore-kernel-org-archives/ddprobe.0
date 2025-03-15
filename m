Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4544B1DDE9
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742067594; cv=none; b=kCGL1O39W+9ISXIqvvHDDhuSybK6VbLZf8xSI4k17V+7RqIGk9RzCYpFMc1cq6cJrbthCSfXOT09nK2+hYxPpx3mj/xU8XvbYw5M0k9ZMeD3EGdA6ThRMlh6JxSbyZOAW0zo2LgWNX+Q/aKOHhqXVeXZCkh9Zb7WW2805rrEsH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742067594; c=relaxed/simple;
	bh=TqADBfVnGu383Km9yP7pSDGrZmEe3rx7wKTGvRUZ26E=;
	h=To:Subject:From:Message-Id:Date; b=TKMpaUNLL1TIBPFbUPkkYXjWPvPqqK6w0yn/2P1Nv9sj7ffdUaKpwW8D50mYO1Cgubd3hFnEes6FVhlMADvicegs46Rbf37lLHAV/dA5a50hlBdFGd0KX18/cYJIrvyQpblTOhL/sLewJkqXQcmzSdajk58zlOLYXWGmNcAeLow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlbV58yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlbV58yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8946C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742067593;
	bh=TqADBfVnGu383Km9yP7pSDGrZmEe3rx7wKTGvRUZ26E=;
	h=To:Subject:From:Date:From;
	b=BlbV58yufDz2tm4tEAF3Vt/PYbTX1naaQRr5/IqhqYIwr6AtJce5AiVgwW0GxN7yI
	 DK8ZGCOnHOjPNM1DBNHcphigX1KpfWr58dTk3ijjH+H64qBSZBZqw8SDrokUzEUQb/
	 Gg18HekmisygcLYFdk1vNjH6qDbx+Gw1DL3VUJKbie7y+dqjH/jscn3bSbbQwpiK9U
	 MDh7X4+eE8XQMSz8eAbNHW0ZTtAazU8JBqZ9GjW2VWnS7V7rBFahDpT4vmah7k7maS
	 rnBAqQ4gPqGAqbOVQKQoqLeaUZ77xi19CTdY1veSLEsMxpNfWG9Oiu5xjztr4SqNm7
	 N0bVeRPIs5QdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D472C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206759360.15400.17653670445132523552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c4e1a433953dc0352035d8248ce0feb8e866765f7e1b1ef9dde4f0c5ea4e14
Date: Sat, 15 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742067593
