Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1088B18991E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762033194; cv=none; b=rMcWW46ScJ+5P+W5SOLYSGebmkh4lUMWF/h+x+mdqzdM08LKtJwcTID2U3TF8b12mDPn5R0MXa8Yct74fGfAyYAxMfrn7pscsI1PEdzHYDui2TpHYDvM7lI6QdVUZWyB2Nlcgc9pHofku4QFmdHySYtAf9cZJAcyTTo+ARUNTD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762033194; c=relaxed/simple;
	bh=LRVpoytNdRJPVxHettZD+d3awhterJqmV9AiXfvfslw=;
	h=To:Subject:From:Message-Id:Date; b=SA5yFftlHx+VKHC7gyfYiqNqIUOQzyv0zJ7n5VmPfkbpcpoqn3lFriQa+76R9o5XAnt7VCWK/okSPb6E9DbQ234HksQ+uhPrDZ0UJ/t5/MBRtS8kYYfmuFHMf2pculy4ZttxXPpf3tWbgrqCIgNP/CxFanSSPjzfxbdd1RuZAHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dr+lKUMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dr+lKUMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5266C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762033193;
	bh=LRVpoytNdRJPVxHettZD+d3awhterJqmV9AiXfvfslw=;
	h=To:Subject:From:Date:From;
	b=Dr+lKUMwob1tK7p22rC2JMhRYjUYl4W8AtrJiuT/d8hoDO4rF73pJKyCruRMQz7qB
	 zHKpAR0kc4fqY0Nyt8a4G9r0pdIVhBMFeXwUiqnbu3kLPFUliQqKwIx6mPEr9q7vph
	 8Sg3Pe4pw7KUZkS0wO3tQ+N3IHg0BTf/GnTN1BGrtxbHaWDG1KkmSzCgcMidY0V/JJ
	 IwnklTwjiVWznkbE7UfENTqH8g7wInyYNXnLJEJN21O1fEAxweag0iEgeyFa7jJlTd
	 YKQBE/J2APTOlLLp8gT6734HyFkeSbKSHuZRlJD3h9KBR59ohZArvvXMoOSOmoBdyE
	 yp12aXUmgfJQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D01CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203319358.4027.5163194166396303136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad639c647ccf2553e7ae18e9fcb6b2db7f1dc87e0ba348b70fc710f411ed7047
Date: Sat, 01 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762033193
