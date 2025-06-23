Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1129D26C38A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750690194; cv=none; b=AoW1PEx5jPP9smrqdNX2MR2OMUCsCIpIu0kwDAko+f3iKJpX9Pdf6o5mIMTEnfbC4LXGTnZPpblqlte1gWkxoiH6ihp8xK6tlQeY89rdc7V5zm0ulB+QK75rG2QoMPKviY6/KNYhO3tBccHZjYA08yx1LEQxSFL0Tm3PteocPFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750690194; c=relaxed/simple;
	bh=kRpowbF+25Z5lM8ixrH7QQvxsBKSYjJrOPkDQMBnFCA=;
	h=To:Subject:From:Message-Id:Date; b=RuIU7z0l6XVWyF96J04+dvswx0qsm9zhdwEm8+Fi+85xM1v64d3CsBJyBtoKo1HxHCzVkByryN7Ir7aXfhy9syMQpAm5YNwGefa0dCa87RyHZOepfrPMii500x0XZVkscUPHHm0Ryv5XQOd67winDMPJH9kwiCjMnTzG8DXAZ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdqYRVeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdqYRVeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D683C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750690193;
	bh=kRpowbF+25Z5lM8ixrH7QQvxsBKSYjJrOPkDQMBnFCA=;
	h=To:Subject:From:Date:From;
	b=kdqYRVeT/5zsu0K/zIaoH3JNNLQGHrREp6V1jpk4cme+ApCEyKtUA2jnl9BCvYXiQ
	 qeQvFe2uWTFqjuTlbhR6wb92SdEzN4hrhfv5YhEZeTrnHb4a6xudPoLOrmMneAIBWX
	 XujqoT8SDRTYaC4UrpGqDRHFMsuX/RPk1dHS3jrPbtGUOB7NxTrVujSQ+KaqfyKAUs
	 3r7EVhpVUGP4HJnq5KgsSrTOzFGu8/eumX74lHqzFhnpYsx/VA0fyc0UicIQ3hx2n6
	 ZwdtYoLxXQZxohNc8HANDBiTDRwahOrqJTpexLuWgOKud1RkERTapV/K1iFkVpdYIV
	 R/hIQ0gb6h01Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97EC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069019357.11336.14541518297679085624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf5c7a4674541f4b6fea2c98637017dd9e7c403971f71bd38980535096470bd
Date: Mon, 23 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750690193
