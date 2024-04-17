Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01525171A1
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 21:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713390563; cv=none; b=b928ZpOshAmq4WG8/HI9opOFzkx2ONwj7lKym2yGaGcyz4/s4N4Bx3H3hi09bqmOG/nof+AofG04yURsuqpeYLuNhBf/mus8HogaPPhfejdXTODG6UMbsJrJFABqwfKkaE+fzeUCMvP5iHhHnwQo2Z/yi9O8Xe3szl7i8sIlZrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713390563; c=relaxed/simple;
	bh=RreoKHHLpe/WZYU8Ddf0uZPqbPKnd2WIFYDMkKB1xnA=;
	h=To:Subject:From:Message-Id:Date; b=C0ta/U7dfCz3F56CkUI6t8RKxb5HvvWyavRzHyjYyt71gbZTNCppK8c48jYSp/P9RPICosb4UsYTUZnm4hmdPFlYVV365ZqX0hu0svGBHQWgvHOLb/ezi3HexRpzbemYJ4fjCHEhp0zqvxA9PMt8Zj7N9rSrTV4ROCYltca0jis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNLbkUh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNLbkUh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2814C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 21:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713390562;
	bh=RreoKHHLpe/WZYU8Ddf0uZPqbPKnd2WIFYDMkKB1xnA=;
	h=To:Subject:From:Date:From;
	b=CNLbkUh8T/oFjNx/TOLR8e7gkHmuKc6h4dpzzQivU4rGQ5LqM0dMOZX2wP+nktBcB
	 5F+QJKF04FS5dKWrhRz4GT7xkMVdxpqCqW6VcJFjeRHrhPGDHzbdFq7zOwhJJUTler
	 p/JczWuOnyspO+BIiOrryGNP/Sh4hYDucJijlEvmR7rHpCQCEbUF0N8jzZj0KctVqz
	 k+k+wmblkx5OuIStX1TTGNpgbBAD3n21W1L+BxuPpl3RCxgvntdrentupFPLFfmSWu
	 hlzPF+N+wNLqmAXBMt/kX4S1yzeMsC/cKrD0YHAjLhmwozIQn1NKetdMK2OJWD2vJF
	 KkI5h4kOmm9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD695C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 21:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171339056276.8617.7656768383652898838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e12e797bd8f7cb9ad89e86856a824e5177493b7dc30c83823d5a91254cdf810
Date: Wed, 17 Apr 2024 21:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713390562
