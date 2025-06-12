Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3369F17A2EA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749726594; cv=none; b=lR76S+NBcuLG99d6odwsGEknfBKH0jDvAJDXyVOGQx2WRpHi+bkBFTamYmnH4Y06VApIAbZ8vDC8dt5qXpNxpbaBDtwKkAVyhBXuU5/VmbkixG6NIt+h47EOdNI66sdFgWb2U0saxeJwBOBzwdj8QrZ49tIps5yhrDqg2QYZI9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749726594; c=relaxed/simple;
	bh=jkx2JOBKWfttgt/Uon2Up0ewcOJShHqnL2IaihHJRvs=;
	h=To:Subject:From:Message-Id:Date; b=U6iiW50O992Lbn1Im4BFoCHvHQk0VcOQ9D8Ia+kRXjm3EcLKPStUWAkGcOw7zVKaHxMQQsePHlZWK8YyNtRb8YzslD5v8zH71RkMK/oRjskS+3+v4RkhbqIJkhlwI4v1yzhw3Z21Q0LojcDAudOIrfhyyIFtdtqjuux97rSdi6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgX46XSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgX46XSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED38C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749726593;
	bh=jkx2JOBKWfttgt/Uon2Up0ewcOJShHqnL2IaihHJRvs=;
	h=To:Subject:From:Date:From;
	b=IgX46XSYWSIYVTPjybyTi9dnik0J5Pw8+yGT75Dx+L+slOlAcRtDa0PBJf/r3fYNr
	 O4JCTdD8XxCJv0Huz/CxakJsKKs/j4xHTzjrNGOlygn4ibpDtRVPfSltU2RlXKEltm
	 JqW2OWHupLSmZq0Oo6mZIMcjwFAMwbvKO/AoMoKBnnK3POnxiIrjKPcmatfmzeZlhN
	 xb4h7zg/dMR5HjrysCjBwguZT/qHYs2JG/6KnipnnWuNdl2bXjBzKiL8HXvwfLP0HD
	 YuWqhzn8H3qO1MaC+v+keN1igwP+/ldafEfiLGAT7G+9elRCHNj2hb8CnL4f8+UgSP
	 1n2ybbUiQsVgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FCC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972659357.6066.302300278442762241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8a3bcf28812a32c9f09d1c955a1c0b1405139473d6b28c9242a706a16672e7
Date: Thu, 12 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749726593
