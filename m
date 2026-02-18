Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEB325487C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771387494; cv=none; b=JyNFjsZDm3FYezst7qy9wL4C6sqDLXGCoFzG1JuhpVZMBa1tWvyGGBhBtZVrEX9uOEYUjMZS59fSHAoeC9527MUP3s8xdFH8JntCatTIVWcWOOLboLPgLAIP6isUMOwhgWnD0dyY1kp57zT8yEGSuIjqrwr8UC86Q6lA3RUONE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771387494; c=relaxed/simple;
	bh=1HKXAX92Ntu7Et44LWhgLMSRGpYz7cWtBU4mQ3xsGEk=;
	h=To:Subject:From:Message-Id:Date; b=S/42nV/mYIUTNgpkrSjaakd9Q3Obi8KneY9PVwje7QukPec813ST1Kgj8Z3m8aVNtWuwhrMFFPhtbOL81L7nJdelWNTaNYjNCtfbLTnBO7QgxP2/riS1ugJ1Qru+JSjmGfyw2q38ISqJ2URVEkPAq2G1J7rkdIWxWBLW/QQaDPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgPAG9uP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgPAG9uP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9431C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771387493;
	bh=1HKXAX92Ntu7Et44LWhgLMSRGpYz7cWtBU4mQ3xsGEk=;
	h=To:Subject:From:Date:From;
	b=KgPAG9uP2lOGIvjfSydo9yUSEJaJMI3XZH6PPnLF0NM1T8RJdqkKx0QewsPr5yF7V
	 GleSw/jEJZXg66MkZQzneDSKf5ZQEp5CG4s0sNv5HEdPMSU/LerY/xjMuopyK0OOMQ
	 CNzD25J7Dw+mrft4QKKE1SVpW6V+L6eAcM5UTso8challHA+f1xsZuyCbDCYzvIuaI
	 ovMMCUAQoFThdPyFdM435zcciEaIVxB7Dc+JQCAvL0jC31uT34KhP04IOeo31i+vZx
	 aFSrJ7h4Kjor6juHzu31Rx2cJZCTepfciTsyOiTl2SIAEmKbIbyBhvn6m+2dXPoMfM
	 CM7QOcTKR96iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E4E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138749358.31982.1030094735338716116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d1220645bc4de9766d7657730d893893ebf147598ac3839491e300bed0c608
Date: Wed, 18 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771387493
