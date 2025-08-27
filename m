Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C262FABE9
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756314594; cv=none; b=syuHJaTmhKmz3x+skupfoD/dP6rZzgH8GhHpSzodoBBLxJFgWqn66G3CFof/mo1AOJOam3cDToGPFcQ6GstxoS80M7UZaYYvRyjQchh0QeubfMadcGua2G/9I7U9WhVGqV8GRlP/I9/KHQfBXB3EDcnkeQSUXZNGdEnKfuV0Puc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756314594; c=relaxed/simple;
	bh=bwqvdNxYCFQj5WRdjOx8dwmM58uLqJ9hDQWpz8z5Q/8=;
	h=To:Subject:From:Message-Id:Date; b=jzyVhG6AmZ05qTGzykq4AUkIeFyxwvKv5aMEHWwPBr04LuaYIRDsgQXQrRlKd8nIvsyG0ai6DIh8qxpFQWJZivuRqzo0pFFvmNLNMftx9BteF14apq+MwfctI2S4FqW3AbaQQ/04xzyeq57x9mxrrgzFjySDrlmWI99FgAm3nFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOGvfEf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOGvfEf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E18BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756314593;
	bh=bwqvdNxYCFQj5WRdjOx8dwmM58uLqJ9hDQWpz8z5Q/8=;
	h=To:Subject:From:Date:From;
	b=pOGvfEf1s43QQHvKeXBYCmPYUU/BMtAOI8ziCgkb9o5YHcNhkKDOKouUiGUB1T9Tn
	 CYICjUSZgeHnRPKjFfnJ0+2dy4pO8AeF7oSfjtYNVgoq+bInNMMsG20q08LMCUtvTK
	 VZkW5GzGfR+/rA2j6RTwGtyNhx0hp/zYJPdPy6q5YWfRSFz3ymV8B636tYd3Tp2lnC
	 pwOdmcx4ANYzz3dsjnJkzmpBkCkzrCtr8Qr8hfDki82dDUyXV9fFzSw+r/PcU35lAB
	 zt2m1ADscaLXz63ha1ZEQ+abWw12Frjs4O3oZSwsSCq5d5618NTS9fqfJOXcGhlLLW
	 ZgJhpBlZ9fTeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FCCA0FF9
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631459357.27300.17777331230465974952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83e16ede00dc3ebb487c4621907d403fcbb547787f29983fc0a675e960d8068
Date: Wed, 27 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756314593
