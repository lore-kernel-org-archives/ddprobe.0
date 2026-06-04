Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F96C2BD59C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780614874; cv=none; b=Kn6hAF9aDBWOwLK+aUChcpaiM4mcLO1rYwoHsj5cZeuU9H6zGtkupHGK+qQ+Nouwfd+VJvqexuvYoN0yycRYZ6iuH1IqwNsMoiVD6LUIxIMFy8nW3ZL+pz6KcdOViMATI7A3VxG6y9/uy2imMVQ/+0X+U7AMLFLntsscCV2Hpdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780614874; c=relaxed/simple;
	bh=FbVylRcYzkV+E9A3IiUXIpde6mAtxwG+gZQevCC2+nM=;
	h=To:Subject:From:Message-Id:Date; b=BCf1pluEoPYaRBDgvOWn325+vYmF5YzpjhqJQQbGayXLpmK7vfvnG7fnqyuMGX50EkNfvVjE5+f1jUjY5dJ5gmsPEHj8JTFP0TnFZvrgwpdPWQZJuFTBqTTH7lN97qZOJwZA6Twio/s+zNRMwQd1sleQ9Ihc+m7rs91b17QSWr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bojq3PYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bojq3PYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23B4C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780614873;
	bh=FbVylRcYzkV+E9A3IiUXIpde6mAtxwG+gZQevCC2+nM=;
	h=To:Subject:From:Date:From;
	b=Bojq3PYB3uowo1cIAm1ue27OdGdQErVkDUSNRUSdWOsspNR97Mlg+NBI3EHOd1YaA
	 mf++9DUo0l8YEky7yKL64FHM92IYNijqIe0xypZjKO4CNx9cXE0dBvRecj9j3QH0uC
	 N9qzgxlQfkcf39ppH7lO0iFiBFgX3ZVqExJK1xMfa51PvjaVslP7S5++Al4DhPAya2
	 CTBBrqBy1Xsr7i4hQR5zvYlA8kMSmBsfjN1eUbyH+1aZRDYxYAW+6us9uy3dqwIO/t
	 mQWtG7UP8yfDTQbLFSFIHzDHjRVbVD1yl80VY/ttl6PXt2QerXNyPpj76dwlPM8ZDS
	 3hYZnSf7mLbhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA17DCD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061487368.27968.242975914194793605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852369312866458466d9fd0b987b2a3289425cf185c3d20913e5f2425498cd41
Date: Thu, 04 Jun 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780614873
