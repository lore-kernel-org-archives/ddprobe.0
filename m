Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6A513C3CD
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745987995; cv=none; b=B39EhEihgufvzwdZrGdftJi32CMc2c1zc/hZUOjMuVTuxsD5hKB5O3ykuvQmcag31qvkl0zkGqzVwmC5TZsZQ4sI8gmUKAfGQkxN1+dQvuoBGkPXgXYYM38kLSOt+8bXv3vloy66PGLxMZX9b6hyPZMKExMJkObwqeb6c3+KBZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745987995; c=relaxed/simple;
	bh=UB0Uumg9BtPTR5ENEVc2JLY0bxFXpyk9S41wyrbLlFE=;
	h=To:Subject:From:Message-Id:Date; b=KbwUvg/IHR0v2j0Y+vq8DsdPQnZ3SjlGqwUHYJyGLUsoZ1RxUkIpFYQVpnfFx13yu7iQsKYaElKvyUVsyGMNYC3Aqd6HZK3Qh/LCJ9FggNK2ax0l/5j609cvwEijkfxs1tfatjkhsZpijVuJlCpT+tZ9j/uHp3DBnhRu3LD4awI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNXv5SYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNXv5SYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BEAC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745987993;
	bh=UB0Uumg9BtPTR5ENEVc2JLY0bxFXpyk9S41wyrbLlFE=;
	h=To:Subject:From:Date:From;
	b=gNXv5SYfp/KaM2EkloXFZaAMGuOTxWvpUwVAEi3zlNf1096zL08QlQR8wLL+FjJ+U
	 rpgEzBkOXk8tW99AjDxIUPVk0p7HuOjO7ySh2yxVUaDdv9Pdj/LvFv02GG+e0zrQUo
	 TGJIZfYxXWTEarfx+B36m/kx6XTW+EiWaUlie+s55lH4wrNGbgyVlaIajiTCyjStbF
	 2sc6LMZNpvc9AT7r0z+3KHC2HzGX9EQhqFqA6PeInfkhyl2590qSgk5bQU0Fv+W4eI
	 P54KFIk80tO6M8+KHyNmGP30ZwbKS/LgUwYM/n2BKs6LKtqBb9lazWu6QaCNLvzhM+
	 Ax5fuLPXppX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F319C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598799357.15848.9755128739882574316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633d8177af74438be0371a6126060cf63a474ad59207ea6893b52afe31816aaf
Date: Wed, 30 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745987993
