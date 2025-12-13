Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02A81494A8
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765653173; cv=none; b=ouXgdm7McQW2IIc5AGpTyIekNmYRH/gN6EqBg0ej2PND8+xF4BMuurnjxdR9ht2SMFuym9dl1sipewZN86DUwK0SLwrKYPQpGD1wamzsRYoirc/RlSeE5k0280ylK/pyTg9kR30/TCOgqYYc143YrHjMe9lgTEbKFXSuA/EOhx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765653173; c=relaxed/simple;
	bh=ngHryy0OEkKFt0mmljkv3O4bo3GjzicOMvs6vMWJgcQ=;
	h=To:Subject:From:Message-Id:Date; b=l4QkDShgF3HCvZsxmGFims3YdNO5G3qDoMNnJoH4rYiA1lJABrnEzG60SfYrMlMenvurs4ARbhjs96AT04e64pNXkwni7tGEpqNf70eYIApTE3OQSgt85l8GTwLNmYh/SpX/i3VJ5gWetyIIj0UXBIHbq8PLPZj7Ku8hgD2SYJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjoQs9Ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjoQs9Ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4868C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765653173;
	bh=ngHryy0OEkKFt0mmljkv3O4bo3GjzicOMvs6vMWJgcQ=;
	h=To:Subject:From:Date:From;
	b=jjoQs9EpTMmjAxI+diES2xEF1In2N6pESTusms/xtwhyrG/mD156bOJk0Z3E2V/1+
	 0XWmYkhNuZiF5ZkMt5fi46y3exlnsAkADz4H7sNpot2NfFLnB8r6nggPNtOq3rXZAh
	 6N1Dj/tT/LUWxe9qz4m1nEqrOBbfJbAziVUS4nJvDxJQ9EdK196swvd/Hvl45Dqu0K
	 1NG9aQUbzHmm7ZmOjk+HmUP/gPjMx0IE8yhh37pg7eB7y7cY5UnrorvCPFzPJnYHqN
	 4BBN+nA/0jI6ysM/rDaDcm/kIYoEiYuNs2CGhtPAdjqeFOw8bWkqrTi0TjikJg1sgJ
	 6ecXTwW4BMM9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B1BD5B15E
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565317358.9646.811300827632286439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f9e3737139f53e49c2f12c68d0290a899e00d7a69ff54ea34479087bf001cf
Date: Sat, 13 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765653173
