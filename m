Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6756014884C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719169343; cv=none; b=dUdNBJ06n+HFc7GmtjMqFZpLWIsEupvbl6xaAeFuhVCJLJtDPcxGCed5YNKkFT0/kyxRSnrvmbrzulxtp/Wi3CcQdZnc8tMdg9xf4OGUaBqUCiPStQnlp0gBFOXc5QX5pyfNP0xv7BKsZJpjw7MegjQ3EcV898Di5EitqFFkdNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719169343; c=relaxed/simple;
	bh=z4kiSlgHjwMlMWWSFJrdhHHvKrKjuAE5c5MOdUn0E7Y=;
	h=To:Subject:From:Message-Id:Date; b=KCrh0UfRk7zW6LxZpBDHTgI8Vetnl1Mdw97rAahLvuuAIf4SKqyfDpB/u+XkuLl2P/P2cYQ9BCkyDTKgnYkg4MgMBMz/mWV6aQXGro3U2F5KgxEQloLCllsviyyL9HNRmz9je+r9Lx6XAukt6fK11LpE6peSocuM5P18nGaxQho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1yaSZOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1yaSZOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7979C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719169342;
	bh=z4kiSlgHjwMlMWWSFJrdhHHvKrKjuAE5c5MOdUn0E7Y=;
	h=To:Subject:From:Date:From;
	b=p1yaSZOjBvnUPldyeB8KgoatYCv61U/9OYjhDYtsUVNpvYCk36BjoeppoWvlkr2EI
	 ruu4wr+SHEnqRb+CTbYJrPUS6ieRVxQNCg9vCrBPgyXxbISK6c8YnqDmlMWF/bls7I
	 gqWplvdH7YHnC/MEZTHqwvij4CnuceRBv5dPK/lYmANOxj1RXm4gXcZnDhvO3NCR71
	 zmIGddhUz3h/EIMTYDliw7/gcG7BELqL0RM8grg5suWdLiTpn10fCGZEM4UXH64fFK
	 HanR2XAqapnwwgsF8LTqfHPa2nGSYM4qcJ4QCRjtauieasfZUeDXrTq091RLJ8Eakl
	 VevV3tVU1TA7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A31C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916934276.8205.2400828063310383257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154e347a3ea0f597df31266e2ca753b044a15ef410f3b32714f760e5580408a7
Date: Sun, 23 Jun 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719169342
