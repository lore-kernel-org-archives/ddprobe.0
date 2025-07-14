Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194BD25DB0C
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752513594; cv=none; b=sQ0by46uUFjBrJ/8k8VloWhfWyVJSixL/Kr6OdaffP6vO/CzdBLbhSjJcKQZupkGD8+ZRh7Go1VdqXvcgDbhUjw6BOr9fuuZz3azzFmGw6nuwhDURp6a+xpdAIBLpdrVfpMa2kC1dtyTuZRPYAzTT+TnfnLjD5DGO1B2xX0ggSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752513594; c=relaxed/simple;
	bh=9hCGpw68hfY9gWNkuY4ItbFy3We6jaOMRFoPNKarb8Q=;
	h=To:Subject:From:Message-Id:Date; b=ObMEDDPoR6ykXVGsX9/Kfx/AgPTgitqnj0CRB1LJVY7uTVljx+JDVP0pUKMipbqtWOSb5V20BpTTj+FoQgb6uL3NH3LRvJaHWwS7QM8ZgW5EZOSHYvWOwGH6ftqG6FpqAKBpQSPHB0F7MnfVseY/hJaAnDcRNCfgVKUE6bwcqaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyOx5XQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyOx5XQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF06CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752513593;
	bh=9hCGpw68hfY9gWNkuY4ItbFy3We6jaOMRFoPNKarb8Q=;
	h=To:Subject:From:Date:From;
	b=eyOx5XQqh2OFBVTHb6r6EgN3CEaury8CAMAqKS6pJrB3WhUZgtSvGGD1UD1p+vJNo
	 MuY7KsZ5tbLPQHalWP5EawniA06KFg/LkXXAdr1+gmkuURQ0dX4NwGpp97BfpXZqvv
	 tRo8xIC7Oxq/fPOf2d0tRzyF7EdKUIBYGfhJ/3HROuXCuIn7asgICMpoJG4YypaqZH
	 kVptFQXF35v41AuaIYBED8Ehc3KF3ZlzKsgZX/44XopXyUzl2bDQSmOiiOdn3/tnn4
	 vcm2w8bW62NLoKFhTFXFbMwXe5HbE2IxZx2GnzmE6eL3GqPXJ3mHcHr8FKnPRHQWg4
	 zPpdPNrfuA+Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F833C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251359364.29145.12517686675674628179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a01835434434a1d2f028e40d0c3883e7f62a85a53edfd363e12c7992e7654d
Date: Mon, 14 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752513593
