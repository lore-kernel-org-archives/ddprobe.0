Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33643224AE1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745621994; cv=none; b=Rw47EKgHG3poRnhtNktkO3z3znKzaYC0VVXra/lWdD8V/ddGum+uf57KIe3b2JK/O6rpdpjUUafQCM7LPfCa9KpuI1iUritoRqH0woJsJjUn8nPBKTMAjknq1ViPk+Re9u2eXP5u6VQSFIPfBgaNeIazM07RFMd/WczOvMlco24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745621994; c=relaxed/simple;
	bh=UO6b0a6gQKc5r7aKdJPjbK3GnuECN3VQQzYWhqi5NUY=;
	h=To:Subject:From:Message-Id:Date; b=b196yMUAnsJ/15oluLs3TwI1URZ8JxO3hiN03W1JlqUJLxxppJ7ey6u0s9xO70j9GNljsJO+rduyCkEGAj0rtUSB5HuRGmttrVz46KpC3bMnc91Kd/nLvsKR0W+cv3SgC2sTi+jBmT6bFgPTaFus/fS3FFL9eI2oIC/5n+fsuYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8W+hkYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8W+hkYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6DEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745621993;
	bh=UO6b0a6gQKc5r7aKdJPjbK3GnuECN3VQQzYWhqi5NUY=;
	h=To:Subject:From:Date:From;
	b=h8W+hkYYwWazerwtQVlraZPOpLY6qLRarzOm5PMuu0auOPBwwd00HV7kSGPSX7Vfl
	 Y6mo1Cl1ljpXKHmd//lipMq/GH1vYmqXTekl6mmC6I+bNyB3ARaE3sNxHWlCMPu9lN
	 rmj45laHU+rvUBJC995lZUoZA4/AwQkJHs0uzw9QYonLWv/6gYOXNpawgAXcylUO5z
	 IV+N0N+pzCZO9AyXHYCz4pTZsMEJXHCZh8BIUgZTYENbIAsu8TF2TtjVos/8PpqlJP
	 aJaH/6wMlNZLdShuwwAWjf+WQnIKarjTmTW7jFTL9dMqlzmqCjagCkA2cdBME9SCse
	 4qNEcMRXhB7qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93EC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562199357.13758.18373844325527611740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebf0bd2462285c4d744e85a6c013db4a7b153e74b6106bb84b70fc0b3a2f473
Date: Fri, 25 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745621993
