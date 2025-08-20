Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE72353372
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755649194; cv=none; b=aij68+qaMYGzJ3HDWud2/J2X2zr+4yYF86znA/bDi98l/tEyXOZlUsbNxptbbs1akL2gMAzZlkzOPHdU5WOWQYH4r7PU4V3YbFDCgNOWGuSau8aJz3330uw5ZpXFyAhuUs4QD8N3GxTPg8vJ1yNTHdsUPlvd31NUJ2tsIoxqJCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755649194; c=relaxed/simple;
	bh=CCU+H5JMkyruTM49zdAIoUALn1Eny7uy5AwMOjlDX8E=;
	h=To:Subject:From:Message-Id:Date; b=Hrxzu9ZyJdDvSviIYaSwvl1RObu+OPSwHokJq3vkISFPzHsfRWHslqQO2XM+OVQhKMflU4jG8bJMD/8gWgxxCT255ZPuhD0nIL9AfpM+ptDeL7SHNgjQHo4qfwBbnyGZf8IKoXPQpM9Yn7KYdBFsRu3+OFFIHMUE4w1mAvtF9zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILr1Yu2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILr1Yu2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBD9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755649193;
	bh=CCU+H5JMkyruTM49zdAIoUALn1Eny7uy5AwMOjlDX8E=;
	h=To:Subject:From:Date:From;
	b=ILr1Yu2nWyZ5oQwjyoaq23H+brO9ELwwd1iPq/md77ekWa6XZnPqksERTF2lTQMX+
	 Hu1sNHbWhDl12pp1OJwaMRpurDbPRKO70UsqhoZldHoj3yoEEWxzZMFv1vdMMpc+/L
	 a/C3KpLC0D3EIWimMLfPEkgLoXTJlWN5uCvfzp4YYM5J6m4eJEbiqQNMxYpsUWj99D
	 rRi6+dLHSS9KRAkAvh+wSEgbRYqFq7M1AWYBmqsQ/tHW9hvUyn4JxZ9HfXrjDKJYiA
	 6iwJklKaRmD8A+eddJ5UvY7RXK3cwi26j9UnYHzXAux3vJ7I1E6/AI2r0SYxUYKDoK
	 2yps1AXHXkz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB36CA0EE6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564919357.11526.4680694542877075515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33eaeab677a6693af15cfe34da0f038f2ebb162d0ea5fded524e10a9beb63384
Date: Wed, 20 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755649193
