Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF5C29AB07
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780329874; cv=none; b=Kei282APzC466m99CGxOXvldTXK0byvZLXooRQFIMNbbGwfv4OygCoMfXOgVeNJsrsVKNY0kLblh/CtACFMsxgbG8s+Ts4xRM52HO00fj025IPy8K0bpfTYJWjkbfrqTJbZKDY/1pGUUyapOaavpHxC8Lm2Qo4ZswWC2pIIrwTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780329874; c=relaxed/simple;
	bh=nCzjs/z3HY0V04sMnzuY4PNfJoYtInHAmI59WJWVtgc=;
	h=To:Subject:From:Message-Id:Date; b=m7nImvNWeoonwrcxfdtvaWl+kkBpO6LiOuTBU0axcwkEzBazsLOW7RCT8QxKu3uRojN32ZMGn96zQv7kP2JVcVKZ8P+3g9mCP1+vSDFIZRlfu9GA1P69rTr/mTl6JBAIVthC2adHrRryU+CU+zDhrdKBlzFsOvy2B1j5KyFCJpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJDoAyMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJDoAyMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC4BDC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780329874;
	bh=nCzjs/z3HY0V04sMnzuY4PNfJoYtInHAmI59WJWVtgc=;
	h=To:Subject:From:Date:From;
	b=GJDoAyMurI4olWhweXrnf/sOCB/MWltSf35z/FDeveENJ8mlxC+qnQfU+3qrvHiX5
	 H5HS1uFOf/NhKep9pZMshQvLqW5lbM+Aw+hy6kktMp9Gp9xpLWh/p+408/DkHajEA9
	 viAcVQjMLgqMLQ7CrhRXNXZ7MyheoZCl+3BnNLLFqQjyuDO/rVY72Vft42Fg6vHxFJ
	 AwaxdN4gh/7XqILDIBifp4atfcys2NJT0/kaQVb6LCTCqsiFRjycoC8UjypxJV9wNX
	 OwA3bRSJ+9ZxaUPPYEZp7m+b+lJ9Jtl4tqG1yJhvodWenEIVoN/OcdfSdPKXBk/mkD
	 sGXuqnbKmtfdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6191CD6E57
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032987376.32737.12175664847005436554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7fd1a08943d21b29cfb026ebc7481e843f539a7a69f455627522960b523a6c4
Date: Mon, 01 Jun 2026 16:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780329873
