Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E233AA1AE
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775637934; cv=none; b=IsT7rOy7NFbw4UXD6oH8JN8hGKrErpHPWlQ8nP3wFkI239CC+mX6M196je8QZ9nvnk/obmO8kXIWQ/aprDS4Qp1F0y7Ep0lACOr2ymVKu2ffBUowa2Q1yJzLPZMc0V6tRFRdGyySaJaP2xg5r6aHe5bVq2BqjoVSiPXa1JOUO9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775637934; c=relaxed/simple;
	bh=XrM0jLwtRMIZRaEYKxDDooyetNVnZjfMeuMS15U76Xc=;
	h=To:Subject:From:Message-Id:Date; b=A8uaoTViG9Fzbq2S57aIGuzxbWvqO8IY84WT/ogIeVjAWqNHYN1IroiAZOoe721PllpMSDWO1elzSDsOzkO+nkHavqepBV833c0QOLx0y5EeuPC18rT1k8zaqYNp9udegQPaQgvz2QMgANy0NMmqs61AjrV0tiK8qQkXwv92prc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvcgMwLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvcgMwLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD149C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775637933;
	bh=XrM0jLwtRMIZRaEYKxDDooyetNVnZjfMeuMS15U76Xc=;
	h=To:Subject:From:Date:From;
	b=NvcgMwLFzjsBH/ZoEXU/VoX9oLct0EDA53CbtQyvVyDq75B/3EIwKBz2D22gxBcMn
	 jSjJQIiDjG8HYh4lcVzX+jUlCqYIvMrqPmEmlj9C5WIQIddTJySW0SpbuVeoPtEtw4
	 dWug05L5cV1iMptsLp1Zf+UFEHlgrdzPij+CZaw16tT5tL7cBdHqVXJUKpnsUg/TBb
	 KvRzr/TzuTfJ8wuPYy8dWgClbhtf1+XfC/4Qe3bFbJqDTr5I6xO3r2fU5rNwEk3iNz
	 ONLt0ba3jsP5Q7Y31i5JgkHLs73tYLO1gqqku523RLtqPyPSRw+NDCtaGb5s0DuRLR
	 kkBjSFuhkVWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF83FD5F87
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563793369.7321.16412860039603258035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b0f0f470f8b3362bd310d13f0f1cba4e9f2c12a31c14e7cea98f19d9644c3c
Date: Wed, 08 Apr 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775637933
