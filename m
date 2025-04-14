Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1921392
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744610394; cv=none; b=nE1ggk5xGbOK6v26MLWCGarhFsCLLrRRSV20Kd+Rh04rdqu42uxHAwczhWHALRB5R8kNkAjT0YyU+n/I3fDjYu3PiviVA0K9KHDyrTd/vDZHWDbOrW+FGJPjH8CwJwffLtmbumpD9VyDzZx0ml98nzb8o/w0YbfLWT+QB6EVfI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744610394; c=relaxed/simple;
	bh=fkIkicjgixRpM60mt47f2hIw/2u1OroNKEInzdKbGKQ=;
	h=To:Subject:From:Message-Id:Date; b=ieB8gqW/5dZNlsToZzQVMBDP6pdlzNy0ani4CUvvldfK4rTe4QsA8DThBmGh2Tkmthspz1kyPinbKVdCStWymTYrFN7BDNRAnxtl81uBQYjOMoX4k7Ms1G5NXeHQsqOyC75RKAKildGSry54vb21+pMztN+6CpzN1K8Lynr/6o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5IGjMfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5IGjMfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD54EC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744610393;
	bh=fkIkicjgixRpM60mt47f2hIw/2u1OroNKEInzdKbGKQ=;
	h=To:Subject:From:Date:From;
	b=t5IGjMfxm4+kR+rNVDnohrJa6q+Uu50dtfB9NulwwxlNlIj3neDlfFGcv2FCtSZ59
	 ZBROsE/vJnddOSyt8bsfr69TtIUrMOLwTWUoZ2C8XWPS1jp0cgCWCUQFNstOxblpY4
	 lI8WSXd9zNPNkCwRCBxDkCk1x2zQZJ5y7KzfpACPZjM/H8RkEIwQz/BYYJSC4x3UAN
	 Daa7vGOq+Jp22HFoLraR5U0D+Xsk2s3KiDw6JFA0ubdqrQLxQ7vSqeomAiEV0UJgIo
	 H+v0ZAKR0fJEUVIxwo8uSs4Pf6E+Fo4B6zzfkZoBwbC0EmDRX7BpKkecBnnXyp9b9I
	 IqhLZCiU9D95w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99226C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461039359.25561.9128245860601406918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6898ac0276b3ca9344824cb481f4ee08e5dd346e9a2516bd5afa40d20bc3a0
Date: Mon, 14 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744610393
