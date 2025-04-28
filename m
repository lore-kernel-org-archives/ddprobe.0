Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7148C1E
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745867395; cv=none; b=c7YBH3mJ8MKGulsTJkMFl030LSYRu7IjRWCdhtL7q98MiA5zJJLpO0thLOhGFbeCYcge4C1ULv0ODZAyjwNM8aEj19lCkJWkTQ2ZZawQC0W2SDNy50spqDOgKReiFGmOwVgnSlgSBi1rXFPG25Kl1P/Szi+CBmRUzF7ZHC9dP78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745867395; c=relaxed/simple;
	bh=eYsPCYiEMybg66N+/jP9gfz19xkvBiNIf0ae47hFZMk=;
	h=To:Subject:From:Message-Id:Date; b=lZPUdffJIQ7rRjAVkxxsFVvBMs7+eO0zalMjl8PfuNkwE1VhPaEkoXMBfz+eg0XvqiJVLEELNzG/kJlc3gi2Kq/CjIOoankYhAXeX9t/sDs86mhm2axjINE/IqpOobRGQ+uclD4MBGtLz46fBDQxl1SlQ+KRRbem9Legl1Dc/PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoEXsORq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoEXsORq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4F2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745867393;
	bh=eYsPCYiEMybg66N+/jP9gfz19xkvBiNIf0ae47hFZMk=;
	h=To:Subject:From:Date:From;
	b=JoEXsORqGdx/gfWkNno4jhOhZgmIXoGwyWa3CArxtv0RU0y5xMgf8S2nnGuR0XZfg
	 oSqcY5Wjq75NVY4J93udzWtLZBIw4yd2XkaIdpMMlwxraQbXUZGb+UsiNvyJWLoUrI
	 jt1RUChhkM2DpT2XrJRjUxkrgRxAVRc/q844Mhme/Xv3yZrWlP2zw31uNWzUet/v9/
	 oLQVs/gVkpaqtmlkWRNHCOCg3+p0tSWWyp5eTLCPVqS1do3I6yrMLOLR2AJOu6h3O3
	 oO4suLKMBQ+WpGu16h8z7lQ2MRJRuHba5ZPI6z4v1RI1Em5knX8iPXBpiMXbNTxPbA
	 t2YdE3baPTuQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B7C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586739357.24059.16753833945757016745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70816013b23827b76e211a120053d875a2bc29d0edb65e74243a976779c014a
Date: Mon, 28 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745867393
