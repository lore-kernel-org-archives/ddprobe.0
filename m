Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFFE30DD1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789095034; cv=none; b=GjdMeuf9eqR3cSxJJP3OHRPMYNw7G4cQoM0Vnzf/SFCjh3lcvvyy2uFC2f6j9+T3ky22i4HZ6AwiFrBYNHePTuTAfMhjtbdsiX32BiyQmRsw5DCh/imK4OJ/0rz/a11v33ZNh0M0fHdlCtngEfikygQWPW1wz+HbasTPwP21ECA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789095034; c=relaxed/simple;
	bh=A5urFRph+OaxU0Qv+QeqstrUHMGUuc+3K4LJpQy4XHA=;
	h=To:Subject:From:Message-Id:Date; b=lMY6q4tquTfS+tvOhx2tCTb+AdgSMeG6nQqKuDknPs9PCDJz6oCyy5fIup2SQTdpY5QhOk3HMa5NkcJgnTdOl+iw6sgAtEiHnIZ7gQPJf6AEJIlOTwNSb4K1z4njvxlA1+RqNwBQeKLIu6jkeEnwDfJf+9O+cfnI6GRXtTQkyZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVX0xxMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVX0xxMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC256C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789095033;
	bh=A5urFRph+OaxU0Qv+QeqstrUHMGUuc+3K4LJpQy4XHA=;
	h=To:Subject:From:Date:From;
	b=sVX0xxMQRlfXhPaUuE0fIp+cbaLVHxy5J+SeVWMdBuHJvPZPxiQYdzNAnQhWhZV8B
	 pVnjsBpKrzBxlbJXqdmBU6QJypyX+l1ZOgDn/oRHBYVwLsjYag/HJEVr/NR6bkCA9F
	 m25fyIHJpZyUmyr6pnY1h2h5yT983lv43qOafH0Y4zvYI5mccKEbPKyTUgjIlHMJsI
	 5MYWjUz9fYsrinN+ZnCQKs6iVWjgdo7jnNOTXZnp9BQey+JhYqssFmohWfjZxUOcnb
	 YtnV/AhOOM/2ckBx2B4/aUAdQnBR1JH4NkMXeiYEnQYuXSt2uSuDGK50i0tqAbMn6j
	 vkowPj15kH9RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA660C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909503368.17799.7502934069462760977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c3bf0f6b14b792cab9d000275cc88e7bced7ce49667d61d4b24063a75ad986
Date: Fri, 11 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789095033
