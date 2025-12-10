Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72E2248867
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765333374; cv=none; b=MnffAWLWCAu3mB5gaP+kYFJSvWs6pF7+NnIlgX5Mqpcc++vTIwm62XUm+VWcxp/JrmF0WM+aJCLZnpbYaOpj2U5ckS0rUiaOlwKwOtdydl7c9cyyHAZX1XcS9GwTGU2DhXxN9pe/nxPlPqbl+8WWsCEaavh8OBWh9qbv+WxrBP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765333374; c=relaxed/simple;
	bh=88i3m8elL03clep5+ER6kBxbq5+X3rt3ElpGfTuNN4E=;
	h=To:Subject:From:Message-Id:Date; b=DNmMpflE4lZn8NSpYUFFbttKHyzHOYtoHBLrQ7CrqGZfG1zIxaF2efx4PUGYNVIqGxO8r3HNl/TNGmcW7QxvW0oUS4krhH34/tPjUzrnZQUtFMRwKPWVoCr67GAgsG8VPcgA5AgVv6VZNGIvvLnYsGo1zze8cgRi1VtCt9watjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1Uyoyr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1Uyoyr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E34C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765333373;
	bh=88i3m8elL03clep5+ER6kBxbq5+X3rt3ElpGfTuNN4E=;
	h=To:Subject:From:Date:From;
	b=S1Uyoyr9Pda6Ec8KwoPAu0yk62Oazs2Vfh2ckkSYptuAp3Dfb3X0UWmfFiXzROcxD
	 5BYsJgWGIc7MGFQNPDzNFXkFlpTqgDsvFHbZ3z8oKkZ0jH1yc3pf0pWaZ7Mtz8sKmW
	 0bR2//7/N9vQKnV4GJv2AfkAL570ME36hjRKNBvCkbDFrzlftGHKJNepwLxveNEcHN
	 yrcwtYFAeWqfoCeXzM323tP9p93YCMGf19g0myMiekBic8bCCWKkVukU9tBMv3Wgpr
	 iAsU9ofsp81YZN6YTLP8Xir7pL6JlPDwwG+A7tJTl/3swyItpUXaCyipBf/1iS960x
	 FfRb1LgWch6eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE206D3C520
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533337368.19771.3177678787072150003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc15785a23c957eec8527e2d6b1d7da53fcb8d9c2b26d031e6a172380538caa6
Date: Wed, 10 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765333373
