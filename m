Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663494052A7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788429634; cv=none; b=SNtScNNkAUXK55R2BeO0dmPKXBwj6W3JX1D77mzNj12DRcW9O+xW0qu8oDuJ8Nffq/qRUUSz2u2XpSXhEu3epObjzWztDe2VwAjEK1xMNr1owIuuPvbH8+YxhoY+OvO+7pcHDGYp4hN4zZtgcluJjcWWkAodDtQZRUtXatbjdMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788429634; c=relaxed/simple;
	bh=yrqDRhSoFFEYjdNhHaioOa8csC6ae3jDxKvy9EQz+fA=;
	h=To:Subject:From:Message-Id:Date; b=bz1H47ARi8IUKL435upwzTdRwsspII+YJP5f3keUvFQyVHYOa3JJevZmRYrWBRM1KYpfNFo+wjkcHQqshbs8874LkIP/jMVWGllfk7ziaqz6pi7PxxIXN5/42UulM4s507DNxhR4RdTMk2sT0UaEAzo1EPD+6H8FBMlQ9xVZvwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQMrGjxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQMrGjxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE429C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788429633;
	bh=yrqDRhSoFFEYjdNhHaioOa8csC6ae3jDxKvy9EQz+fA=;
	h=To:Subject:From:Date:From;
	b=WQMrGjxONsBcR4BeEBIA5WMHUeUutHAcCodGh11pVKMKPk1/K8M0tqo4Z4422mYg5
	 0tnOpEXJ14DDY3xvl4AoNGqJZsGN/VfiH9WIEHQ6zq5MekYaHcuFgnoz6fqnm16l7i
	 cgKsNDYTmNI5OLKa/jVEem9VmBLhvsUDJdDwx6gpV6Iyv3aMMKNef6plpWmIzdaZ1y
	 cfQGTQsuw1wuFajoBOLMkgA5TJ+KfWxEVEz7tBT57AvU2XDv0tpvpNCoUpWfcYatlG
	 hPz+GN8xDHuBU0thSfIcu1biwo+p6mSUQNVMHYEWtKG9bx33BfvTAVt9rLIWRYTPX/
	 DwmbdJss6qffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F9C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842963369.12862.8270128988598395211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b700c6806176105408b838bb742458fae47e71ff2074653e5654dfaed71be2bc
Date: Thu, 03 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788429633
