Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F8F7F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713486563; cv=none; b=spLh6Nv17grVH5l+Kjxq0XMgEPt5Dof/XSRGl2piXcAnTl1hxzSil8Mx15t0Rx3Jr45VXsnA3b9Vs9aS9D3kAFsdb8lFkwZ396fCTy9M8QTJ/woVePOs3suss4kkBFFx/Dch+2fQCwOqnWBY8REid6EMp08mWhmFMoUBCa1fqF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713486563; c=relaxed/simple;
	bh=fyoW4YZ6Umz0ZpzJpzZI6yArZ+r9/uEczZE2MNGrT98=;
	h=To:Subject:From:Message-Id:Date; b=dm/PmAtdRvFMPpFFe6V0OFASHj+Km9wW2UcNbrEk2Xe5P6mEw9F7D27iijAbfcsC1MxzBd07V7emIJLa3lvoG/e2/QIh98vs7LS/ZWfYUPTrpVaVdPubC+8m3XODm1PhGw3oRM5srJlCv9yHJfA5vzJf+rsPNC45T3dRd03qQy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OM1vbzZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OM1vbzZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC15C113CE
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713486562;
	bh=fyoW4YZ6Umz0ZpzJpzZI6yArZ+r9/uEczZE2MNGrT98=;
	h=To:Subject:From:Date:From;
	b=OM1vbzZZ9MXD4de3lZskLUkf5F953y3TPM9sYlhVi2Cp+pA/iK1KlV9NpftGdAxOX
	 Ty8xDx/WxF9gBzMIPG4Y9d33nisaTrxawGzToy1Dgy2AWJGYDGFbMCJmUg1G8/5PWY
	 wcsM/CUzwmy9b1T6MSwF4XzmQrdEr9ljHOWfbMuZwrFrSlSgbttdsxZdCXQG2Djtvc
	 cT7RKeZzWafIjW8ortfPy6yNhtbs1luaN+/jKhAqwaiSS5TB6VzpX8FVRZu5UMIqVH
	 EZ/I5MEsoKQLWlhFyNPj3s28JvQY9LJRd/NXPF9UFghyVpDWaYOY959l/q7iGw6//B
	 6LSek/UKU0ETw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C374BC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171348656279.27935.9402300928033180051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e052742e1a5628ddbe61d049384463aec6622dc5fe7ca5bab1cdf45ac9b6f24
Date: Fri, 19 Apr 2024 00:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713486562
