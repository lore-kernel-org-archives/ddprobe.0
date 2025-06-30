Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455FF28D8C4
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751300994; cv=none; b=DxPCcxdY2zwrDermXRqmu989xZVKR8Gc5cj9Ywuugbm1zqNRoI+iwRs5NZhcgFr/uNyXsnz4vV0+I+u3wQFv8vtybpP5r6pztmAEVnXlUwrRTTV1DjpinI4Y4nsPSYZoyZ8qGJjefRjiQCrKoAnZVO1GJCByXEz+uZZ672gRNr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751300994; c=relaxed/simple;
	bh=L3+330rNrZMdrMMjYNCghhHzUFbWd8wJG3Jsc4vPVs0=;
	h=To:Subject:From:Message-Id:Date; b=jWF01RPl3gdub+19S7nB9sHF2qJluL+MoQGjT8kkMDpZC7FxregtVF6U2KhHBYMV44OTQ3Umxl+oLdi6YMd1eGqdnpw6DZRspGMJqAMNaRgPxf65/gpSExJYX8O+as7ePi3dTP4GQhctH+F1uFtYRh5frAFEOPCFhgfkseo1ngE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAt7NNUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAt7NNUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751300993;
	bh=L3+330rNrZMdrMMjYNCghhHzUFbWd8wJG3Jsc4vPVs0=;
	h=To:Subject:From:Date:From;
	b=PAt7NNUNTVvkOdfC+sERMbH8eaTw7/g07t5MSM9Dnf55U7WnymV92NZaDgqo6dZUj
	 lD0EYEd+ZSA4GYqduvqZeT56xfzQkTrmfDspkLzhBsTskv6bk+olcA1FXt9dj99TdQ
	 hITi+SA8KeJHeor/3lSKSjUSSHDcbUoAP9ACENimEqLGnI+QbZx843PTOvcDm30/4j
	 U4os/3GtAmRbcLQF7en4m33rzR0B91zJx0OwIGdxKueIF6EjRRDJE8aeg1sJjyXNn4
	 lIYz+xRPHoZ+hMIWeFGumUwNKdGaWd2WAkD93u+rfwAi9Uzpn6KrCLeP3yylFnR8JW
	 6llrqFjfGQDIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995A9C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130099361.18795.15898597512516804319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00dd773ed1046057270954474578cc5e59abebca4c9db7128f0e00953d2c340d
Date: Mon, 30 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751300993
