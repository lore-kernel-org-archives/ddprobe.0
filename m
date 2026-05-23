Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394281FB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779576154; cv=none; b=pfMdVq75R7ZpWymOJjhOKnRfl7c2ZlZNWam4e+AsneoO4GWX+gEIOtAjHdY1XTMQ3oLoXvQDPYC82knmAQOc29Tc73uYfFVABjbMRY/tpwr8UK75OgtNPHbH9QoXPkCEDNiqNqVYt0Gqu9n8Iw3E8FnQ2T2YcGxJEZvKfS4cQ5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779576154; c=relaxed/simple;
	bh=92UQHUsY69SziuwjzIKxeE0AeZ2ZS7zTByLEwKjbWKI=;
	h=To:Subject:From:Message-Id:Date; b=L91uXwQRLDYLkRMpN6YJ9N5EW2kvZVD9kqPo+DyhGNkHcpGver+opmdQig5uUrC0OJfGKwGGg/8I8FO4T96DQTbgcN/uL/CmoVQmu3NdNWSwyhGidoyqoE006fXpHxvCQwoiGOZnBpzXjssW2SN2Xn9tCrO63oYcPjrjktd0P+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9u/qwhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9u/qwhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CB4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779576153;
	bh=92UQHUsY69SziuwjzIKxeE0AeZ2ZS7zTByLEwKjbWKI=;
	h=To:Subject:From:Date:From;
	b=M9u/qwhzWsdHAwCgPHBOEqDDOGEayuTBiS8VdEM69J/lMYQC2AhfuGlt7nasom1mM
	 f9HB9WybJSS9dp7hyuKPs/E/k+OlYfyCtD6c8th8wbGRtoB5JUkn2iokEkIHf9Zb9N
	 hwMVFmuJenvN/OKVon7qqFezqH+GPkQnHH/UJ0PO8fSGruqYa+l/grSbeLFJVJK0J1
	 eW/i0+e36/lVYh226unxwghVPEO9VUIvcsYkv9VfZPRisodBxuGHGDYs4Zb3UJcCDK
	 iKGjxFQbHvQf3nf6/1KERzXXNJxy2lglTqquuxTd8WJBMp4FpIC/JKiOXntgLaFpgf
	 lI0heehrH7xIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3AFCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957615368.31433.4600707897617426904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d0105df75ebff0e948aa9804a38c45fe0d11853faf6306d0e5b4e1668a5e65
Date: Sat, 23 May 2026 22:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779576153
