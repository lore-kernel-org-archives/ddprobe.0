Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4574823CB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706626696; cv=none; b=bTaPFMZkXNj03zkdfAeKa45QPIuyDs+ZTZy1O1vGZ12CeA9LdPBMyFas7aeq0V0/B/5wO7KaMQZ52n9lPIMzCJ+aOTaE1gpdg4/cf7r4w5WzzIiS30zNiDaxBtPEfTLt0BaREWXfCRs/NcDOorpHWoX1s/88fV868axe8ct7ZUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706626696; c=relaxed/simple;
	bh=wvy9DyLnZjcJGquju+1tyXOsYBhtZxU8WE31qLuvF80=;
	h=To:Subject:From:Message-Id:Date; b=IV9RoWGBpgg7COmgcLG7AMHfjvV0JFc1nlDplLc6xwbZ0Ae2RBcaopOJ3zjUDNlKWEhjHfTlKBxf0XjCd6XiGwgeAmnJjrgw6L/IecCnO5/78O5fUp7fMdUiZK2yDiErbci3WUV0L+0sDSHXXYexZ+Ki+p2wyqlJln3iz9sOzDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQeo58Q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQeo58Q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA98C43394
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706626696;
	bh=wvy9DyLnZjcJGquju+1tyXOsYBhtZxU8WE31qLuvF80=;
	h=To:Subject:From:Date:From;
	b=QQeo58Q+itdJTh2u7/k+Lr9mNLxieJJA+vsb4Tn4SDPUEU52fhwfEJt+oW+A4NZ9Q
	 a009Z9PGAuEF5YlcDz/ZrFl4BBxQWe1F75dqTNvcDXswNsG8MSdb9QgN2ixf5xPg9o
	 3kwArpX4BGw9uRbMxUHF5oKBQgmDFapKIFTkiv3vKV5vGrtDTWS/4F+FIVkZ3aub8h
	 LVbzy4WvnXi2In4fw6+whDQjfFbyfWoZB2tJ/j00dzg/cntwnvFWo/Sp5zlrgy+9Ht
	 8hiAQ6IP56Hhs8uIhnbf+RZ3PRpgHDXw7OZSKg3VAFEhgxnwIkS4tef3AEkYkjGt/Y
	 TFCFdlhR6LRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D856C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170662669637.9243.4585450097864862877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6aef5aafa5fe5e81286ef5fd36eaf08fe258a6e000f721d6cd21901ad0fcb0
Date: Tue, 30 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706626696
