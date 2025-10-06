Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170751ADC7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759781994; cv=none; b=GC1bMr8B7auAk/4kMI0yBycmKkfLooSxuMVRmu+FBV40ujjS+zSfFlaYAKDyJgzYvXqYtx6sKAxrocBVUrWAB6OyLsKYylM2fwV09rTlH0VeasGCJFY65eCr9mEkdf+k3qWPfqzCrlUOzJWBddilqtF+VWksDcV418bxqfJ/A78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759781994; c=relaxed/simple;
	bh=2aJtLyWh0KldatbeEewOFevxWHVfcjFrPWyhUniw2UY=;
	h=To:Subject:From:Message-Id:Date; b=qxA3BKGxJ+M8+7YRMSY96c0w4k3hHQBp5Ofr9mDXhF/jRAC+Beu7wC0XS7y3RW/H6DN9aQlI7AKt2vZyLGtb2UlbTlv0TKK1ICr5edm9hQTtnSRgv4FrAHxQ7sBDpjtnm0JWpdZmbN/5OQUY5BELdDVk+YDAVnjPLqvd30CWiOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9qKUKEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9qKUKEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A4AC113D0
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759781993;
	bh=2aJtLyWh0KldatbeEewOFevxWHVfcjFrPWyhUniw2UY=;
	h=To:Subject:From:Date:From;
	b=O9qKUKEa3md5vEP0qLOjOD6l3TYclGYYRAowjhFvig0IqFli5tRysSy0bY7MoGZiT
	 B+b4amBaXGnzHVbjsnkBDkpmHxG5vkAdm07TNRGBx+9PEwdD3xW52aE7A9T6lOMsMs
	 WyoDjyQuWAk+UYsnBcWVkAdSabpeOTLb4iC0Lf9GuBH8V1crJQNkVThkxzau7u6BZ2
	 yCqLhCNmDSSwcs9DLUZxiYScBlFujn8fDy3dJYwr8+0BG4RHMree0zMpHlG3nfPUpg
	 KNVvubVWwrrs6UPIF2Pw5hV7YIBtJXC+mv02jUIE21gCYRQHy1ktSTh77v29xNeTtY
	 uQ3EXJ4P3ZrLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB56CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978199358.23763.4458908017866277520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac1227da28e2849290b406c90b92d4c374bfc96c7323eb99982eb520b3f5a3f
Date: Mon, 06 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759781993
