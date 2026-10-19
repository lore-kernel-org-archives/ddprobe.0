Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538A230567F
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792417834; cv=none; b=dqS573wuCAk/bqflUrMSaFYiyyxQ8AQCaRupqaqo9gWL1YJewn8w0Yxe9iuIXK2MCqzVNtHWXUk5xPQp+xKNuDqLRE72knxWQmFbTo4l/VwGiJE0GyJ35LmbfCrx73duc/n+vuufPTmAt5fxnB+yPrFOSjOPM0wQrlG/g0bOT1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792417834; c=relaxed/simple;
	bh=KP9xk5BfU8f8ruHZScKuwWMXp89YvVEltZxgYCXluaU=;
	h=To:Subject:From:Message-Id:Date; b=TEz9bmleIhPPPsI3BTG7pbC05Q6Lv6Uh+gV1XFe2caYWrJgDg2YnX37P5Ahbe8srCqSBFkrjzUDbTBsDT7SJZm5iLNztcbCNu13SRlW5M075Ab7NVD4x/mCvJ8Glb7SDaA+GMmW9tjFa9sYiqlj912mg62IwGdRH/ro9D1U5t9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5c/azdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5c/azdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04460C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792417834;
	bh=KP9xk5BfU8f8ruHZScKuwWMXp89YvVEltZxgYCXluaU=;
	h=To:Subject:From:Date:From;
	b=i5c/azdt6uQshK9GNqabu2UOK+J8thm927rT6zJUF44H4SJ2ThzrD+sTgDQFJ6ss+
	 +e0TJjK2pvlK1LgM3mP+qHsYMcFutCYObMV/4y+VvWg+LlfyH6WulDKizF3N4Muios
	 11c8U38P+GqDIgPtM9Qj8DmaRdOht4vRwgcixMOOdc+RW3qotVcw28FnVRxdLClaCW
	 AnRSR7LwYWE7b5xVciuZ6Z4JIIwKMP14p7Jes49chsvD5FrCDo731Ka81LhcUldUgY
	 pFU8ki90jivLT1EulECgEgHYxxWzIckkgebmPZnq7KS04oxkkPUUCS7MzOE+xw/5U6
	 +DWo7aPkxhBJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C842CCCF2E3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241783380.29330.9547448545026179402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac59a6f669955bff98d560e3b137d2afd0210700fc95e97d16dff2d7450a5f24
Date: Mon, 19 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792417833
