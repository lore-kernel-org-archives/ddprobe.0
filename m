Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5444C146582
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 19:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716405803; cv=none; b=YwqwYGok5FY6lyA9yEiD7mzAqv1umVVG129WQMAFiHHo2R6HARAe8eja1ndqQN+M86MOzAB2pRESNbPC/tOj+iR24m1i7NdDNDZy3+geaAdQz96TUkW5AW1So1BdrnZ20a5MkGo4KN7qRlHp2iKWfVucFREoSB7Gnmp06rD7REg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716405803; c=relaxed/simple;
	bh=Isph8zFZ0lWpyzcYbf+ikD/B2X0sx8kYXKK7FIoIlPk=;
	h=To:Subject:From:Message-Id:Date; b=sD1gfLuTyUax+E4xIx9Yq3ogCZteLUde+sOdirbgQUQ4IY4MTWECHzLXQLwzdses/IpqhrWRVob0itTanYtpRc1rXPCYbBr+Y9qIvyLwz3T+lljvkZtGywmElf3WubXaW7pNzsF1PAcMwQmnaUfsn3WHzEL35E+tSwc7JmirqAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svL4jWtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svL4jWtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF727C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 19:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716405802;
	bh=Isph8zFZ0lWpyzcYbf+ikD/B2X0sx8kYXKK7FIoIlPk=;
	h=To:Subject:From:Date:From;
	b=svL4jWtKpsToDnCdibxh4xctuW+5S0U1t1W3YN4iIEeWvC+LNj1xH6YQU8UmNGZtQ
	 FtUYssO3+D8Bd6ITcbaj0JgoBncKS5uYnytniZBHu6uxdncPGYxdOPnTPXnWJjha8e
	 Ag1noqDg+DfI7Jqu8oQWpoFs/5x+E8BdjTuyYq2M00fpo48jSFfSmOL4bRYDeAwusa
	 5Yh3L4mGfUez8lrS+NKuYf9mpT0razQE63spu+B03IkQ1M7ZnjbF9xedZiH9HMIOgW
	 4wHzmMzB4vawG0CqNeodNSUIhi46Q9CTtdNBjI+O0ggA3KhH0/D4UQ0XeNW531MUT9
	 Ed1xzRT5Uoo7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF6BC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 19:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640580276.32560.15358292085835282326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d53f0aedd2d1f1f46d2b732bd25f6c3d1c3a58de6bc760d93ba4f2a0b405b2
Date: Wed, 22 May 2024 19:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716405802
