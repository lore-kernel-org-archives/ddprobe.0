Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3505C6A001
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775154934; cv=none; b=Bh0SGPWV3zmLrCMT5srvdX5irhvPuPb7uFKBHtmn7VE3yH3rPhGsdjqDTEgvgTDQR6kmy1KjOcGiTZ80CwP51UE8c9PF5PWDkYxmh594llQKpCbBW6TtcfMrIprLV4hJ2+zvMnu2VJ3kP7luOUbQU9kN72Oi1mQvi3FHvmrNxMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775154934; c=relaxed/simple;
	bh=cq0YVC7gy7LwH39u1nsNCKS4yGuWZW/6JEaej/ZpZlA=;
	h=To:Subject:From:Message-Id:Date; b=Bcq6WgYinwii/1+34F3h2u8HpZYk2Q1/URnw9UNyDDzCXfiEvS5BYJqQbD/qJnsd6uRuKM6zfhwujbMh8AO07M3Nvs+j9cf+jWtSYh2eDk+Z7NgNa/N5ErvHR1yrkqeTObgQEwjAJEnSnZeuoNoCWsL1sT0yqs4nejmAmlq9z30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVYdQ+SH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVYdQ+SH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA96C2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775154933;
	bh=cq0YVC7gy7LwH39u1nsNCKS4yGuWZW/6JEaej/ZpZlA=;
	h=To:Subject:From:Date:From;
	b=cVYdQ+SHj21b4EHkJOrMFd0363fzb2lH48DWpfRitwQ4C5sE3FRETXu7gf1d8PRlH
	 GwAnbWnjyVAKSYn2WQOjVdWoMs7SDXqN/A1m3h7n3u/SnkVcdMi3QpxjeQKw4A1Jze
	 BJgSa3PSwTVRq4We28OoxIjLIZ8o4bYU4/2D4Y6c4m+4OficYGFyy/dL5Umea5d8cg
	 LzJyAO/L4ioep62yITJogboleOXVuJ6riNOCqjO7cIhZ5ZxvaLpInoWpVrQvcZVB+x
	 OueE3iOYrEaW3RAaSmiGOALyxJ+IVNY0kE9y7mt+S83XNAl6MnbP8+lnFN7QeECvbh
	 g0hNx8CyVafZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB365D6AAEC
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515493369.15550.15763648130375553722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8bd03d7afcdc219a8909449854693cc07fe9b37eef73ed957e8daae74925b9
Date: Thu, 02 Apr 2026 18:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775154933
