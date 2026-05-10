Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6991418027
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778378434; cv=none; b=AWGUSljNKmtgcBSSz1cB8La7n5gtmxBXLqm/7t42YcEylvHSLg+IP9FmZZcO6G5jN2FGY9ywVivPgDWCUmVgBSJ7Kx7ZX9VNUsL2VDWpSY066VBBUH5xzEjJBjIqfftTXbs7t2gdLWPQsMILeDV4qyQscaV0j4zZHljRGQkIHoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778378434; c=relaxed/simple;
	bh=LBruFH5wRRUhkITnAqQM2hRyqVsH0jnj1C6jZQiKkWQ=;
	h=To:Subject:From:Message-Id:Date; b=i2dKrvbkad8SjgQX3ex6EC/RLhK9zYUB29FUZ/9MhZ48kuRJc3d6w3F1BtZZptYK2pi8FpsZeMKj7z+qNPZkE94XbbDYx9SPYKQLtyIq+qlYtEXxZubA3JZ1lzp5RrWd+R+3fM2jn8ytu3vE1Oi+4gxoKM8UmXVZsnElGt4XL78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afnVO5QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afnVO5QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39BDC2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778378433;
	bh=LBruFH5wRRUhkITnAqQM2hRyqVsH0jnj1C6jZQiKkWQ=;
	h=To:Subject:From:Date:From;
	b=afnVO5QKvpMPfy+FIwlh6dSpxApJ6hvF57H3D6nWzQ6Tn6Ck8QHHjeVYrEWTBMpOL
	 uki7gJ4qEIlREX13RjOrndlYDcdkNOhzaHeXGXnuc5jdo5FJ579OPucLFbW8zLzF4m
	 c8s9n0vCbLYjq/d/jb21F7QKaBzmBFyoYhF9NVn3YyMEQBjxRIg5z741UtItZc/QmW
	 GTsbL87aFXOi1IWG8VPYyF6T+6VZQWRV7wi8Rl5DEAi5uidKk72Q7uTQ/JjAObOdxS
	 Kpkzkmw0LFhOiLtF3/nsz8ucOiajVmCWyJ3oHGnVO8+uy7FVt23nfakdFoTWYFbUFP
	 fVk7q1HTBCXXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF26BCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837843369.1346.1563448948024289756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d1b0d28c977f9c1a9d8dfdb83d530fe434eb1597d8e217852243553681b078
Date: Sun, 10 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778378433
