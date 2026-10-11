Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3EE39021C
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791694834; cv=none; b=iU7nT5IpZU7D5bVP5kxEnDXqyxHyDtkefs0lOS2CG+7pGX5MdNhnSGzvsOFZ8hm/hGG1NAeLxQ14166D1EtSG/M38+oVkmFj0yoI/2pHFiLy9YdFa2YAnFKor7ne9LJaFrC2V9/wP02V1/mCqACbRyLETWQlNanjTz+AsFcGbaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791694834; c=relaxed/simple;
	bh=lwZY0o/Q21RJ5xvQcpaT3ENWxmZ8ygquSq9L+OTmGJ8=;
	h=To:Subject:From:Message-Id:Date; b=hWL1VU3FdsNbNO5loz/IuJcf1p1cxNbgmtrFwvl+pCK2zeA/bA9Tg60d+D8R2bMJYgZSHGHU0v0NYlmEnT3QDbQQZGASeiUWglJegLmPeX+uyYBSmmNKvhONMIguqaphx7ahUAEF8msNi8R77NhVac2M90vEWwSybS+CGqMUpKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gR90+Xe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gR90+Xe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC225C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791694833;
	bh=lwZY0o/Q21RJ5xvQcpaT3ENWxmZ8ygquSq9L+OTmGJ8=;
	h=To:Subject:From:Date:From;
	b=gR90+Xe01OjUs+vSNoLPJE0Bx6s4ORrmlH4PNNS6LWYhis5xc/uvSeSubBPj9H/S6
	 7wC2pkEO8ZTFgBS50fdob/78/ex92LnTsfpLGRM4eYdngn270SVW0GD8lHMibSyBjk
	 viU6Ssf121S9iQaOaXNjBxdBatIIX9YcM0qXF3IRLBuBBAn4IP+FoTr2yeGmZkNmld
	 Jabb9IPKvhlM9nMxmuYXOULDCpKX9l0GjlpwIkdp2kdXkfeJDlY0RUvmXysinFPBuM
	 g/ShaxNY90opKIM6OWLNH9osfUrsJasgqcVRjZ7vEoBRkHZATeBjwcvaSmKCxm5j/B
	 6kKCoMXPPTswg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB042CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169483369.17493.5407878624381364705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fcc27acc33a5d2e84bde128dc0c1facbab3670a99ef94298776941ee30d1553
Date: Sun, 11 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791694833
