Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70ED7353B
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711487296; cv=none; b=mXfUuQ4SnGcPgtuBq/sneINoYYn6d8mOOBe0AC44hr5aDWSXo2J/jsu08dWfX9ysBA46++6hvSqownc8a2K2Bavxkrx0VJ8B1OzU8UqMqx1xEZlXM9q9EKEnGDXE513g2IcyxkloX60MW4939Jcq3d22Rr7ptxUKWqJcA4igMTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711487296; c=relaxed/simple;
	bh=9skn0ECYPOZPggpyNXyMyvA9AGBpmxRvxdbcMGnnALM=;
	h=To:Subject:From:Message-Id:Date; b=jOvuTjXKoJEZ/dU/xWHO7jmMDzAMx/kxdJrk9xVJDW+Vv/UENurSj4k9C6cwdXVUCBxomY97SBmOXZqBTHr6bRi7rQKt85ixsHbemDmfUDW0CeZxCLke2gCBTTZh2YeMY4o9uyu8NFPaA/qQr3DxK/zDrJCa7aVOsQ28oaW+pkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNQjbKSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNQjbKSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782B9C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711487296;
	bh=9skn0ECYPOZPggpyNXyMyvA9AGBpmxRvxdbcMGnnALM=;
	h=To:Subject:From:Date:From;
	b=eNQjbKSam21jEL8UGZr+mWzO562kef6AZnrB6Smkpl5PLBPwJSDNj3yhqoSE0GwAF
	 Fzt8JaidecrVrnP05cr3x2O3/3qwnxLUR7MgUy7CGbPyDFC8Jbgjg+B3OZqTeQm1jN
	 iFIRO797y5KvvVAvech/+fGGLnx8m8r4d800GJBnLlhVw7POpdU0V2Z+KOksmli7wN
	 iZRdEpupbtsKNCdTwnrw+KDpn27V3QAYO/j3e1Vc6WZRAkCJ45PSCf0uqIAQfSYuXO
	 2RA4QCSgA8m7DADtIPEBNiO3eB4qvGsLvpu/g5P32qH+ffALHaCu8TK2uWPaj8rvoU
	 ELnYzWPpIqM8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66935C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171148729638.12539.9979559234870922585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24c0adbcbb5f809ecc40c1cb589086c58a50a802ec02da3a7284fcbd7032b96
Date: Tue, 26 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711487296
