Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C95EEBA
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770302033; cv=none; b=Q8P84kXgZzGWmLBjaMBG/ewEPChAM3yAX+Vqcka/iE8lEmwPSX4gW8XTUq6vEFixZJ7S3kC+o+9phUBa5Efthk1lnm6sIohRufTVyPIubPyb3KA9Ue3GKgEtAeOvmq/0NFUS+qCKykBSP0SiW+nuaqSEimy32J75Eh5vEqCwPxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770302033; c=relaxed/simple;
	bh=UiVB7uHwPU6GOsd6yQjEJ1cORb1aQksp9ujCIgBOqLU=;
	h=To:Subject:From:Message-Id:Date; b=gpQcaV4wwmVL+Fu8bPNXvbZ0oNxEpbD4CU4CIeMmtxQ8AovTOZRiJzsPqKbiWLs+nHs8Rhw0Iyz5+Q0oDiLLv1cEFKcFKZEkzMeaRrMYxxZLoLZXpGUtGn6MAaQYK8MxCZrjEvPkdhKUDaE9wOTivICQXCB33XsGrgZBXMH39cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTMSDN50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTMSDN50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770302033;
	bh=UiVB7uHwPU6GOsd6yQjEJ1cORb1aQksp9ujCIgBOqLU=;
	h=To:Subject:From:Date:From;
	b=GTMSDN50lyKktry6wFjlnOdWE/R/pDdEK9CugTGVq4jscX6083YQoxYo6R6c3tZZl
	 r0q6WL4k1gm6oAPWRtOtdGFF4XQtpi6v1Hr1e1EylYEgAdrII+GxpVJCQi/hWEROHv
	 uIbjby1fMo7p4ZHIRrOItGnzCPcvSUfFfdveGgxg2I2pAQ/+YT/3YPW/TfbRWDi0++
	 m7kPxtvWXmFvi1n+z/SjpgNSddULx4rddKD9e+dped5X9I36XzIyjddB5tOwkg9FKF
	 RS7zriTVYTdfj5V7ITIVa7z6thAjHakrL7XPfPFUppzdlavt5iDUhZgcwB1Jwl2glZ
	 QaQdexRRZMxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC7E9128F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030203359.24490.14349213363991354895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59834e738544f1e886f0de0e8b01bfe1079bb766337efcc8f37d9c4e72c8187
Date: Thu, 05 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770302033
