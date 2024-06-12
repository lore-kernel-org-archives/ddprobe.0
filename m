Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C91082488
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718229503; cv=none; b=YmAgOHX7WMODT9GBsr15Y3TtJg2WtyZlvMzeQAB+wFACG2nvN79jNaRSf4xcMI4vxFgPySfhPjCx9RM/jlzvFs02BUDRVfBof4FH5FolmZwLlX+dJutNLQkUYKdaEcnGQ/GJWlgJNiLKOp7qk4l36Xw5AfD202FlXKFlks5yiZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718229503; c=relaxed/simple;
	bh=8uIMXA/E4oniHeAf34kQPlr+fbJiWcb+rOBYEIrdY90=;
	h=To:Subject:From:Message-Id:Date; b=tp2PFhbgMjwuJDcRjL9NxsSmUqJcLzRFsF042TjtCAMG4P9dT57ZfIl+dC9+94SvdltXsRasphu2/OEQUX4p2jTxmCXUqnZsbLs/rrYTjc2J4Gsk/6HbiF61UghuCeQ6FtJ7IuPS57qW0lZxjMRBbYAH6KX84gdOf0LVMlrNXR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJ7QtzBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJ7QtzBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FBDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718229502;
	bh=8uIMXA/E4oniHeAf34kQPlr+fbJiWcb+rOBYEIrdY90=;
	h=To:Subject:From:Date:From;
	b=oJ7QtzBSVzqb6k0fCI+Z3QhWL4ML7K0WN+Xp7PgYTaL5R8gEsD90xCR2sprAyueoD
	 TjgF/UlMWqcwORF/TWGx+o8dDy3g0x9Wb/WQv6Z5DywTcVaQxUb1lNVR8f0/r4cPqt
	 uxgdvsAT6FaMqkvwKH/9trqUGwWYpQU1lei2KqfAX0CIaF4lmdEZDBQcpxiR3Z9veP
	 Ght6j0e7AC10kZip0GT1BwUpRK7+adTZC55PhTKKHiE2hNe3z5stE3pU7A8/SjpjfL
	 FRJ4tV4tZi0sYjP4OFf/Gfs0TnmNOTMuMH4lAC2ZVM+zqLv1Xe8LVMFp4jo0KhyIaB
	 rSAvyrvnqt03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB22CC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822950275.9432.16402647133472456302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b89029233a6921e9927b2fa509a87f7ee002029382aec131ff98c9c40972b51
Date: Wed, 12 Jun 2024 21:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718229502
