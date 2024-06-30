Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A906175A5
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719717263; cv=none; b=GBjYrmsS4/Vy1FCXGlWlA3F8SWxhJu4njgsXAjgR/s78nyXycOKVXVXpFpyLlQh6ARL3PO9a8aR5FB5NzLNSrro00jqVSaB4djrrTKr1bky5F/K8z1CDMU6UIEzLI5tdoZQ9FFNp8VSUr/c7fkKOtUifYcfzmdqB53B0mBP2Vz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719717263; c=relaxed/simple;
	bh=vb7icmD+5id51qtKtoxxdt+3mV3HHDm4Fn+ehru13tc=;
	h=To:Subject:From:Message-Id:Date; b=SyUgzJ9i5OFqSk17bDUUYCRYR8nAfuTMqjYjn8Qc28kx9vdiL4CaBpzoh77wP07G4bYEXdfeivyn5c5dfSvYBDgoptidb9my783g1LRVpaAtp8Vyvt7lGiDmQKkGx7sunnSp4teYHDOx9mknjJHQrIxakyX97/c74CDDMuL+zG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkIQDYC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkIQDYC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16D9C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719717262;
	bh=vb7icmD+5id51qtKtoxxdt+3mV3HHDm4Fn+ehru13tc=;
	h=To:Subject:From:Date:From;
	b=XkIQDYC9UruIUujhpki8EIC867CuuTquz/7l/WnwnGVpWBlwV4jSN5jiIYSFlXEZC
	 wOA83AxIu3Pl0Ndh/00BNBg7n8cyGHRTXZjm9MiJt5b8sghb2wHjals9QDKOp2vkMc
	 elBTe9UklsUL24UARiIB+9B5YzhGNlAEIIrBT15TQNwt8VcvxIbB+2oxwmzQLxhieR
	 W7XNkMPtIy8P6SM95Ol70BAjXMFtRdIfGFoXU2mtPLAJGN8p+5evHmMeMmqcV0ZcGk
	 cSoernM4xUQO5yyxGK2lkLZkxOlccXT+LETXgmJrFqgQQJ3sqfbqKayZJZ4RgatB9D
	 5AqiWqrnUPqoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE402C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971726277.16399.2204745168092846945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2437f7b5d23748a52abc9418b4150da0e96186a33e2a783c17e4bb63febd2f98
Date: Sun, 30 Jun 2024 03:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719717262
