Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4886C33689D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781905594; cv=none; b=BdtprKWN9u48QbjWbh6RXx2wFz1zN/smmMsHntDeL+qVHh1DRxpvQvDlIVLZzsva44dVYqst4EeOtlvGfASU4OQBn5dPzbCqaUevJ+9wCcQd1Y0o3NH+O5FM/cEzsQfPMp3dO1/2l0D3FqgPXFA30azBazS/pxztRZfR0+Z92zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781905594; c=relaxed/simple;
	bh=gDJNXvbN7zZOC6xImBpYQB1idnB5bUQ3fRI6HnDNXZI=;
	h=To:Subject:From:Message-Id:Date; b=gyDVsZbn0imEUVGPVgweTixN7WlfSCmTMuNDAW5quEYMdXS7VrW4umbFref2Ki9gpqbX6x6BFCb0ENJIhpxX3K8/3exP9KnFD1PjknMISZhHqI7vH6qNGpeLS0L0ivLxqwziKx9qLzbARRk4HtDTgDS7Ex+GUchzV8hq/d97Vq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtfiH9T+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtfiH9T+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6482C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781905593;
	bh=gDJNXvbN7zZOC6xImBpYQB1idnB5bUQ3fRI6HnDNXZI=;
	h=To:Subject:From:Date:From;
	b=VtfiH9T+0eoS7v2E1yq0FaMcpegJAkhZ+u7CsDmNyn0kUvpwDCVBvTKNixrJyb02+
	 TF1RkkB8TrSvPuiR75B7AEXxBNF7SqriCUIl1YhrgA0DsXUfUNKscfiQmnJWJdwxXH
	 8VYfx3cyAoI8WTRh3tV3jRUMGwH8Qly8QDbYRgTJGOuLPhXSLMLaaB1i8C6YEYG74G
	 eWh3dtsmiUp87q6qRg4bdhUg8DrRSA7u22WA9iXi7p98GywvO+bMnVt13XryUlbosA
	 mBH2EFCf0dRWRXw6nnR5cacH5/89I0KNrbm+yvrfuru+Rc5a3ST370yvULiRx5oA+n
	 R3c+WPwxyPFQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC69CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190559369.11046.1667024080608958896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64fded03449d6920f03f133e42cbf8dec48a745d41fcc839eb0ed8ccfd0bc1e
Date: Fri, 19 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781905593
