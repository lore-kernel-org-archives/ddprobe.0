Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2194A17624D
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728333954; cv=none; b=f/Og9kVP8grpXz2syKx6nmDKHSY+pPLgUAfVffLTgq9uqW89wWdz0HYpBIGnikaoDfBji1vaYwUmorduTCmFmlYGpzI0pPVtPtVwos5q1EOgynHdmSsgeQsY0ed0dFx4rglKoV8hMPQlzipnqOZNWUcE6F7QawAoWNbkN61dZkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728333954; c=relaxed/simple;
	bh=2E8Tjpzq9REICCDkirIaB/nkD8Ge1Sx/Y/8kP0PsKOY=;
	h=To:Subject:From:Message-Id:Date; b=dvIZfkfrkDRkJjS+UsG2XctZ/Bfi/H97x3wTI/AvagVthyg1A5rRPgJRZbgMvTvMac6x2nXmkU8ckztTb+5lh8STcwLzjXeE1HWHxZfY+9mspwraC7KBqZwMQT15iR+u8AmAn17Q6yYGL38duQxnD8KywkFpw3dnLUqO6QfVvyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saqhCoaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saqhCoaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA67C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728333953;
	bh=2E8Tjpzq9REICCDkirIaB/nkD8Ge1Sx/Y/8kP0PsKOY=;
	h=To:Subject:From:Date:From;
	b=saqhCoaL+xGOlkFEjQHRcy3EJxy4j7DXxg4BlJlwVbTi/DjwOxdov+fk8t2+FZP/U
	 bruiX2wGVTkxbQguP9jw4RAcKjyYAy3oayPFyO36ARH5GxYAsBJOzxC8788/sexKAO
	 oGm3rMYJsfjqCwAAxwjpO9JmznHzqtxkDl4cb3qtgC2Tz9Z1FygLD33NgsCIR3KotG
	 R4lCk0q/Fib1k+Ppa4fngRg++iDeaS1EZeECC/SBLWX0nRFyHx9ZKmckZ5bojfK2xP
	 BMtc5gsTR0glESAtw//Vd513bhfSICvJ3mRdagpHG+i6hizzC6OaoRqOOss+46fxuX
	 feSrIrVNuAErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97377CF886D
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833395361.2201.16539729096504699220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0439e6c182abe1d6569069d9f05ec2a8fd232ce8dcadebe976881fd5ce187c1
Date: Mon, 07 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728333953
