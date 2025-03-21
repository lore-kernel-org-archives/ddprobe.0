Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3016622B8A5
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742563794; cv=none; b=SaY1fxOYQBKaLkbjWlHw1/38IrpZ/F6z/XW8ifnUor7HLHjleP2+HSqiuloMFiIyxELq9+qfdkH3pzSJGLB80w237a1JZUu37aMgRFG6QMEy5mWchwhXYX0zYOK4LzJOtYLWvU0bPXEc3lGdBKWCbq4RDoYwCPZC95Y/Vuc+L7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742563794; c=relaxed/simple;
	bh=x0VfcTmel4Ab33YuRRRpB9OW/WvhVkXHRDn7FZ6fMwo=;
	h=To:Subject:From:Message-Id:Date; b=i6PI6YWSMhQAfFd+f4F1OJad8u+WpBaFUmGpu/u2cKUFHi0q0nQNAkpk/etT9tDI7zegS1XRal6a8X4MfjT/eCRqAmSbTlW3WLZkK+xeNL4Qbj7jE0e/EwNla30xE2ZRKSCuLpsg6w23+p8QmFI+gb5vaLtcyj1AfrhCAwVyU7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suOZPgL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suOZPgL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9715C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742563793;
	bh=x0VfcTmel4Ab33YuRRRpB9OW/WvhVkXHRDn7FZ6fMwo=;
	h=To:Subject:From:Date:From;
	b=suOZPgL7OXJpKwyw5fwfJrn/709l25B19V9ry2cs8VdZTsia69/WQLT9th95fzsPP
	 RgWnnp0qErVmOIlAqxuO6oZen663mVHq8vhEESfgAzsv53b+bYqim5fw9njzgZQkIM
	 SKWt/X/U1dcDawUVqighQ9c0VzWZJVVPZqxs+hxYrgQqdcZtyBc/4f3PLMbGR6lpch
	 iTRf3kAnlwlKyLcvA+Nlv2faCA8c9gWnlRz1+eaPrq3owr5K420iWsgM+G45f5kOvY
	 CB6p2YF1PeBdDv4bUcN4GfpioOGu2y8fGsruF2PiBeAVE2fHgfB3rtb2DnXKOolWYZ
	 RfxoA6gRaGozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94314C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256379359.5156.8151877959802496272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44bd7ff7c25a58a4b63829f9babc6cc4954db634c71961a57dbff3368efa1b89
Date: Fri, 21 Mar 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742563793
