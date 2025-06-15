Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B2E28135D
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750028394; cv=none; b=KG9B5nshOAIWvtf0auY7y6OTPZzfGzty6OuLmh+744gLaUq53rcVVPXEXQXUwnFnW8KBdPFSCkbHUOF61ZLu5WNyDI8B0QaZjYTGDGZ+pXClrVLA8eWRt2qxb22f5NNAAMHjFs0uE3LnvCZpi+u8XU+GSFNZxNxUGC6xkgcII4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750028394; c=relaxed/simple;
	bh=Kp3UjptPIOOoO0chA7tqPvN5QmugogWQR1qfpkkbKxM=;
	h=To:Subject:From:Message-Id:Date; b=QLwW2sB1R+gDkceLvDdAJGG9G9sSkSYWKf5jNmrGSE/+QiWitrKCMnbOdOY/kkHe3rRcYU8Y2tH3npJftHwLPkrKIfOyQlnyOjUdoAnvWfTOQkN6exxYQTtBamSZL77Xo/Bp6mH2iHme9MuDEeVMJvjvEm51PpIzC/OaoJ2SqVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krtga5eG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krtga5eG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90D0C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750028393;
	bh=Kp3UjptPIOOoO0chA7tqPvN5QmugogWQR1qfpkkbKxM=;
	h=To:Subject:From:Date:From;
	b=krtga5eGKvpYD2pah2kaWyBIlQybKMg4Bi2xgjW9+PpA6os1UuN74Ie1MweQlsgTd
	 Bu6lqwrA282Dk0NkMTMwoffM0oHyyObJI8wpunaThYHv+5f8I71l4QW8Z+8LQatt4J
	 G64yo1ktaBEFsa3tO9JagWAzx14CPgb3pZ23+tUXsiWXEnWiZuMFVl1Zh8b+iksQVh
	 Btah0/0SGa5KfNhnsLRQZWG7ZC/mcUiuPl7QdVtVu3bw/b7l1o7OKDgex07lV6y+Rj
	 riOkTlRKIY9SshebBXBR3sfraw6E78Xb0LMb9RD8MJv9jy01SUwAfclMgFT6EciKQM
	 TcdlUuQyJ8ALQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B79C7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002839357.28656.1260392529942202937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445deb5520f46de862de4c6b42e54f5f2be1febf070d312b26da40d874ff1a21
Date: Sun, 15 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750028393
