Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188CE1B012E
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727394354; cv=none; b=CbMgg8J/AboQeFpYlI1rfkq+8ZACvrxzhKz9TUBYMlYuqoS0H8KI8cYr94nD3xunc4cxfJposdgipCbl4cKZB5cA3UY8P6E2l3abeGAsWPRltPzdprEc2FhnNsOuAWQn3UHPxq9397P+ugUt3efmWpyQFNO9nYlyfIjxyBzml3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727394354; c=relaxed/simple;
	bh=LzphgBbU40XEjQFFjpzOqIa6pK31p26oaZX8ZQRLBGk=;
	h=To:Subject:From:Message-Id:Date; b=ikLRYJJc4PxDaxcwyPqnYd74vVN0c8TWdDpE4hnNzQlRpk8X4nF7hqn3P56atitIxWc8Jp0ibgKcCidXA5OCY8nfwou8MjzJtER8tQROya8JNDPmBJxWNYpJqBT28kbnh+Hx8ECNIqqK5kgxEb+NkiRDGuZJY6li7hHEiCfU3NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpQgzlJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpQgzlJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6364C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727394353;
	bh=LzphgBbU40XEjQFFjpzOqIa6pK31p26oaZX8ZQRLBGk=;
	h=To:Subject:From:Date:From;
	b=VpQgzlJuuBGMrG7qa4AWKjn4lVSE3zXWxlAhu4fiGnE6prW9NUp+quC6On8YiEeh6
	 BMQ9DFDQIqHT0xk7gH6dKfB8JBMM9VjXGdxXIst+3WPUcIBhAZXygx3DrS8uTANLaT
	 UzK8z1S+imI3WKC16qsg1QUDYgL34Gt7xYfd5FRJgkQmTsAON7XxRXQsjuBYZcXqvW
	 FAUOIbgjffQBkvzxA9qkrna0HAwpn7TeQwEwnM5+CWiZnmO5HrskDfWk3ZoO+gs07h
	 IxoEdVj23UY38RTyX+aDJRUoza+s3dgm5XDIKgFJs4EpP4/nVwAba6Vsvcusq+liaG
	 2CIuqksDhRV7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256ACEBF60
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739435358.1333.17610928789816596670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ce8cae6fb4a16f2a603f982987f94a8de395ace489d1f8213442c5a52e19f7
Date: Thu, 26 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727394353
