Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6072E371C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751825994; cv=none; b=jvNX2T8+giQzAua+65e4SrynWc3kOMD/8T1CYJ696EUVFr4w0rNp5PnEYuORaYiSYh5/GIspm9gAE7dElz/L1Q6ZE5CEpJaF10nlgHZzuKqy+eOEgLxIFWK4kANfG4eQMwYuf2ZTI/5gDAjf5lpN39bftkLiTtivTeue03dVgQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751825994; c=relaxed/simple;
	bh=uwbJ+AGvXpgGOHIEGmjqlL8f7IN+gasfzuYanKkwAds=;
	h=To:Subject:From:Message-Id:Date; b=SQx8szFiWtD94+uvtjKk8S5ySwLQL1BRBAPcXQMdU4+mmKgt/h1KM065cJ7ZdbPehQN2BQL7zCWubDD7RWQjzj2/SJS6g5RG6jzjkkd6CtZq0iwoEL34PeaV+VHhlSSrD4rlcT/7nNYH7pmV2mC+3z6T+hEmXNPBL/yLf/RPWno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlFOuAGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlFOuAGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5741C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751825993;
	bh=uwbJ+AGvXpgGOHIEGmjqlL8f7IN+gasfzuYanKkwAds=;
	h=To:Subject:From:Date:From;
	b=BlFOuAGkvVFdndp3o87Q8429sxn8FO9yK14/TN8/u45N0rxd0YPx20ikuqAA7JBeX
	 oCF7DZBFTY6BuFO9i3K11L7X5LRckgsnmLuocpMwqVBZminbXIiUoCFzUgZa7zWDSR
	 tgHmG7x3gfIZxFE/McMD2W7b15GPw+GcVE+ByZTYT/R/qfCTeLt0854kIO4cEz4tYA
	 s6n2oN+71va/V1XeVbbxGtG8RgRInbgr/NpM1fXd/YDYHeLgWw8fG6c85wcBakBUvZ
	 O9CJyJPk1G/iHTAgwOfIJaT4TzeLIQ059N+4dvVqXMguQppy2noXGxtlF9R9OtFo4z
	 X2fm2l6b05OWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943BEC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182599357.19237.8319804579017170706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92dd68a11eef2e073b2f04ce93316f077b40907955451bb9f3c57767a255cdde
Date: Sun, 06 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751825993
