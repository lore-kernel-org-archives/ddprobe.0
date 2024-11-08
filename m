Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DD51DDA2D
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731066354; cv=none; b=SyYOmYHjmAOU+HbPaZrIX4T0vGvxx/6QCT97lFHl8QwRBp5Qt7RurpY+in4ycCQP2F9AVGm2jlk/lysjecOSZyFlqGLI10FKOYArqND3Swc4SAyojIMFugfs7goMIcRmRtkCHgbqV9qL74YD384tGrbXkpWhfSvG3CgnY/NIwhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731066354; c=relaxed/simple;
	bh=Gt+78J3sTPktgiGuA5RFaHbmtuzfsiwTMzbFSV6+kLc=;
	h=To:Subject:From:Message-Id:Date; b=gKZXwCgRF6Tr9rP2wbVj/qCxlFNXL4dliB6do2UHhVOmrckAYZec9IrqRiGpE99exG7RZJ/7HBI4P21LaqWHo5qiUJwZCT5tUgH50X00oyTZSZ/dEN+1uT8/MamO0gG2kXWqSNx/wwawKwPN8Of3BBXI6HKbc8nqFidZPmu+RTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RROfMlXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RROfMlXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36EAC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731066353;
	bh=Gt+78J3sTPktgiGuA5RFaHbmtuzfsiwTMzbFSV6+kLc=;
	h=To:Subject:From:Date:From;
	b=RROfMlXhWGvjvjKeyIBUkoYHEDGERX2+nTyKsAYjm5FsQ8J+TYyZ7uiQXsdXRHYvW
	 XaVMpaYQc+jL3/epLO9Ceau53eWj3HCuH9QLlTdX0HVoO64qJOyjujITtB3EAnc1nj
	 zOXCdyQFXWYQNkC2dpVoCgDFejqplR6MOj+e3LVvdUY33WFqBIyMbJd/2BLLH3o9Jy
	 QNph4CABCwxMNrlVM5ZDZ+RTxvDLyHp5pObtwEBmKv+bz+BsuMqkkxn0U7dt9dEWkP
	 9rH06dFYj+nbEYsG3pxDhAmQHZRXGxoJFYrOf0M3eYYb4AUz04ztXzYKVDHgqPS62C
	 RtduO752zJGIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A63D5E15A
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173106635358.15694.982768739320698323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de051d77bd715c186e6b7b0cca2ea8411cde521160d52f54df190825379965e9
Date: Fri, 08 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731066353
