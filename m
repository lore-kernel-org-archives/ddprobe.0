Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302AF2FE579
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778047654; cv=none; b=WmMh9oBOwgw/iTgjvEac1e2ULmaa0W9SwT0tuaZLfuV2/uhD0geNsQu+AOcf/CE2Cxr4AWHny0ulEhfXOjtZb2pDrhT66NMnBt5duF+wuzQZ2GeYrdnBy8SlubvwIH481PNeW8kbCJiL26gR9/2ulbDXKcvaOEmVXc8SJNIw1XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778047654; c=relaxed/simple;
	bh=lQrtACsOJU7iqh4l5Uru1Bkpg6Kp8TMD/BKovJdAhgU=;
	h=To:Subject:From:Message-Id:Date; b=uukVjMyIEJ5jc194z/a9uTPA6SQhb9lPm1bW5Ojg/12qqzdgbd/+pWqKjaadLqPJctR/5wsZQ7wHJzs0t3qGQNCYZublKR/kqzuXumCS+dTC9KofQ9gCLpZpVHZs29r51ooZby2QkBQPkON85GF9Yqdu9NaEbqvOXp1rArOfPnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP8eeHPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP8eeHPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1570C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778047653;
	bh=lQrtACsOJU7iqh4l5Uru1Bkpg6Kp8TMD/BKovJdAhgU=;
	h=To:Subject:From:Date:From;
	b=SP8eeHPI7S36sQoq/yPkyYU6v+UA52JtQ1K6Kbb0fpk+PTR7PyrOsH/hcshapH7Vw
	 qY/UPsdV/eiE7+sLRb9NiQpp7jYk4KXA3Gk+XosS/nMRGQy8qqmH+qdnxyWNYbPEoT
	 bDspR5poJLqGOaBaXGcNlZ8zfovumTUNwF5xNwPkBek9ER67sDVlWdlpdZ9Z404xsn
	 O39z30HM/5jO5qeiSxcA+vkCjW4Qkg4fsyM8eiPTfssoE7BwutiqZ3d6h9NghUD6BI
	 zAdIONZxhc4wRXaJbt50ch7NXX440k77ulKkIqFcPg+c/TtNWpRk1DP3CiuATdpoWU
	 ZDsjtOygDdqRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C8ECD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804765370.11730.1261592851263942751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0017d2684ee9157350176a50544eec6503542736fa4eb938bd038d28656544
Date: Wed, 06 May 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778047653
