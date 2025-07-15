Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D75186E2E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752601194; cv=none; b=q0OmiBDG3hZj2OPrZfOHW5EAGu1tsLY71ukJGJaM1itKxXNcKvjSAxJxwfB57CP67ufaQD3C/d4JHzOboqw7HellsxKkZ5K3J6/b7mfRuw/0gGiM38DRDQfEB/U0qqR8+1TBkhvzwuSy5/ythqULEh4dhhxJHiMztu2qKt0Q+wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752601194; c=relaxed/simple;
	bh=s3IKccl+4zjhzEKQ6XvmjYlZRLmLPc8xpyLerHWWhfc=;
	h=To:Subject:From:Message-Id:Date; b=Lyw51l8Byiv9w8iNLvBYQ96aYFg4hTBgyAo2ysrAZBry4cdtZViKUZSk8i39PkdxRK+epriLD7CFwiu57oe5H9dqEIEGMohKXCfLAKa4CjhgvwHgFroDCruHe4hJoYu7LAdZTenKiis1JvrswqHVDS6dq/T1NTgxTTVkXCreI3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRmP8Yh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRmP8Yh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A612BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752601193;
	bh=s3IKccl+4zjhzEKQ6XvmjYlZRLmLPc8xpyLerHWWhfc=;
	h=To:Subject:From:Date:From;
	b=kRmP8Yh8U7XxKOb+lwZl9HyAEdaJV7tCtauQiM5yPNmTJ2dUBqIW62Lsf6PRCiG8A
	 oYsCziZGM7SRB7pQusosHRYsMpZ9AUB3xF/+eeT9Wdv6UdPtWGvsY2HWreaLSm3E04
	 GVLi4y/clQecmveRS/VsxgkFZr67C/GPSbd1lw5xXkzFKpcKB7e4ExKGrzEDrbN0LT
	 JUHmFKMazxaE9cTfC3DHUud7+Z8iKnhNA05xO5mIqqoPalV0cJlYCQH7n7zAuUCA21
	 5LU2mF9KCOTa8xrodhtoMmwVmoJjuUGHCSj0l7v5flUie33VGQtKTDaHglAxB5Qd3R
	 iR5LhtsaNwYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95498C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260119357.23196.11985723299970201436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961fb8dfa62378267d014bbce93e22464516ff2493d9fe54f3b984b894114be7
Date: Tue, 15 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752601193
