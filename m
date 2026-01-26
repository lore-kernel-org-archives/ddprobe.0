Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB821E47C5
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769435033; cv=none; b=LbBo9emQ3aPQXB935UMBst7viE/Caxz7aJ+U0Vcs7oZO5G66CEBsHZZGhA+5bq2r958f3K+5JeERbdL6koGzSsjIK46I1XDc7JIdP+FdMBEFypfyGvSworQE4KFSnVbCi2ZDQyLL3TVLq6JAWzmIJSnGokO4ke7hNQB5J6O57HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769435033; c=relaxed/simple;
	bh=3Pzo0VEATEcIrQuO74FPzxgnkjGewhOUnm+3iToD/og=;
	h=To:Subject:From:Message-Id:Date; b=q3N1JCIIp9Bc/OnimicxezfB1VbpGdch1kAR8TYdMlULNiWCIOh4b99y/RL27vn82BqsKJfDegzxVCH4+PKYOJQc36470RTtds/Y9CQWGqa4+IZ+l9V8nq14aXhP/tSSk+/EsvdvlhvW0yW3hrkJH/lkAw1zwjL/8Kp3d09Yglw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA76Q7kr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA76Q7kr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769435033;
	bh=3Pzo0VEATEcIrQuO74FPzxgnkjGewhOUnm+3iToD/og=;
	h=To:Subject:From:Date:From;
	b=MA76Q7kr5xL3JM8wxFXL9HHEtKP5kX+9N2q8SnR/mSKNzTRQkGI79n3scz/rwDC7A
	 kHiqJII2F7SaovJ/2+I0093yBM2ajg4dzMV6LNDl5PGT4cHSpmKfVrmuA58WtzwBJx
	 C7LjqduV5s+vijFAY0kEjCM3X95I7R0Mug/i7az20wlYjLeS5Gdt3WILKHtggHKd7+
	 J+2lqWiIqElc376mCtJmOx0ir//+7lXDV8NFfoqxkwuskiKCBOX7mOGG4U76loWEBf
	 GgqGALqIQwqpWdfH7pojnysBzoW56fzjgsoDOZC4qx9We2PVfedaFbMWu2cl/eO+qw
	 iS1Ob9g8lzvqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E4D13C0F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943503358.15674.15342596398790628191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c0680032fb933a9a52e252d84d75df900b38fc3584c50e04efff816c24c4fc
Date: Mon, 26 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769435033
