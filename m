Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21403352C30
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768330434; cv=none; b=JZvqLZFCrMqOWnxO9LBmC19cGr23UrANcvGx1GpZKd4Dn+CWxjtG4u79ff4I+kkmUcaKIKYQHd+bynqtFunSQXevO8WhFKD39zC6OaZiW/3RBjgfOem/N23z1JMjbghpQa61pDnZdQHNRaFw14v/3hrQ93KXLfOyyWqO0b/JMco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768330434; c=relaxed/simple;
	bh=fS6+xEThOkJfinAWh0n/YV4doW7dhqwz4NjecrFkL8A=;
	h=To:Subject:From:Message-Id:Date; b=krqSFyqf45yn8ypvLkC6nwvypTAWHabPEtslhrkRdPoRQI2DbuCFYxQtQB+BBtNLdNIqvUQod3FxIDWV9U+F0uwU5NGPx5Z/d+j+8RVZu3UwGmuzxmj0jBaqhZa32l4LB7f7uoXzHfyggW4yXynJg8Zj7YLszSqfqb98GnvCECU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3UL8wDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3UL8wDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A698AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768330433;
	bh=fS6+xEThOkJfinAWh0n/YV4doW7dhqwz4NjecrFkL8A=;
	h=To:Subject:From:Date:From;
	b=r3UL8wDjoMFCIaS45eC+IeUPo9xWwcQ6+9ao7yX4GGh+NwTYgHIoex+xwEI4dsxFd
	 CkVNKj6ppiFZL78V2NTYdZ2uWEO6Bk+zX+LpWnY8NZ5qs1x78ChHWslgQwuouxdPKp
	 bF6UjHF1tQmkpkLEHOR3hsaZ4pBmCJGI3pZJMVi++kMDqGSFBWuyzdbkUHf6XXeIP+
	 oClOwlYdJbVi5TJzymCnEabqjSQOztrv2/jIKMjqm9xlQ56fsVPIKX1G+IC5jUhrpW
	 rSw1jFM7K6nPd5IDQydlwwjOY1fxGrCcMiC/oDj2acsONYwKcOcdVhZ3hyrfrEoJLU
	 ED26q8hSq+SNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B8D2F35E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833043359.8615.5289340807334967243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc07dae2a5eeeeb7f38c1a9fe1958bd474be7d2f11e4d962168809c9e50c4127
Date: Tue, 13 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768330433
