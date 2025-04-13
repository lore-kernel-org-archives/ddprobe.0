Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4424D143895
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744588195; cv=none; b=TAFXXqYw+m3SYQz1SOqkhw6bBgfPPQTUpxBCZR+o3I9o3H/eOzAmMZlRCBiBSb3oIxoYZNx7lhHvTmJpCAwcdKDASIyAxl2k7FaJcxG+1KGCtFkdKBpmEjKBtMbjaAhmX7S1Nkuq0Aq0e+FRUh7wBKfBZlat7tVJK46aF4qKkmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744588195; c=relaxed/simple;
	bh=Ryn1JwzT0WCQwMsIcNJddupC4qfa3Jfgd30N5VofEgE=;
	h=To:Subject:From:Message-Id:Date; b=KaRp4ns8pt4Y5U22+CPlNhpf6Kt8sKBPsJBu60KlagicGGbZTiNKPwvGmauq65wMjkTy2oVViYFx5JwuvAfry07xvuo3q5oEkTOpPGoakm4ytmARup3s6IBuPNbz3AovG/R473dobXqbaYpY2UaZ9kUtwgSts7jAxnTrmaTdxQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrQKfrU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrQKfrU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2122C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744588193;
	bh=Ryn1JwzT0WCQwMsIcNJddupC4qfa3Jfgd30N5VofEgE=;
	h=To:Subject:From:Date:From;
	b=nrQKfrU9gb6J6FWSZrQXOmnhjrsmxjg5vjfPcKEza3jNfehH8jZkDlfKzWLIwMONf
	 5H4gz/RSLej6Pepktd8fz+ObCNi2WxV/4tdfi54ujS8DhUo2JaIiMQt5DK6l58WT2a
	 EYtK2Shu1mGiPVdLJNAqmdITlHqTxjRm8ntd5cf+UsBoVmIHrbFcNY/ch0BHBWXcKr
	 xaJp3YXOizXbXx3no9AOYtgghJQZNUZG8MYwV+9vw+ftXtWVc5cICQY+2QfpwgqNdu
	 71W529tGRPRJEwy3p48+z6oBLSv626N9Ht09pr3OY3575vfxL8Eem54Bjqde7LsRUL
	 hg1CQGk2ygZYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BD9C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458819358.6157.3166300288107488714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc688feeffb2b83b141c625e65e23b0a0df985f21581dfa3d3ff86adc6cf91b
Date: Sun, 13 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744588193
