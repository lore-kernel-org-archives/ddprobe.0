Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF9E3B1B3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765925034; cv=none; b=jtKEvF0NN5DGAEToBF6PkYhqtQRkTtTsUDmvx3k5C5BzhnNMznSxZwlqMU3epa9QJ/Pu0QdQiCbKCGx6NPaCJw4RNYgSUSPVzgG6OPqQMNkuzwNuL5JKJPHqXDDMaWP5X0s9re0RltLg8cubsUiOxLgYvq51HTngCKkCXlx8pek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765925034; c=relaxed/simple;
	bh=k4K3caGahXcrCDcO2SDoyZRY6g4DhZHpz9zJg2jtkO8=;
	h=To:Subject:From:Message-Id:Date; b=LrAOLZ8YpabuEtc+4r87/e0MnKdrTiaecdfBcEYKLt9gQPESFz3xoyMrCdGxDuhd+66oHc+YntSiOTMMPLac6Bf0cFJ4qnD82ugloC3O4ihKBjnCPYu4VR8Xy6+1IULgbT481XvN34MTAOYX1ER0OG9d1QYn+lkpGpmutOINIio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJdWASCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJdWASCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3CAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765925033;
	bh=k4K3caGahXcrCDcO2SDoyZRY6g4DhZHpz9zJg2jtkO8=;
	h=To:Subject:From:Date:From;
	b=YJdWASCt6pWocNGLZpOqwrvgBoc9EqwUHIeWOx9q7k5sh3NrnihEgS+8nBIfbGBt2
	 gt7wHdAZmv/S1VsqJmNYx/YDwyUaUpJA7y/0v1eHZ8c7+CeA5udzulkZZ+NaxrhMRh
	 fauAWo18bv+NqGUkUl2m05Rz34h32xG6g9zQ2wxjFhJZxMDKcWd6YmK4vvz5DxwFSp
	 XXabeMXpSKCzwqjR6D9Pl+fq6b3tb/ranjNI354H3akf6XddTtBxoKfuLVllFXEG4E
	 xA/KDAbgrmVyq6+gMBT0I94/RgKLGCQmi38qsTf3Ef1Wo/4vyUPeggdBKXO7VhOeMb
	 Lsws8tOHDuxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8062D637DF
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592503363.13949.13046344288860067977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832bb9a44490047271a1e58dc8560bf6e991f7cbff6fe1e20284315823662046
Date: Tue, 16 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765925033
