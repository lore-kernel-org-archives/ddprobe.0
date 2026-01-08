Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3DC13E02A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767831834; cv=none; b=i8kyCG1j5rf845XTfdC0ppButkBvyJrU8WclZzAgEZfH5aR2LhuNM78rdp0LJu5hnVLTZgn+eMQnIfHpSlpL6ebtX4ygsXMTa3aofzlcsx7rODLaKP1m4BnXjTcfUf+z6pa410A5nmj8gLCHqsPaY+2oRyHs3r4IPxVIn4Z0QP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767831834; c=relaxed/simple;
	bh=gXjV9LdHqgXjF1+A30YAh8/bkkuLJVV4/Bs6t5Cgkrw=;
	h=To:Subject:From:Message-Id:Date; b=Z8HBoCXYfl61tqv2ABn2mOG7mSqFsXFtKq5sUw0Q8o8tAr7px3JFMNcSorWNf9jgP9gcJTl/oqnnc8QhjwTH8wZPxybs5cdNdi4u3asYKA1pXQJxRgV9wQaGZoilhwiuKY+W3DuuKJfsGvDjD5CEdF505+nc0mdHfckpiffve0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJ53yWgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJ53yWgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2836C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767831833;
	bh=gXjV9LdHqgXjF1+A30YAh8/bkkuLJVV4/Bs6t5Cgkrw=;
	h=To:Subject:From:Date:From;
	b=gJ53yWgJG/9Z17kehxdOkLbm1kfYISSgMygh68JkEVjsGGeqmo6eEnsOFqqgCo1T1
	 asNmRC9VORXI3E/PO+nIA/6YW+OZ1gI7L5jOqVI/RXUuobBvKKnkjXBhJMwyINramJ
	 hwz5j4tt063VLmJsncPaCkLfYGeFeOAfB+KB5Ef5yZe9H4k1aTnKJpWIL6HXG90r1N
	 J9BIyUsUZMGQdxxIsCXwTteOxLtSf98AbT6IknuyWzhrWqNaniML1W9igIXPzTckt/
	 vtvakmszjZDhT66foNGlhs5zoKexTp7XVGGs1uNvxdmKEA2R5kFg3lxk2lRz/j9iv/
	 Ddf66uXM3zJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418AD0D17D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783183357.17849.2161163087262802146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d360cbf69a8d9b9618747ca7aeae08854a0e67f1f88ae06816f760f464f449c
Date: Thu, 08 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767831833
