Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6371FECBA
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760963394; cv=none; b=m6PO6006CO6PDibcftZRYQelQWfczwcGt1UlDU5aI4CprkRugdxRva5Jz8nmFcmUrYAD4oZNvbUX2OWdovlK0AAmw8yPvfDLT62oH3s9rg1n21oUWRAZ4TDHF4xvyGw0YVOMoEQi+p9OlnqFFVE15kO9YV13GKWnp9Il7untenw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760963394; c=relaxed/simple;
	bh=jXuWwMDiYcIxe7uBs4/DV1X+0C1He938sNk4Ioqac2U=;
	h=To:Subject:From:Message-Id:Date; b=M1zkPN6opoTmCgvC6hpxLlJ03eleRy+dwuMbOtDHxnP1QZDN4SKgMM9C51YEtEEP2tKpRPllHVgE3mVuSr5D+KvIjd/MnguY9aAVpTB4XckZahi6KLuLx/w7R87bcdT4yb9lja6KVG+WLoLMd5KRko/GznhS6JIPHxVxjaeyn2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po9u5lQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po9u5lQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D6C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760963393;
	bh=jXuWwMDiYcIxe7uBs4/DV1X+0C1He938sNk4Ioqac2U=;
	h=To:Subject:From:Date:From;
	b=Po9u5lQQ5WTs52rBPtIhLRd4StHrDG3IC8Oiw5qStPj8XqGI04eTEIgpRF2RZ1Qw4
	 5UZ8ROyObXDxNY8GMP+B2qEsuLRXDBlh4l90A1lHxZk9qvTGk9SF3BYTSNrnL7mISc
	 u9WP6TEvn1A+04ATFB10QmqYHX2GH0syJBeg1W7FX8M4FUbo0XZXBlzP4nDeeeelWU
	 g2N3WBSkyzJW35TWFxqaDzUo/oNG64uV9bj2/pcedmj6Hf4KHVQ+CdPUr5iP6xaN7k
	 pqZdqQ+/WwajIJdkihC2dBGa2vgytB+wYaBPBhtflTHmPlfSZ+nEcb2NHU6wasARbc
	 2WhfdQrhFChOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90864CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096339358.6216.5502665463180437395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197976d9c9acefb7060daba529d24ea0be58806ba35abc61dda4fee28cbfae47
Date: Mon, 20 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760963393
