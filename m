Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CE16EB55
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719097943; cv=none; b=Ded8jyQfo75IyPoMigbruPyAdwoQhOlblkN0b6TA/Ytz+6HFDgdxqAImjPDiAQuZ3dnwSmrsn7RiUliWVR8wmaVeqN+iGzUFZ2CfQhUhEDMzkFbl7iJCGC+4tP2VHGFOTwvNsa6+NVpbHht+SrCmnuOe/4AHayhpAzMOPDjS7zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719097943; c=relaxed/simple;
	bh=cACyNgincupDQyWabNYyptd/WCwmW7Cq5C53XC8keVY=;
	h=To:Subject:From:Message-Id:Date; b=ZB6oRRY1MuefVYZqaBL5UP08uRKgtS0jno3OGGaAfI1JvIqKmJaKjzVxRFyECGG6y5dY3gr1H0o5539scPAC/WTSCxUU6ubbC/DSrdi2GmUzjEPJkYRASBxGxVqaGBiWzFSsR40KF05OcjB7VdjctYtr0uy3Sdgmy6DnOOgRzHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZqJdFEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZqJdFEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E051EC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719097942;
	bh=cACyNgincupDQyWabNYyptd/WCwmW7Cq5C53XC8keVY=;
	h=To:Subject:From:Date:From;
	b=LZqJdFEnxd3ZmbXj9gULASuRVc05x/qJS2dTjzzmc0zlSU6BeewfcCKWkLxZL00bJ
	 EAoj+EToiE0KZMASfI8tPS0CXR7IHqVFdvPA4n5bpVJ/BVsEQtluyUJNZccPzk780G
	 52xDU1Ehkw358KkGZZmGzNl1+spad49ks3efOgRITeKqEhJdBTB5CXYnou8mlXt8Il
	 3GhAAqIcyryqCG9PiAmHr5kSeoit2KCO69NZVf6Qb0jQMrm5uZhLrta+lRWjsF3+zZ
	 VbqGLI5e7FECp38tesr8EgDoatml0HEccfGz1Ggg+8Ksftw9wKr74EDjptH+rUoXaf
	 VqlOGBCMB+X4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83E5C2D0D1
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909794281.8915.14731963230448106898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c8edcc7ff45d7d017956cbe306f8a35328204d679184bf0898cc677ff4960c
Date: Sat, 22 Jun 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719097942
