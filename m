Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5EB19CC10
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728677754; cv=none; b=OA3nKGbB2IqqXIV0+WnWgEm0DZ8hi3khiUsLBIHOoimUgGT/BcXoLFuxvDntMm6YWV5SAFuaaI6AWJbT0rMbPb9vmSi+xOBTpClFSMUZk35xr8cIF8NMlkl2Vi6QDik2+M9qBt3hd8SFiAUmYuGygchRw5QQ7X3w30ymPLTTGA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728677754; c=relaxed/simple;
	bh=RvEydg8B/PtuXBoxR/9z3FnZkbYkbYKLLRJ2A5rTrD4=;
	h=To:Subject:From:Message-Id:Date; b=r5wk51REqbZRtpJWeG17Iv1PgwJXg58po3EzNm+MMtR5OuFjgWI+3D/z46Ej1AYAhKlwzAz/2KHUtVrsF1xRuKQrFAhwY10cePmmqanH/iMuHL35TrDwizoRkT1zLplyiWM4V+0A5ai417kVHevwzMCR3LLHPH6N2vU0pIxXmTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryXiJFdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryXiJFdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7CC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728677753;
	bh=RvEydg8B/PtuXBoxR/9z3FnZkbYkbYKLLRJ2A5rTrD4=;
	h=To:Subject:From:Date:From;
	b=ryXiJFdnatCCFqdNF9ESs4TsRYwmzOzQ127kgb0hGfjyna4GB35ALE8YDnNd3doa6
	 Bkz7Nm4vrQJ0fWsgF+ckp6DV1M1+YDajIPxIAHhdGqiHZQeLjx4EC9FD7JQjOxIzx8
	 RlXAO4F3N9+g83a17fIJ5r+EuvbbvF2SWMQCx4nUGqGhMlA4zPIph50gM1Su8d2Cpt
	 Ywv2CNhoh8oX3PM2AhRxAcYwTmmJg0MJTB0y55QAzfFU6mpKjP23djqr2pAaIWu1y5
	 8YAqZY+CHLWsfV/6CZVeV5GPDnd0Wz8IquRCwk7rUFUNOEKFzClFYsBGAYvUSCfOOz
	 cacunFAsbv/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92599D0EE31
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172867775359.32703.3599487214419608965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10957d4ce416406caaf340728d9a77a3eef1c1deb1d66cda06ad43d49f2a366
Date: Fri, 11 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728677753
