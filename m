Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38022145B3E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761451794; cv=none; b=ItxJc6QymtBKgL7mdp2cSswhmTLWbGfHWgnRGduphPUz4pdTtBANX/2upmTJNAE/Bexdc5RkoY1kRMI17GOvZwFIdg2DLetseobZTj8Jwh4eEIa6G9bSMzm0VEKwmYVfxzJ2QYITICllrHSL8G46B5o5MJjEDNXLAJRqLQ5c8vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761451794; c=relaxed/simple;
	bh=6L3VjBcsKgBdoWJnlPHYjyeDKzs7nSE9YnHHkAVc5Rg=;
	h=To:Subject:From:Message-Id:Date; b=Junt4g2ZSD5tCjOpZT4ZZf2WVuEsld1lPyJJmTcnsMBUkyG9MhJdUuL7bHCquYJU4SnPYG8t98buzTDcWmhsrAb6VBlPq4ws1tiAIeaLnP49pu+t/8KpndiR/8nhftHGRq8VG8NFeAh7i46EtNUunjPUVJiywHIRxigaWjNa5j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWhMFWQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWhMFWQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60A0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761451793;
	bh=6L3VjBcsKgBdoWJnlPHYjyeDKzs7nSE9YnHHkAVc5Rg=;
	h=To:Subject:From:Date:From;
	b=CWhMFWQDcM9xxMH6/ppzBg5KBJl1gykKPTAsIguU5A+DyMkzX5R5KQqKUCDZEmo5k
	 q5mmX1aD+ByiMoRsH0aC4i0knn6uv6IEZhaUuAkDpzSePquwFx4hlI/oukiu6DUKew
	 03i/eAwQ3lAqR8x0T0d01yhTzHrPu3DuOFcjWD7e7MmhsxfHMFXNkpK0mZr9ZR73Bb
	 uuADEgMYGWd+6ZR0WVXiDK8n7JKovk4kiiq+yfxsNoWbSp6ICw/noBEWjK/zA2/kuv
	 CTDWS62QV3kygpxiPpB5mNV9R5h/zI3a38pMg+Bjl5hIyYNeZPaFKbSgeqh8qU0VBc
	 eXKbSXt0FUelg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94504CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145179357.26505.1516946046333227520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f6f7a013daac5290beb9062dbc45ddb966c6e7d70990c2fccf83fa8b9c7206
Date: Sun, 26 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761451793
