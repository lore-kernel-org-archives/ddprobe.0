Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46366250C0D
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747028994; cv=none; b=Qywf7VpvsJ7KqriXn/caY+UhLcJmYRedx/rIrhAZDpFrjxyC77g2dxCVcQggR6n/e6oiovBlkHP0VSNPbCnFMYFhWMLbDUwmdpq8NpO/NUOm1l4TjaAvipRoWEwthGef6n5OZ20GKGSbRqjgK8SKXyy4BC17r+8xHlO1J5lMjAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747028994; c=relaxed/simple;
	bh=u43VELUjwkMc9ILLQjLfIgZKnGPF75wY+t7uIseKhhc=;
	h=To:Subject:From:Message-Id:Date; b=jHX9EjbQFesDQI5Z2ieZE17Rdkw3khaUH0IXyTCZg8jkLZ4a1xlotZK/L6YN1AMDYKvXKA+MCyKOdbD7DuoJfVzf3uQdF+caIvA1Z827I23Duu4enIYQ51dKYz4+mnbkbqqSy1J5UOgAxrwy/IM4MF+ANvsGZt67mbTRRQ+fY+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0rJcPWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0rJcPWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29EFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747028993;
	bh=u43VELUjwkMc9ILLQjLfIgZKnGPF75wY+t7uIseKhhc=;
	h=To:Subject:From:Date:From;
	b=f0rJcPWmiqL7P5Dn5CXU+0ibDtZnUN9kScyxK8GfMBj3hVsEHXOYexKHKJiAwyFHV
	 JgKkSj7HcyifMrQ7mUKFDmgP5c7hMthS6U3QQJSUehDRrTXbuff9GAmEKyUkNE02W7
	 xH3kFrVn9hKrkmeIG5ZemUwCbiJ+lmMmpDvtMt7wgc07/BaCs0mYhkuMEFI2o5O9jq
	 SzctyHjhWi9hjCdtpr1iIjEh9AFGoAChj/dLF1N1Yaz45i3znAVyjtgJbWwIRXgkRw
	 lIYhDOVe3aoPqEHnr5NcSAgRMvJLZNHIyLDR9pTMrx0e/R/G5tv5JiqsVwuJ9NJwYN
	 M54W080ozERXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC97C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702899358.2996.7166464301347390309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c07f231e057568238f717c598117bc90efd1a701b6a5004e9059e29fdfa8f8f
Date: Mon, 12 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747028993
